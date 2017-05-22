using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Include using directives to use SQL related commands
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CIS_Reception_ReceptionManageAppointments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Manually created event handlers because the Design view in my VS doesn't work
        btnShowAppointmentScheduleRequests.Click += new EventHandler(this.ShowAppointmentScheduleRequests_Click);
        btnShowApprovedAppointments.Click += new EventHandler(this.ShowApprovedAppointments_Click);
        btnSubmit.Click += new EventHandler(this.btnSubmit_Click);
        btnClear.Click += new EventHandler(this.btnClear_Click);
        btnRefresh.Click += new EventHandler(this.btnRefresh_Click);

        // For le gridviewAppointmentScheduleRequests
        if (!IsPostBack)
        {
            // Declare the query string.
            String queryString =
              "SELECT [e1.RequestDate] = CONVERT(VARCHAR(11),GETDATE(),106), e1.RequestTime, e1.Symptoms, e1.Remarks, e1.ContactNo, e1.PatientAccountNo, e2.Fname, e2.Lname, e2.Gender " +
              "FROM PatientAppointmentRequest e1 INNER JOIN Patient e2 ON e1.PatientAccountNo = e2.AccountNo" + ";";

            // Run the query and bind the resulting DataSet to the GridView control.
            DataSet ds = GetData(queryString);
            if (ds.Tables.Count > 0)
            {
                gridviewAppointmentScheduleRequests.DataSource = ds;
                gridviewAppointmentScheduleRequests.DataBind();
            }
            else
            {
                lblMessage.Text = "Unable to connect to the database.";
            }

        }

        // For le gridviewApprovedAppointments
        if (!IsPostBack)
        {
            // Declare the query string.
            String queryString =
              "SELECT [e1.ScheduleDate] = CONVERT(VARCHAR(11),ScheduleDate,101), e1.ScheduleTime, e2.Department, e2.MDname, e3.Fname, e3.Lname, e3.Gender " +
              "FROM ScheduledCheckUps e1 INNER JOIN Doctor e2 ON e1.DoctorAccountNo = e2.AccountNo " +
              "INNER JOIN Patient e3 ON e1.PatientAccountNo = e3.AccountNo" + ";";

            // Run the query and bind the resulting DataSet to the GridView control.
            DataSet ds = GetData(queryString);
            if (ds.Tables.Count > 0)
            {
                gridviewApprovedAppointments.DataSource = ds;
                gridviewApprovedAppointments.DataBind();
            }
            else
            {
                lblMessage.Text = "Unable to connect to the database.";
                Response.Write("<script>alert('Unable to connect to the database.')</script>");
            }

        }

    }


    private void btnClear_Click(object sender, EventArgs e)
    {
        tbPatientAccountNo.Text = tbAppointmentDate.Text = tbAppointmentTime.Text =  tbAppointmentDoctor.Text = String.Empty;
        //ddlDepartment.ClearSelection()
    }

    private void btnSubmit_Click(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlCommand insert = new SqlCommand(
               "INSERT INTO ScheduledCheckUps (PatientAccountNo, ScheduleDate, ScheduleTime, DoctorAccountNo)" +
               "VALUES (@PatientAcctNo, @SchedDate, @SchedTime, @DocAcctNo )" +
               ";",
               cn);
            
            insert.Parameters.AddWithValue("@PatientAcctNo", Convert.ToInt32(tbPatientAccountNo.Text));
            insert.Parameters.AddWithValue("@SchedDate", tbAppointmentDate.Text);
            insert.Parameters.AddWithValue("@SchedTime", tbAppointmentTime.Text);
            //insert.Parameters.AddWithValue("@Department", ddlDepartment.SelectedValue);
            insert.Parameters.AddWithValue("@DocAcctNo", Convert.ToInt32(tbAppointmentDoctor.Text));

            try
            {
                cn.Open();
                insert.ExecuteNonQuery();
                lblMessage.Text = "Succesfully Added!";
                Response.AddHeader("REFRESH", "3;URL=ReceptionManageAppointments.aspx");
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                cn.Close();
            }

        }
    }

    private void btnRefresh_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/CIS/Reception/ReceptionManageAppointments.aspx");
    }

    void ShowAppointmentScheduleRequests_Click(Object sender, EventArgs e)
    {
        if (Panel1.Visible == false)
        {
            Panel1.Visible = true;
            btnShowAppointmentScheduleRequests.Text = "Hide Appointment Schedule Requests";
        }
        else
        {
            Panel1.Visible = false;
            btnShowAppointmentScheduleRequests.Text = "Show Appointment Schedule Requests";
        }

    }

    void ShowApprovedAppointments_Click(Object sender, EventArgs e)
    {
        if (Panel2.Visible == false)
        {
            Panel2.Visible = true;
            btnShowApprovedAppointments.Text = "Hide Approved Appointments";
        }
        else
        {
            Panel2.Visible = false;
            btnShowApprovedAppointments.Text = "Show Approved Appointments";
        }

    }


    //private void gridviewAppointmentScheduleRequests_RowDeleting(Object sender, GridViewDeleteEventArgs e)
    //{
    //}


    // Get Data
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
            Response.Write("<script>alert('Unable to connect to the database. " + ex + "')</script>");
        }

        return ds;
    }

}
