using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CIS_Laboratories_LaboratoriesLaboratoryReports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CurrentReceptionPatientID"] == null)
        {
            lblMessage.ForeColor = System.Drawing.Color.Black;
            lblMessage.Text = "Please select a patient.";
        }
    }

    protected void btnSearchPatient_Click(object sender, EventArgs e)
    {
        Session["CurrentReceptionPatientID"] = null;

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
                    lblMessage.Text = "Please select a patient.";
                    lblMessage.ForeColor = new System.Drawing.Color();
                    gridviewPatient.DataSource = dataSet;
                    gridviewPatient.DataBind();
                }
                else
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "Patient not found. Check database connection.";
                    Session["CurrentReceptionPatientID"] = null;
                    gridviewPatient.DataSource = null;
                    gridviewPatient.DataBind();
                }
            }
        }
        else
        {
            lblMessage.Text = "Please enter and select patient's first or last name.";
        }

    }

    protected void gridviewPatient_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["CurrentReceptionPatientID"] = gridviewPatient.SelectedRow.Cells[1].Text;
        lblMessage.Text = "Selected Patient ID: " + Session["CurrentReceptionPatientID"].ToString();

        if (Session["CurrentReceptionPatientID"] != null)
        {
            ddlLaboratoryType.Enabled = true;
            btnSearchRecord.Enabled = true;
            btnSearchRecord.BackColor = System.Drawing.Color.Green;
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        tbPatientName.Text = String.Empty;
        lblMessage.Text = String.Empty;
        lblLaboratory.Text = "Vital Signs";
        ddlLaboratoryType.SelectedIndex = 0;
        lblMessage.ForeColor = new System.Drawing.Color();
        btnSearchRecord.BackColor = System.Drawing.Color.Black;
        Session["CurrentReceptionPatientID"] = null;
        ddlLaboratoryType.Enabled = false;
        btnSearchRecord.Enabled = false;
        gridviewPatient.DataSource = null;
        gridviewPatient.DataBind();
        gridviewLaboratory.DataSource = null;
        gridviewLaboratory.DataBind();
    }





    protected void ddlLaboratoryType_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnSearchRecord_Click(object sender, EventArgs e)
    {
        lblMessage.Text = null;
        if (Session["CurrentReceptionPatientID"] != null)
        {
            lblLaboratory.Text = ddlLaboratoryType.Text;

            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
            {
                string sqladapterstring = null;

                if (ddlLaboratoryType.Text == "Vital Signs")
                {
                    sqladapterstring = "SELECT * FROM VitalSigns " +
                    "WHERE PatientAccountNo = @PatientAccountNo;";
                }
                else if (ddlLaboratoryType.Text == "Audiometry")
                {
                    sqladapterstring = "SELECT * FROM LabAudiometry " +
                    "WHERE PatientAccountNo = @PatientAccountNo;";
                }
                else if (ddlLaboratoryType.Text == "Blood Chemistry")
                {
                    sqladapterstring = "SELECT * FROM LabBloodChemistry " +
                    "WHERE PatientAccountNo = @PatientAccountNo;";
                }
                else if (ddlLaboratoryType.Text == "CT Scan")
                {
                    sqladapterstring = "SELECT * FROM LabCTScan " +
                    "WHERE PatientAccountNo = @PatientAccountNo;";
                }
                else if (ddlLaboratoryType.Text == "Dental")
                {
                    sqladapterstring = "SELECT * FROM LabDental " +
                    "WHERE PatientAccountNo = @PatientAccountNo;";
                }
                else if (ddlLaboratoryType.Text == "Drug Test")
                {
                    sqladapterstring = "SELECT * FROM LabDrugTest " +
                    "WHERE PatientAccountNo = @PatientAccountNo;";
                }
                else if (ddlLaboratoryType.Text == "Fecalysis")
                {
                    sqladapterstring = "SELECT * FROM LabFecalysis " +
                    "WHERE PatientAccountNo = @PatientAccountNo;";
                }
                else if (ddlLaboratoryType.Text == "Haematology")
                {
                    sqladapterstring = "SELECT * FROM LabHaematology " +
                    "WHERE PatientAccountNo = @PatientAccountNo;";
                }
                else if (ddlLaboratoryType.Text == "Immunology")
                {
                    sqladapterstring = "SELECT * FROM LabImmunology " +
                    "WHERE PatientAccountNo = @PatientAccountNo;";
                }
                else if (ddlLaboratoryType.Text == "Physical Exam")
                {
                    sqladapterstring = "SELECT * FROM LabPhysicalExam " +
                    "WHERE PatientAccountNo = @PatientAccountNo;";
                }
                else if (ddlLaboratoryType.Text == "Psychology")
                {
                    sqladapterstring = "SELECT * FROM LabPsychology " +
                    "WHERE PatientAccountNo = @PatientAccountNo;";
                }
                else if (ddlLaboratoryType.Text == "Ultrasound")
                {
                    sqladapterstring = "SELECT * FROM LabUltrasound " +
                    "WHERE PatientAccountNo = @PatientAccountNo;";
                }
                else if (ddlLaboratoryType.Text == "Urinalysis")
                {
                    sqladapterstring = "SELECT * FROM LabUrinalysis " +
                    "WHERE PatientAccountNo = @PatientAccountNo;";
                }
                else if (ddlLaboratoryType.Text == "X-ray")
                {
                    sqladapterstring = "SELECT * FROM LabXray " +
                    "WHERE PatientAccountNo = @PatientAccountNo;";
                }
                else //err
                {
                    lblMessage.Text = "There seems to be an error. Please contact admin";
                    cn.Close();
                }

                SqlDataAdapter dataAdapter2 = new SqlDataAdapter(
                   sqladapterstring, cn);

                SqlParameter PatientAccountNo = dataAdapter2.SelectCommand.Parameters.Add("@PatientAccountNo", SqlDbType.Int);
                PatientAccountNo.Value = Convert.ToInt32(Session["CurrentReceptionPatientID"]);

                cn.Open();
                DataSet dataSet2 = new DataSet();
                dataAdapter2.Fill(dataSet2);

                if (dataSet2.Tables[0].Rows.Count > 0)
                {
                    lblMessage.Text = "Please select a patient.";
                    lblMessage.ForeColor = new System.Drawing.Color();
                    gridviewLaboratory.DataSource = dataSet2;
                    gridviewLaboratory.DataBind();

                    btnSearchRecord.BackColor = System.Drawing.Color.Black;
                    Session["CurrentReceptionPatientID"] = null;
                    ddlLaboratoryType.Enabled = false;
                    btnSearchRecord.Enabled = false;
                }
                else
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "No data found. Check database connection.";
                    //Session["CurrentReceptionPatientID"] = null;
                    //gridviewLaboratory.DataSource = null;
                    //gridviewLaboratory.DataBind();

                    //tbPatientName.Text = String.Empty;
                    //lblMessage.Text = String.Empty;
                    lblLaboratory.Text = "Vital Signs";
                    ddlLaboratoryType.SelectedIndex = 0;
                    //lblMessage.ForeColor = new System.Drawing.Color();
                    btnSearchRecord.BackColor = System.Drawing.Color.Black;
                    Session["CurrentReceptionPatientID"] = null;
                    ddlLaboratoryType.Enabled = false;
                    btnSearchRecord.Enabled = false;
                    //gridviewPatient.DataSource = null;
                    //gridviewPatient.DataBind();
                    gridviewLaboratory.DataSource = null;
                    gridviewLaboratory.DataBind();
                }


            }
        }
    }
}