using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CIS_Patient_MyMedicalReports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnShowPrescriptions_Click(object sender, EventArgs e)
    {
        if (Panel1.Visible == false)
        {
            Panel1.Visible = true;
            btnShowPrescriptions.Text = "Hide";
        }
        else
        {
            Panel1.Visible = false;
            btnShowPrescriptions.Text = "Show Doctor's Prescription";
        }
    }

    ////---------------------------Discontinued
    //protected void btnShowLaboratoryResults_Click(object sender, EventArgs e)
    //{
    //    if (Panel1.Visible == false)
    //    {
    //        Panel1.Visible = true;
    //        btnShowLaboratoryResults.Text = "Hide";

    //        String queryString = String.Empty;

    //        if (ddlExam.Text == "Vital Signs")
    //        {
    //            queryString =
    //              "SELECT * " +
    //              "FROM VitalSigns " +
    //              "WHERE PatientAccountNo = " + Session["AccountNo"].ToString() + ";";
    //        }
    //        else if (ddlExam.Text == "Audiometry")
    //        {
    //            queryString =
    //              "SELECT [e1.ScheduleDate] = CONVERT(VARCHAR(11),GETDATE(),106), e1.ScheduleTime, e2.Department, e2.MDname " +
    //              "FROM ScheduledCheckUps e1 INNER JOIN Doctor e2 ON e1.DoctorAccountNo = e2.AccountNo " +
    //              "WHERE PatientAccountNo = " + Session["AccountNo"].ToString() + ";";
    //        }
    //        else if (ddlExam.Text == "Blood Chemistry")
    //        {
                
    //        }
    //        else if (ddlExam.Text == "CT Scan")
    //        {
                
    //        }
    //        else if (ddlExam.Text == "Dental")
    //        {
                
    //        }
    //        else if (ddlExam.Text == "Drug Test")
    //        {
                
    //        }
    //        else if (ddlExam.Text == "Fecalysis")
    //        {
                
    //        }
    //        else if (ddlExam.Text == "Haematology")
    //        {
                
    //        }
    //        else if (ddlExam.Text == "Immunology")
    //        {
                
    //        }
    //        else if (ddlExam.Text == "Physical Exam")
    //        {
                
    //        }
    //        else if (ddlExam.Text == "Psychology")
    //        {
                
    //        }
    //        else if (ddlExam.Text == "Ultrasound")
    //        {
                
    //        }
    //        else if (ddlExam.Text == "Urinalysis")
    //        {
                
    //        }
    //        else if (ddlExam.Text == "X-ray")
    //        {
                
    //        }
    //        else //err
    //        {
                
    //        }


    //        if (!IsPostBack)
    //        {

    //            // Run the query and bind the resulting DataSet to the GridView control.
    //            DataSet ds = GetData(queryString);
    //            if (ds.Tables.Count > 0)
    //            {
    //                grdviewLaboratoryResults.DataSource = ds;
    //                grdviewLaboratoryResults.DataBind();
    //            }
    //            else
    //            {
    //                lblMessage.Text = "Unable to connect to the database.";
    //            }

    //        }

    //    }
    //    else
    //    {
    //        Panel1.Visible = false;
    //        btnShowLaboratoryResults.Text = "Show Laboratory Results";
    //    }
    //}

    //DataSet GetData(String queryString)
    //{
    //    // Retrieve the connection string stored in the Web.config file.
    //    String connectionString = ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ConnectionString;

    //    DataSet ds = new DataSet();

    //    try
    //    {
    //        // Connect to the database and run the query.
    //        SqlConnection connection = new SqlConnection(connectionString);
    //        SqlDataAdapter adapter = new SqlDataAdapter(queryString, connection);

    //        // Fill the DataSet.
    //        adapter.Fill(ds);

    //    }
    //    catch (Exception ex)
    //    {
    //        // The connection failed. Display an error message.
    //        //Message.Text = "Unable to connect to the database.";
    //        lblMessage.Text = "Unable to connect to the database. " + ex;
    //    }
    //    return ds;
    //}

}