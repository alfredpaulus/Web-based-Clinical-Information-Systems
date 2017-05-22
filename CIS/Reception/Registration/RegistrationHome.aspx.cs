using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using System.Globalization;


public partial class CIS_Registration_RegistrationHome : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        //On Page_Load, check if refreshed from PostBack, if not...
        if (!IsPostBack)
        {

            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
            {
                //Check if there is [QueueType=R && Registered=N] (R is prioritized)
                SqlDataAdapter dataAdapter = new SqlDataAdapter(
                   "SELECT TOP 1 e1.*, e2.Fname, e2.Lname FROM PatientQueue e1 INNER JOIN Patient e2 ON e1.PatientID = e2.AccountNo " +
                   "WHERE (QueueType = 'R' AND Registered = 'N') ORDER BY QueueID;", cn); //QueueType=(R)ed, Registered=(N)o

                cn.Open();
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet);

                //If there is...
                if (dataSet.Tables[0].Rows.Count > 0)
                {
                    //See btnRHCancel_Click()
                    Session["CurrentQueueID"] = Convert.ToInt32(dataSet.Tables[0].Rows[0]["QueueID"]); 

                    //Retrieve the QueueID and Update the Registered to (O)n-going 
                    //(so the other computers won't be able to pick up the same Queue)
                    SqlCommand update = new SqlCommand(
                   "UPDATE PatientQueue SET Registered = 'O' " +
                   "WHERE QueueID = @QueueID;", cn);
                    update.Parameters.AddWithValue("@QueueID", Convert.ToInt32(dataSet.Tables[0].Rows[0]["QueueID"]));

                    //Retrieve the QueueNo and pass it to the lblServingNo to display
                    try
                    {
                        update.ExecuteNonQuery();
                        lblServingNo.ForeColor = System.Drawing.ColorTranslator.FromHtml("#CC3300");
                        lblServingNo.Text = dataSet.Tables[0].Rows[0]["PatientQueueNo"].ToString();
                        tbRHPatientID.Text = dataSet.Tables[0].Rows[0]["PatientID"].ToString();
                        tbRHPatientName.Text = dataSet.Tables[0].Rows[0]["Lname"].ToString() + ", " + dataSet.Tables[0].Rows[0]["Fname"].ToString();

                        cn.Close();
                    }
                    catch (Exception ex)
                    {
                        lblMessage.Text = "Error: " + ex.Message;
                        cn.Close();
                    }
                }

                //If there's none, then...
                else
                {
                    //2.Check if there is [QueueType=Y && Registered=N]
                    SqlDataAdapter dataAdapter2 = new SqlDataAdapter(
                       "SELECT TOP 1 e1.*, e2.Fname, e2.Lname FROM PatientQueue e1 INNER JOIN Patient e2 ON e1.PatientID = e2.AccountNo " +
                       "WHERE (QueueType = 'Y' AND Registered = 'N') ORDER BY QueueID;", cn); //QueueType=(Y)ed, Registered=(N)o

                    DataSet dataSet2 = new DataSet();
                    dataAdapter2.Fill(dataSet2);

                    //2.If there is...
                    if (dataSet2.Tables[0].Rows.Count > 0)
                    {
                        //See btnRHCancel_Click()
                        Session["CurrentQueueID"] = Convert.ToInt32(dataSet2.Tables[0].Rows[0]["QueueID"]); 

                        //2.Retrieve the QueueID and Update the Registered to (O)n-going 
                        //2.(so the other computers won't be able to pick up the same Queue)
                        SqlCommand update = new SqlCommand(
                       "UPDATE PatientQueue SET Registered = 'O' " +
                       "WHERE QueueID = @QueueID;", cn);
                        update.Parameters.AddWithValue("@QueueID", Convert.ToInt32(dataSet2.Tables[0].Rows[0]["QueueID"]));

                        //2.Retrieve the QueueNo and pass it to the lblServingNo to display
                        try
                        {
                            update.ExecuteNonQuery();
                            lblServingNo.ForeColor = System.Drawing.ColorTranslator.FromHtml("#FFCC00");
                            lblServingNo.Text = dataSet2.Tables[0].Rows[0]["PatientQueueNo"].ToString();
                            tbRHPatientID.Text = dataSet2.Tables[0].Rows[0]["PatientID"].ToString();
                            tbRHPatientName.Text = dataSet2.Tables[0].Rows[0]["Lname"].ToString() + ", " + dataSet2.Tables[0].Rows[0]["Fname"].ToString();

                            cn.Close();
                        }
                        catch (Exception ex)
                        {
                            lblMessage.Text = "Error: " + ex.Message;
                            cn.Close();
                        }
                    }

                    //2.If there's still none, then...
                    else
                    {
                        lblServingNo.Text = "00";
                        lblMessage.Text = "No pending patients. Click the 'Next' button when ready.";
                        cn.Close();
                    }
                }
            }

        }
        
    }

    //DataBound is triggered when all tbl.Departments data binded to ddlDepartment
    //protected void ddlDepartment_DataBound(object sender, EventArgs e)
    //{
    //    ShowAvailableAndNotAvailableDoctors();
    //}

    //protected void ddlDepartment_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    ShowAvailableAndNotAvailableDoctors();
    //}

    protected void ddlDoctor_DataBound(object sender, EventArgs e)
    {
        ShowDoctorClinicTime();
    }

    protected void ddlDoctor_SelectedIndexChanged(object sender, EventArgs e)
    {
        ShowDoctorClinicTime();
    }

    protected void btnRHNext_Click(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            //Retrieve the QueueID and Update the Registered to (C)ancelled
            SqlCommand update = new SqlCommand(
           "UPDATE PatientQueue SET Registered = 'C' " +
           "WHERE QueueID = @QueueID;", cn);
            update.Parameters.AddWithValue("@QueueID", Convert.ToInt32(Session["CurrentQueueID"]));

            //Execute
            try
            {
                cn.Open();
                update.ExecuteNonQuery();
                cn.Close();
                Response.Redirect("~/CIS/Reception/Registration/RegistrationHome.aspx");
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                cn.Close();
            }
        }
        
    }

    protected void btnRHSubmit_Click(object sender, EventArgs e)
    {

        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            //Insert to tbl.Registration
            SqlCommand insert = new SqlCommand(
               "INSERT INTO Registration (Notes, Department, NurseAccountNo, DoctorAccountNo, QueueID) " +
               "VALUES (@Notes, @Department, @NurseAccountNo, @DoctorAccountNo, @QueueID);",
               cn);
            insert.Parameters.AddWithValue("@Notes", tbRHNotes.Text);
            insert.Parameters.AddWithValue("@Department", ddlDepartment.SelectedValue);
            insert.Parameters.AddWithValue("@NurseAccountNo", ddlNurse.SelectedValue);
            insert.Parameters.AddWithValue("@DoctorAccountNo", ddlDoctor.SelectedValue);
            insert.Parameters.AddWithValue("@QueueID", Convert.ToInt32(Session["CurrentQueueID"]));

            //Update the Registered to (Y)es
            SqlCommand update = new SqlCommand(
           "UPDATE PatientQueue SET Registered = 'Y' " +
           "WHERE QueueID = @QueueID;", cn);
            update.Parameters.AddWithValue("@QueueID", Convert.ToInt32(Session["CurrentQueueID"]));

            //Execute
            try
            {
                cn.Open();
                insert.ExecuteNonQuery();
                update.ExecuteNonQuery();
                lblMessage.Text = "Succesfully Added! Click the 'Next' button to call the next patient.";
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                cn.Close();
            }
        }
    }

    protected void ShowDoctorClinicTime()
    {
        //Take Day of the week, convert to string, store to DayNow
        string DayNow = DateTime.Now.DayOfWeek.ToString();

        //Take Doctor's AccountNo from ddlDoctor
        int AccountNo = 0;
        AccountNo = Convert.ToInt32(ddlDoctor.SelectedValue);

        string DocName = String.Empty;
        DocName = ddlDoctor.SelectedItem.ToString();

        //Initialize TimeStart and TimeEnd storage
        string TimeStartString, TimeEndString =  String.Empty;


        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            //Check if there is a Doctor with a clinic today
            SqlDataAdapter dataAdapter = new SqlDataAdapter(
               "SELECT * FROM DoctorsSchedule WHERE " + DayNow + " = 1 AND DoctorAccountNo = @DocAcctNo;", cn);

            SqlParameter DocAcctNo = dataAdapter.SelectCommand.Parameters.Add("@DocAcctNo", SqlDbType.Int);
            DocAcctNo.Value = AccountNo;

            cn.Open();
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);

            //If there is...
            if (dataSet.Tables[0].Rows.Count > 0)
            {
                if (DayNow == "Sunday")
                {
                    TimeStartString = dataSet.Tables[0].Rows[0]["WednesdayStart"].ToString();
                    TimeEndString = dataSet.Tables[0].Rows[0]["WednesdayEnd"].ToString();

                    lblDocClinicTime.Text = "Clinic start:" + DateTime.ParseExact(TimeStartString, "HH:mm:ss", CultureInfo.CurrentCulture).ToString("hh:mm tt") + " | Clinic end:" + DateTime.ParseExact(TimeEndString, "HH:mm:ss", CultureInfo.CurrentCulture).ToString("hh:mm tt");
                }
                else if (DayNow == "Monday")
                {
                    TimeStartString = dataSet.Tables[0].Rows[0]["WednesdayStart"].ToString();
                    TimeEndString = dataSet.Tables[0].Rows[0]["WednesdayEnd"].ToString();

                    lblDocClinicTime.Text = "Clinic start:" + DateTime.ParseExact(TimeStartString, "HH:mm:ss", CultureInfo.CurrentCulture).ToString("hh:mm tt") + " | Clinic end:" + DateTime.ParseExact(TimeEndString, "HH:mm:ss", CultureInfo.CurrentCulture).ToString("hh:mm tt");
                }
                else if (DayNow == "Tuesday")
                {
                    TimeStartString = dataSet.Tables[0].Rows[0]["WednesdayStart"].ToString();
                    TimeEndString = dataSet.Tables[0].Rows[0]["WednesdayEnd"].ToString();

                    lblDocClinicTime.Text = "Clinic start:" + DateTime.ParseExact(TimeStartString, "HH:mm:ss", CultureInfo.CurrentCulture).ToString("hh:mm tt") + " | Clinic end:" + DateTime.ParseExact(TimeEndString, "HH:mm:ss", CultureInfo.CurrentCulture).ToString("hh:mm tt");
                }
                else if (DayNow == "Wednesday")
                {
                    TimeStartString = dataSet.Tables[0].Rows[0]["WednesdayStart"].ToString();
                    TimeEndString = dataSet.Tables[0].Rows[0]["WednesdayEnd"].ToString();

                    lblDocClinicTime.Text = "Clinic start:" + DateTime.ParseExact(TimeStartString, "HH:mm:ss", CultureInfo.CurrentCulture).ToString("hh:mm tt") + " | Clinic end:" + DateTime.ParseExact(TimeEndString, "HH:mm:ss", CultureInfo.CurrentCulture).ToString("hh:mm tt");
                }
                else if (DayNow == "Thursday")
                {
                    TimeStartString = dataSet.Tables[0].Rows[0]["WednesdayStart"].ToString();
                    TimeEndString = dataSet.Tables[0].Rows[0]["WednesdayEnd"].ToString();

                    lblDocClinicTime.Text = "Clinic start:" + DateTime.ParseExact(TimeStartString, "HH:mm:ss", CultureInfo.CurrentCulture).ToString("hh:mm tt") + " | Clinic end:" + DateTime.ParseExact(TimeEndString, "HH:mm:ss", CultureInfo.CurrentCulture).ToString("hh:mm tt");
                }
                else if (DayNow == "Friday")
                {
                    TimeStartString = dataSet.Tables[0].Rows[0]["WednesdayStart"].ToString();
                    TimeEndString = dataSet.Tables[0].Rows[0]["WednesdayEnd"].ToString();

                    lblDocClinicTime.Text = "Clinic start:" + DateTime.ParseExact(TimeStartString, "HH:mm:ss", CultureInfo.CurrentCulture).ToString("hh:mm tt") + " | Clinic end:" + DateTime.ParseExact(TimeEndString, "HH:mm:ss", CultureInfo.CurrentCulture).ToString("hh:mm tt");
                }
                else if (DayNow == "Saturday")
                {
                    TimeStartString = dataSet.Tables[0].Rows[0]["WednesdayStart"].ToString();
                    TimeEndString = dataSet.Tables[0].Rows[0]["WednesdayEnd"].ToString();

                    lblDocClinicTime.Text = "Clinic start:" + DateTime.ParseExact(TimeStartString, "HH:mm:ss", CultureInfo.CurrentCulture).ToString("hh:mm tt") + " | Clinic end:" + DateTime.ParseExact(TimeEndString, "HH:mm:ss", CultureInfo.CurrentCulture).ToString("hh:mm tt");
                }
                else
                {
                    lblMessage.Text = "System Date error";
                }
            }
            else
            {
                lblDocClinicTime.Text = DocName + " has no clinic today";
            }
        }
    }

    //protected void ShowAvailableAndNotAvailableDoctors()
    //{
    //    //Take Day of the week, convert to string, store to DayNow
    //    string DayNow = DateTime.Now.DayOfWeek.ToString();
    //    //
    //    int DeptValue = 0;
    //    DeptValue = Convert.ToInt32(ddlDepartment.SelectedValue);

    //    //Create DataTable for names of available doctors to binded later to gridviewAvailableDoctors
    //    DataTable dtAvailableDoctors = new DataTable();
    //    //Add column..
    //    dtAvailableDoctors.Columns.Add("M.D. Name", typeof(string));
    //    //Declare NewRow MDAvailableRow
    //    DataRow MDAvailableRow = dtAvailableDoctors.NewRow();

    //    //Create DataTable for names of NOT available doctors to binded later to gridviewNotAvailableDoctors, Add column, and Declare NewRow MDNotAvailableRow
    //    DataTable dtNotAvailableDoctors = new DataTable();
    //    dtNotAvailableDoctors.Columns.Add("M.D.Name", typeof(string));
    //    DataRow MDNotAvailableRow = dtNotAvailableDoctors.NewRow();

    //    using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
    //    {
    //        //Check if there is a Doctor with a clinic today
    //        SqlDataAdapter dataAdapter = new SqlDataAdapter(
    //           "SELECT e1.*, e2.MDName, e2.Department FROM DoctorsSchedule e1 INNER JOIN Doctor e2 " +
    //           "ON e1.DoctorAccountNo = e2.AccountNo WHERE Department = @DepartmentID AND " + DayNow + " = 1;", cn);

    //        SqlParameter DepartmentID = dataAdapter.SelectCommand.Parameters.Add("@DepartmentID", SqlDbType.Int);
    //        DepartmentID.Value = DeptValue;


    //        cn.Open();
    //        DataSet dataSet = new DataSet();
    //        dataAdapter.Fill(dataSet);

    //        //If there is...
    //        if (dataSet.Tables[0].Rows.Count > 0)
    //        {

    //            //count = no. of doctors available today
    //            int count = dataSet.Tables[0].Rows.Count;

    //            for (int x = 0; x <= count-1; x++)
    //            {
    //                MDAvailableRow = dtAvailableDoctors.NewRow();
    //                MDNotAvailableRow = dtNotAvailableDoctors.NewRow();

    //                if (DayNow == "Sunday")
    //                {
    //                    if (Convert.ToDateTime(dataSet.Tables[0].Rows[x]["SundayStart"].ToString()).TimeOfDay >= DateTime.Now.TimeOfDay && Convert.ToDateTime(dataSet.Tables[0].Rows[x]["SundayEnd"].ToString()).TimeOfDay <= DateTime.Now.TimeOfDay)
    //                    {
    //                        MDAvailableRow["M.D.Name"] = dataSet.Tables[0].Rows[x]["MDName"].ToString();
    //                    }
    //                    else
    //                    {
    //                        MDNotAvailableRow["M.D.Name"] = dataSet.Tables[0].Rows[x]["MDName"].ToString();
    //                    }
    //                }
    //                else if (DayNow == "Monday")
    //                {
    //                    if (Convert.ToDateTime(dataSet.Tables[0].Rows[x]["MondayStart"].ToString()).TimeOfDay >= DateTime.Now.TimeOfDay && Convert.ToDateTime(dataSet.Tables[0].Rows[x]["MondayEnd"].ToString()).TimeOfDay <= DateTime.Now.TimeOfDay)
    //                    {
    //                        MDAvailableRow["M.D.Name"] = dataSet.Tables[0].Rows[x]["MDName"].ToString();
    //                    }
    //                    else
    //                    {
    //                        MDNotAvailableRow["M.D.Name"] = dataSet.Tables[0].Rows[x]["MDName"].ToString();
    //                    }
    //                }
    //                else if (DayNow == "Tuesday")
    //                {
    //                    if (Convert.ToDateTime(dataSet.Tables[0].Rows[x]["TuesdayStart"].ToString()).TimeOfDay >= DateTime.Now.TimeOfDay && Convert.ToDateTime(dataSet.Tables[0].Rows[x]["TuesdayEnd"].ToString()).TimeOfDay <= DateTime.Now.TimeOfDay)
    //                    {
    //                        MDAvailableRow["M.D.Name"] = dataSet.Tables[0].Rows[x]["MDName"].ToString();
    //                    }
    //                    else
    //                    {
    //                        MDNotAvailableRow["M.D.Name"] = dataSet.Tables[0].Rows[x]["MDName"].ToString();
    //                    }
    //                }
    //                else if (DayNow == "Wednesday")
    //                {
    //                    if (Convert.ToDateTime(dataSet.Tables[0].Rows[x]["WednesdayStart"].ToString()).TimeOfDay >= DateTime.Now.TimeOfDay && Convert.ToDateTime(dataSet.Tables[0].Rows[x]["WednesdayEnd"].ToString()).TimeOfDay <= DateTime.Now.TimeOfDay)
    //                    {
    //                        MDAvailableRow["M.D.Name"] = dataSet.Tables[0].Rows[x]["MDName"].ToString();
    //                    }
    //                    else
    //                    {
    //                        MDNotAvailableRow["M.D.Name"] = dataSet.Tables[0].Rows[x]["MDName"].ToString();
    //                    }
    //                }
    //                else if (DayNow == "Thursday")
    //                {
    //                    if (Convert.ToDateTime(dataSet.Tables[0].Rows[x]["ThursdayStart"].ToString()).TimeOfDay >= DateTime.Now.TimeOfDay && Convert.ToDateTime(dataSet.Tables[0].Rows[x]["ThursdayEnd"].ToString()).TimeOfDay <= DateTime.Now.TimeOfDay)
    //                    {
    //                        MDAvailableRow["M.D.Name"] = dataSet.Tables[0].Rows[x]["MDName"].ToString();
    //                    }
    //                    else
    //                    {
    //                        MDNotAvailableRow["M.D.Name"] = dataSet.Tables[0].Rows[x]["MDName"].ToString();
    //                    }
    //                }
    //                else if (DayNow == "Friday")
    //                {
    //                    if (Convert.ToDateTime(dataSet.Tables[0].Rows[x]["FridayStart"].ToString()).TimeOfDay >= DateTime.Now.TimeOfDay && Convert.ToDateTime(dataSet.Tables[0].Rows[x]["FridayEnd"].ToString()).TimeOfDay <= DateTime.Now.TimeOfDay)
    //                    {
    //                        MDAvailableRow["M.D.Name"] = dataSet.Tables[0].Rows[x]["MDName"].ToString();
    //                    }
    //                    else
    //                    {
    //                        MDNotAvailableRow["M.D.Name"] = dataSet.Tables[0].Rows[x]["MDName"].ToString();
    //                    }
    //                }
    //                else if (DayNow == "Saturday")
    //                {
    //                    if (Convert.ToDateTime(dataSet.Tables[0].Rows[x]["SaturdayStart"].ToString()).TimeOfDay >= DateTime.Now.TimeOfDay && Convert.ToDateTime(dataSet.Tables[0].Rows[x]["SaturdayEnd"].ToString()).TimeOfDay <= DateTime.Now.TimeOfDay)
    //                    {
    //                        MDAvailableRow["M.D.Name"] = dataSet.Tables[0].Rows[x]["MDName"].ToString();
    //                    }
    //                    else
    //                    {
    //                        MDNotAvailableRow["M.D.Name"] = dataSet.Tables[0].Rows[x]["MDName"].ToString();
    //                    }
    //                }
    //                else
    //                {
    //                    lblMessage.Text = "System Date error";
    //                }

    //                //Add row to datatable
    //                dtAvailableDoctors.Rows.Add(MDAvailableRow);
    //                dtNotAvailableDoctors.Rows.Add(MDNotAvailableRow);
    //            }
    //        }

    //        else
    //        {
    //            gridviewAvailableDoctors.EmptyDataText = gridviewNotAvailableDoctors.EmptyDataText = "No available doctors for " + ddlDepartment.SelectedItem.Text + " today."; 
    //        }

    //        gridviewAvailableDoctors.DataSource = dtAvailableDoctors;
    //        gridviewAvailableDoctors.DataBind();
    //        gridviewNotAvailableDoctors.DataSource = dtNotAvailableDoctors;
    //        gridviewNotAvailableDoctors.DataBind();
    //    }
    //}


}