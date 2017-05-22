using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CIS_MedicalRecord_MedicalRecordHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlDataAdapter dataAdapter = new SqlDataAdapter(
               "SELECT IDENT_CURRENT('MedicalRecordConsultation')+1 AS id;",cn);

            cn.Open();
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);

            if (dataSet.Tables[0].Rows.Count > 0)
            {
                lblConsultationID.Text = dataSet.Tables[0].Rows[0]["id"].ToString();
                cn.Close();
            }

            else
            {
                lblMessage.Text = "There seems to be an error. Please contact the admin.";
            }

        }

        // For the GridView
        if (!IsPostBack)
        {
            // Declare the query string.
            String queryString =
              "SELECT CONVERT(VARCHAR(11),ScheduleDate,101) AS 'Schedule Date', e1.ScheduleTime AS 'Schedule Time', e2.Fname AS 'First Name', e2.Lname AS 'Last Name', e2.Gender AS 'Gender',  DATEDIFF(hour,e2.DoB,GETDATE())/8766 AS Age " +
              "FROM ScheduledCheckUps e1 INNER JOIN Patient e2 ON e1.PatientAccountNo = e2.AccountNo " +
              "WHERE DoctorAccountNo = " + Session["LoggedInAccntNo"].ToString() + " AND ScheduleDate >= GETDATE();";

            // Run the query and bind the resulting DataSet to the GridView control.
            DataSet ds = GetData(queryString);
            if (ds.Tables.Count > 0)
            {
                gridviewAppointments.DataSource = ds;
                gridviewAppointments.DataBind();
            }
            else
            {
                lblMessage.Text = "No appointments";
            }

        }

    }

    protected void btnMRHClear_Click(object sender, EventArgs e)
    {
        tbPatientAccountNumber.Text = lblMessage.Text = String.Empty;
    }

    protected void btnMRHSubmit_Click(object sender, EventArgs e)
    {
        if (!String.IsNullOrWhiteSpace(tbPatientAccountNumber.Text))
        {
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
            {
                SqlDataAdapter dataAdapter = new SqlDataAdapter(
                   "SELECT *, CONVERT(VARCHAR(11),DoB,101) AS Bdate, DATEDIFF(hour,DoB,GETDATE())/8766 AS Age FROM Patient " +
                   "WHERE AccountNo = @PatientAN"
                   , cn);

                SqlParameter AccountNo = dataAdapter.SelectCommand.Parameters.Add("@PatientAN", SqlDbType.VarChar, 15);
                AccountNo.Value = tbPatientAccountNumber.Text;

                cn.Open();
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet);

                if (dataSet.Tables[0].Rows.Count > 0)
                {
                    Session["CurrentConsultationID"] = lblConsultationID.Text;
                    Session["CurrentConsultationPatientID"] = tbPatientAccountNumber.Text;
                    Session["CurrentConsultationPatientDoB"] = dataSet.Tables[0].Rows[0]["Bdate"].ToString();
                    Session["CurrentConsultationPatientName"] = dataSet.Tables[0].Rows[0]["Lname"].ToString() + ", " + dataSet.Tables[0].Rows[0]["Fname"].ToString() + " " + dataSet.Tables[0].Rows[0]["Mname"].ToString();
                    Session["CurrentConsultationPatientAge"] = dataSet.Tables[0].Rows[0]["Age"].ToString();
                    Session["CurrentConsultationDateTime"] = System.DateTime.Now.ToString();
                    cn.Close();

                    Response.Redirect("/CIS/MedicalRecord/MedicalRecordDoctor.aspx");
                }

                else
                {
                    Session["CurrentConsultationID"] = null;
                    Session["CurrentConsultationPatientID"] = null;
                    Session["CurrentConsultationPatientDoB"] = null;
                    Session["CurrentConsultationPatientName"] = null;
                    Session["CurrentConsultationPatientAge"] = null;
                    Session["CurrentConsultationDateTime"] = null;
                    cn.Close();

                    lblMessage.Text = "There seems to be an error. Please contact the admin.";
                }

            }
        }

        else
        {
            lblMessage.Text = "Please enter Patient's Account Number.";
        }

    }

    DataSet GetData(String queryString)
    {

        // Retrieve the connection string stored in the Web.config file.
        String connectionString = ConfigurationManager.ConnectionStrings["FMCISConnectionString2"].ConnectionString;

        DataSet ds = new DataSet();

        try
        {
            // Connect to the database and run the query.
            SqlConnection connection = new SqlConnection(connectionString);
            SqlDataAdapter adapter = new SqlDataAdapter(queryString, connection);

            // Fill the DataSet.
            adapter.Fill(ds);

        }
        catch (Exception ex)
        {

            // The connection failed. Display an error message.
            //Message.Text = "Unable to connect to the database.";
            lblMessage.Text = "Unable to connect to the database. " + ex;

        }

        return ds;
    }

}