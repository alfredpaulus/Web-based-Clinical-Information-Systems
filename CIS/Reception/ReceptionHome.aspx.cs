using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class CIS_ReceptionHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void btnSearchPatient_Click(object sender, EventArgs e)
    {
        if (!String.IsNullOrWhiteSpace(tbPatientName.Text))
        {
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
            {
                SqlDataAdapter dataAdapter = new SqlDataAdapter(
                   "SELECT AccountNo AS 'Patient ID No.', Fname AS 'First Name', Mname AS 'Middle Name', Lname AS 'Last Name', Gender, DoB = CONVERT(VARCHAR(11),DoB,101), Username FROM Patient " +
                   "WHERE (Fname LIKE '%' + @PatientName + '%') OR (Mname LIKE '%' + @PatientName + '%') OR (Lname LIKE '%' + @PatientName + '%');", cn);

                SqlParameter PatientName = dataAdapter.SelectCommand.Parameters.Add("@PatientName", SqlDbType.VarChar, 15);
                PatientName.Value = tbPatientName.Text;

                cn.Open();
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet);

                if (dataSet.Tables[0].Rows.Count > 0)
                {
                    lblMessage.Text = String.Empty;
                    lblMessage.ForeColor = new System.Drawing.Color();
                    gridviewPatient.DataSource = dataSet;
                    gridviewPatient.DataBind();
                }
                else
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "Patient not found.";
                    Session["CurrentReceptionPatientID"] = null;
                    gridviewPatient.SelectedIndex = -1;
                    gridviewPatient.DataSource = null;
                    gridviewPatient.DataBind();
                }
            }
        }
        else
        {
            lblMessage.Text = "Please enter patient's first or last name.";
        }

       
    }

    protected void gridviewPatient_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["CurrentReceptionPatientID"] = gridviewPatient.SelectedRow.Cells[1].Text;
        lblMessage.Text = "Selected Patient ID: " + Session["CurrentReceptionPatientID"].ToString();
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        tbPatientName.Text = String.Empty;
        lblMessage.Text = String.Empty;
        lblMessage.ForeColor = new System.Drawing.Color();
        Session["CurrentReceptionPatientID"] = null;
        gridviewPatient.SelectedIndex = -1;
        gridviewPatient.DataSource = null;
        gridviewPatient.DataBind();
    }

    protected void btnRHYellowQueueCard_Click(object sender, EventArgs e)
    {

        if (Session["CurrentReceptionPatientID"] != null)
        {
            int QueueNo, ReceptionHomeLastPatientQueueNo = 0;
            string ReceptionHomeLastQueueDate = String.Empty;

            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
            {
                SqlDataAdapter dataAdapter = new SqlDataAdapter(
                   "SELECT TOP 1 CONVERT(VARCHAR(11),QueueDate,101) AS QueueDate, PatientQueueNo " +
                   "FROM PatientQueue WHERE QueueType = 'Y' ORDER BY QueueID DESC;", cn);

                cn.Open();
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet);

                if (dataSet.Tables[0].Rows.Count > 0)
                {
                    ReceptionHomeLastQueueDate = dataSet.Tables[0].Rows[0]["QueueDate"].ToString();
                    ReceptionHomeLastPatientQueueNo = Convert.ToInt32(dataSet.Tables[0].Rows[0]["PatientQueueNo"]);
                    cn.Close();
                }
                else
                {
                    ReceptionHomeLastQueueDate = DateTime.Now.ToString();
                    ReceptionHomeLastPatientQueueNo = 1;
                    cn.Close();
                }
            }

            if (Convert.ToDateTime(ReceptionHomeLastQueueDate) == System.DateTime.Now.Date)
            {
                QueueNo = ReceptionHomeLastPatientQueueNo + 1; //increment queue no.
            }
            else
            {
                QueueNo = 1;
            }

            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
            {
                SqlCommand insert = new SqlCommand(
                   "INSERT INTO PatientQueue (PatientQueueNo, QueueType, QueueDate, Registered, PatientID) " +
                   "VALUES (@PatientQueueNo, @QueueType, @QueueDate, @Registered, @PatientID);",
                   cn);
                insert.Parameters.AddWithValue("@PatientQueueNo", QueueNo);
                insert.Parameters.AddWithValue("@QueueType", "Y");
                insert.Parameters.AddWithValue("@QueueDate", System.DateTime.Now);
                insert.Parameters.AddWithValue("@Registered", "N");
                insert.Parameters.AddWithValue("@PatientID", Convert.ToInt32(Session["CurrentReceptionPatientID"]));

                try
                {
                    cn.Open();
                    insert.ExecuteNonQuery();
                    lblMessage.ForeColor = System.Drawing.Color.Orange;
                    lblMessage.Text = "Succesfully Added! Queue No.: Yellow " + QueueNo;
                    Response.AddHeader("REFRESH", "7;URL=ReceptionHome.aspx");
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                    cn.Close();
                }
            }
        }
        else
        {
            lblMessage.Text = "Please Select a Patient";
        }
    }

    protected void btnRHRedQueueCard_Click(object sender, EventArgs e)
    {
        if (Session["CurrentReceptionPatientID"] != null)
        {
            int QueueNo, ReceptionHomeLastPatientQueueNo = 0;
            string ReceptionHomeLastQueueDate = String.Empty;

            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
            {
                SqlDataAdapter dataAdapter = new SqlDataAdapter(
                   "SELECT TOP 1 CONVERT(VARCHAR(11),QueueDate,101) AS QueueDate, PatientQueueNo " +
                   "FROM PatientQueue WHERE QueueType = 'R' ORDER BY QueueID DESC;", cn);

                cn.Open();
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet);

                if (dataSet.Tables[0].Rows.Count > 0)
                {
                    ReceptionHomeLastQueueDate = dataSet.Tables[0].Rows[0]["QueueDate"].ToString();
                    ReceptionHomeLastPatientQueueNo = Convert.ToInt32(dataSet.Tables[0].Rows[0]["PatientQueueNo"]);
                    cn.Close();
                }
                else
                {
                    ReceptionHomeLastQueueDate = DateTime.Now.ToString();
                    ReceptionHomeLastPatientQueueNo = 1;
                    cn.Close();
                }
            }

            if (Convert.ToDateTime(ReceptionHomeLastQueueDate) == System.DateTime.Now.Date)
            {
                QueueNo = ReceptionHomeLastPatientQueueNo + 1; //increment queue no.
            }
            else
            {
                QueueNo = 1;
            }

            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
            {
                SqlCommand insert = new SqlCommand(
                   "INSERT INTO PatientQueue (PatientQueueNo, QueueType, QueueDate, Registered, PatientID) " +
                   "VALUES (@PatientQueueNo, @QueueType, @QueueDate, @Registered, @PatientID);",
                   cn);
                insert.Parameters.AddWithValue("@PatientQueueNo", QueueNo);
                insert.Parameters.AddWithValue("@QueueType", "R");
                insert.Parameters.AddWithValue("@QueueDate", System.DateTime.Now);
                insert.Parameters.AddWithValue("@Registered", "N");
                insert.Parameters.AddWithValue("@PatientID", Convert.ToInt32(Session["CurrentReceptionPatientID"]));
                try
                {
                    cn.Open();
                    insert.ExecuteNonQuery();
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "Succesfully Added! Queue No.: Red " + QueueNo;
                    Response.AddHeader("REFRESH", "7;URL=ReceptionHome.aspx");
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                    cn.Close();
                }
            }
        }
        else
        {
            lblMessage.Text = "Please Select a Patient";
        }
    }

    protected void btnRHNewPatient_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/CIS/Reception/ReceptionNewPatient.aspx");
    }

    protected void btnRHCheckPatientRecord_Click(object sender, EventArgs e)
    {
        //been thinking of deleting this function.
    }
}