using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CIS_Patient_PatientAppointmentScheduling : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Manually created event handlers because the Design view in my VS doesn't work
        btnCreateAppointment.Click += new EventHandler(this.btnCreateAppointment_Click);
        btnSubmit.Click += new EventHandler(this.btnSubmit_Click);
        btnClear.Click += new EventHandler(this.btnClear_Click);

        // For le GridView
        if (!IsPostBack)
        {
            // Declare the query string.
            String queryString =
              "SELECT CONVERT(VARCHAR(11),ScheduleDate,101) AS 'Schedule Date', e1.ScheduleTime AS 'Schedule Time', e2.Department, e2.MDname AS 'Doctor'" +
              "FROM ScheduledCheckUps e1 INNER JOIN Doctor e2 ON e1.DoctorAccountNo = e2.AccountNo " +
              "WHERE PatientAccountNo = " + Session["AccountNo"].ToString() + ";";

            // Run the query and bind the resulting DataSet to the GridView control.
            DataSet ds = GetData(queryString);
            if (ds.Tables.Count > 0)
            {
                gridviewAppointments.DataSource = ds;
                gridviewAppointments.DataBind();
            }
            else
            {
                lblMessage.Text = "";
            }

        }
    }
    

    private void btnClear_Click(object sender, EventArgs e)
    {
        tbAppointmentDate.Text = tbAppointmentRemarks.Text = tbAppointmentSymptoms.Text = tbAppointmentTime.Text = String.Empty;
    }

    private void btnSubmit_Click(object sender, EventArgs e)
    {
if(tbAppointmentDate.Text != "" && tbAppointmentTime.Text != "" && 
tbAppointmentSymptoms.Text != "" && tbAppointmentRemarks.Text != "" &&
tbActiveContactNo.Text != "" )
{
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlCommand insert = new SqlCommand(
               "INSERT INTO PatientAppointmentRequest (RequestDate,RequestTime,Symptoms,Remarks,ContactNo,PatientAccountNo)" +
               "VALUES (@RequestDate, @RequestTime, @Symptoms, @Remarks, @ContactNo, @PatientAccountNo );",
               cn);

            insert.Parameters.AddWithValue("@RequestDate", Convert.ToDateTime(tbAppointmentDate.Text));
            insert.Parameters.AddWithValue("@RequestTime", Convert.ToDateTime(tbAppointmentTime.Text));
            insert.Parameters.AddWithValue("@Symptoms", tbAppointmentSymptoms.Text);
            insert.Parameters.AddWithValue("@Remarks", tbAppointmentRemarks.Text);
            insert.Parameters.AddWithValue("@ContactNo", tbActiveContactNo.Text);
            insert.Parameters.AddWithValue("@PatientAccountNo", Convert.ToInt32(Session["AccountNo"]));

            try
            {
                cn.Open();
                insert.ExecuteNonQuery();
                lblMessage.Text = "Succesfully Added!";
                tbAppointmentDate.Text = tbAppointmentRemarks.Text = tbAppointmentSymptoms.Text = tbAppointmentTime.Text = String.Empty;
                Response.AddHeader("REFRESH", "3;URL=PatientAppointmentScheduling.aspx");
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
Page.ClientScript.RegisterStartupScript(this.GetType(),"Notice","alert('Some required field/s missing!');",true);
if(tbAppointmentDate.Text == "")
{
tbAppointmentDate.BackColor = Color.Pink;
}
if(tbAppointmentTime.Text == "")
{
tbAppointmentTime.BackColor = Color.Pink;
}
if(tbAppointmentSymptoms.Text == "")
{
tbAppointmentSymptoms.BackColor = Color.Pink;
}
if(tbAppointmentRemarks.Text == "")
{
tbAppointmentRemarks.BackColor = Color.Pink;
}
if(tbActiveContactNo.Text == "")
{
tbActiveContactNo.BackColor = Color.Pink;
}


}
    }

    void btnCreateAppointment_Click(Object sender, EventArgs e)
    {
        if (Panel1.Visible == false)
        {
            Panel1.Visible = true;
            btnCreateAppointment.Text = "Hide";
        }
        else
        {
            Panel1.Visible = false;
            btnCreateAppointment.Text = "Create an appointment";
        }
    }

    
    DataSet GetData(String queryString)
    {

        // Retrieve the connection string stored in the Web.config file.
        String connectionString = ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ConnectionString;

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
            lblMessage.Text = "Unable to connect to the database. "+ ex;

        }

        return ds;
    }

}
