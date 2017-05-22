using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CIS_Laboratories_LabReports_LabReportsHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnSubmit.Enabled = false;
    }

    protected void btnSearchPatient_Click(object sender, EventArgs e)
    {
        Session["CurrentLabReportsPatientID"] = null;
        ddlLabExamType.Enabled = false;
        gridviewPatient.SelectedIndex = -1; //Clears selected rows
        gridviewLaboratory.SelectedIndex = -1;
        gridviewPatient.DataSource = null;
        gridviewLaboratory.DataSource = null;
        gridviewPatient.DataBind();
        gridviewLaboratory.DataBind();

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
                    Session["CurrentLabReportsPatientID"] = null;
                    gridviewPatient.DataSource = null;
                    gridviewPatient.DataBind();
                }
            }
        }
        else
        {
            lblMessage.Text = "Please enter patient's first name or last name.";
        }

    }

    protected void gridviewPatient_SelectedIndexChanged(object sender, EventArgs e)
    {

        gridviewLaboratory.SelectedIndex = -1;
        gridviewLaboratory.DataSource = null;
        gridviewLaboratory.DataBind();
        Session["CurrentLabReportsPatientID"] = gridviewPatient.SelectedRow.Cells[1].Text;
        ddlLabExamType.Enabled = true;
        lblMessage.Text = "Selected Patient ID: " + Session["CurrentLabReportsPatientID"].ToString() + ". Please select an exam type.";
        //Added code july 26, 2016
        //Response.Write(Session["CurrentLabReportsPatientID"].ToString()); // Patient ID
        string patientIdHolder = Session["CurrentLabReportsPatientID"].ToString();
        //Pass data to webpage report
        HttpCookie cookiePatientId = new HttpCookie("selectedPatientId");
        cookiePatientId.Value = patientIdHolder;
        //end added code
    }

    protected void ddlLabExamType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlLabExamType.SelectedValue != null)
        {
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
            {
                if (ddlLabExamType.SelectedItem.Text == "Audiometry")
                {
                    SqlDataAdapter dataAdapter2 = new SqlDataAdapter(
                       "SELECT CaseNo AS 'Case Number', CONVERT(VARCHAR(11),DatePerformed,101) AS 'Date Performed' FROM LabAudiometry " +
                       "WHERE PatientAccountNo = @Patient;", cn);

                    SqlParameter Patient = dataAdapter2.SelectCommand.Parameters.Add("@Patient", SqlDbType.Int);
                    Patient.Value = Convert.ToInt32(Session["CurrentLabReportsPatientID"]);

                    cn.Open();
                    DataSet dataSet2 = new DataSet();
                    dataAdapter2.Fill(dataSet2);

                    if (dataSet2.Tables[0].Rows.Count > 0)
                    {
                        lblMessage.Text = String.Empty;
                        lblMessage.ForeColor = new System.Drawing.Color();
                        gridviewLaboratory.DataSource = dataSet2;
                        gridviewLaboratory.DataBind();
                    }
                    else
                    {
                        lblMessage.Text = "No records in this laboratory exam found.";
                        gridviewLaboratory.DataSource = null;
                        gridviewLaboratory.DataBind();
                    }
                }
                else if (ddlLabExamType.SelectedItem.Text == "Blood Chemistry")
                {
                    SqlDataAdapter dataAdapter2 = new SqlDataAdapter(
                       "SELECT CaseNo AS 'Case Number', CONVERT(VARCHAR(11),DatePerformed,101) AS 'Date Performed' FROM LabBloodChemistry " +
                       "WHERE PatientAccountNo = @Patient;", cn);

                    SqlParameter Patient = dataAdapter2.SelectCommand.Parameters.Add("@Patient", SqlDbType.Int);
                    Patient.Value = Convert.ToInt32(Session["CurrentLabReportsPatientID"]);

                    cn.Open();
                    DataSet dataSet2 = new DataSet();
                    dataAdapter2.Fill(dataSet2);

                    if (dataSet2.Tables[0].Rows.Count > 0)
                    {
                        lblMessage.Text = String.Empty;
                        lblMessage.ForeColor = new System.Drawing.Color();
                        gridviewLaboratory.DataSource = dataSet2;
                        gridviewLaboratory.DataBind();
                    }
                    else
                    {
                        lblMessage.Text = "No records in this laboratory exam found.";
                        gridviewLaboratory.DataSource = null;
                        gridviewLaboratory.DataBind();
                    }
                }
                else if (ddlLabExamType.SelectedItem.Text == "CT Scan")
                {
                    SqlDataAdapter dataAdapter2 = new SqlDataAdapter(
                       "SELECT CaseNo AS 'Case Number', CONVERT(VARCHAR(11),DatePerformed,101) AS 'Date Performed' FROM LabCTScan " +
                       "WHERE PatientAccountNo = @Patient;", cn);

                    SqlParameter Patient = dataAdapter2.SelectCommand.Parameters.Add("@Patient", SqlDbType.Int);
                    Patient.Value = Convert.ToInt32(Session["CurrentLabReportsPatientID"]);

                    cn.Open();
                    DataSet dataSet2 = new DataSet();
                    dataAdapter2.Fill(dataSet2);

                    if (dataSet2.Tables[0].Rows.Count > 0)
                    {
                        lblMessage.Text = String.Empty;
                        lblMessage.ForeColor = new System.Drawing.Color();
                        gridviewLaboratory.DataSource = dataSet2;
                        gridviewLaboratory.DataBind();
                    }
                    else
                    {
                        lblMessage.Text = "No records in this laboratory exam found.";
                        gridviewLaboratory.DataSource = null;
                        gridviewLaboratory.DataBind();
                    }
                }
                else if (ddlLabExamType.SelectedItem.Text == "Cytopathology")
                {
                    SqlDataAdapter dataAdapter2 = new SqlDataAdapter(
                       "SELECT CaseNo AS 'Case Number', CONVERT(VARCHAR(11),DatePerformed,101) AS 'Date Performed' FROM LabCytopathology " +
                       "WHERE PatientAccountNo = @Patient;", cn);

                    SqlParameter Patient = dataAdapter2.SelectCommand.Parameters.Add("@Patient", SqlDbType.Int);
                    Patient.Value = Convert.ToInt32(Session["CurrentLabReportsPatientID"]);

                    cn.Open();
                    DataSet dataSet2 = new DataSet();
                    dataAdapter2.Fill(dataSet2);

                    if (dataSet2.Tables[0].Rows.Count > 0)
                    {
                        lblMessage.Text = String.Empty;
                        lblMessage.ForeColor = new System.Drawing.Color();
                        gridviewLaboratory.DataSource = dataSet2;
                        gridviewLaboratory.DataBind();
                    }
                    else
                    {
                        lblMessage.Text = "No records in this laboratory exam found.";
                        gridviewLaboratory.DataSource = null;
                        gridviewLaboratory.DataBind();
                    }
                }
                else if (ddlLabExamType.SelectedItem.Text == "DrugTest")
                {
                    SqlDataAdapter dataAdapter2 = new SqlDataAdapter(
                       "SELECT CaseNo AS 'Case Number', CONVERT(VARCHAR(11),DatePerformed,101) AS 'Date Performed' FROM LabDrugTest " +
                       "WHERE PatientAccountNo = @Patient;", cn);

                    SqlParameter Patient = dataAdapter2.SelectCommand.Parameters.Add("@Patient", SqlDbType.Int);
                    Patient.Value = Convert.ToInt32(Session["CurrentLabReportsPatientID"]);

                    cn.Open();
                    DataSet dataSet2 = new DataSet();
                    dataAdapter2.Fill(dataSet2);

                    if (dataSet2.Tables[0].Rows.Count > 0)
                    {
                        lblMessage.Text = String.Empty;
                        lblMessage.ForeColor = new System.Drawing.Color();
                        gridviewLaboratory.DataSource = dataSet2;
                        gridviewLaboratory.DataBind();
                    }
                    else
                    {
                        lblMessage.Text = "No records in this laboratory exam found.";
                        gridviewLaboratory.DataSource = null;
                        gridviewLaboratory.DataBind();
                    }
                }
                else if (ddlLabExamType.SelectedItem.Text == "Fecalysis")
                {
                    SqlDataAdapter dataAdapter2 = new SqlDataAdapter(
                       "SELECT CaseNo AS 'Case Number', CONVERT(VARCHAR(11),DatePerformed,101) AS 'Date Performed' FROM LabFecalysis " +
                       "WHERE PatientAccountNo = @Patient;", cn);

                    SqlParameter Patient = dataAdapter2.SelectCommand.Parameters.Add("@Patient", SqlDbType.Int);
                    Patient.Value = Convert.ToInt32(Session["CurrentLabReportsPatientID"]);

                    cn.Open();
                    DataSet dataSet2 = new DataSet();
                    dataAdapter2.Fill(dataSet2);

                    if (dataSet2.Tables[0].Rows.Count > 0)
                    {
                        lblMessage.Text = String.Empty;
                        lblMessage.ForeColor = new System.Drawing.Color();
                        gridviewLaboratory.DataSource = dataSet2;
                        gridviewLaboratory.DataBind();
                    }
                    else
                    {
                        lblMessage.Text = "No records in this laboratory exam found.";
                        gridviewLaboratory.DataSource = null;
                        gridviewLaboratory.DataBind();
                    }
                }
                else if (ddlLabExamType.SelectedItem.Text == "Haematology")
                {
                    SqlDataAdapter dataAdapter2 = new SqlDataAdapter(
                       "SELECT CaseNo AS 'Case Number', CONVERT(VARCHAR(11),DatePerformed,101) AS 'Date Performed' FROM LabHaematology " +
                       "WHERE PatientAccountNo = @Patient;", cn);

                    SqlParameter Patient = dataAdapter2.SelectCommand.Parameters.Add("@Patient", SqlDbType.Int);
                    Patient.Value = Convert.ToInt32(Session["CurrentLabReportsPatientID"]);

                    cn.Open();
                    DataSet dataSet2 = new DataSet();
                    dataAdapter2.Fill(dataSet2);

                    if (dataSet2.Tables[0].Rows.Count > 0)
                    {
                        lblMessage.Text = String.Empty;
                        lblMessage.ForeColor = new System.Drawing.Color();
                        gridviewLaboratory.DataSource = dataSet2;
                        gridviewLaboratory.DataBind();
                    }
                    else
                    {
                        lblMessage.Text = "No records in this laboratory exam found.";
                        gridviewLaboratory.DataSource = null;
                        gridviewLaboratory.DataBind();
                    }
                }
                else if (ddlLabExamType.SelectedItem.Text == "Immunology")
                {
                    SqlDataAdapter dataAdapter2 = new SqlDataAdapter(
                       "SELECT CaseNo AS 'Case Number', CONVERT(VARCHAR(11),DatePerformed,101) AS 'Date Performed' FROM LabImmunology " +
                       "WHERE PatientAccountNo = @Patient;", cn);

                    SqlParameter Patient = dataAdapter2.SelectCommand.Parameters.Add("@Patient", SqlDbType.Int);
                    Patient.Value = Convert.ToInt32(Session["CurrentLabReportsPatientID"]);

                    cn.Open();
                    DataSet dataSet2 = new DataSet();
                    dataAdapter2.Fill(dataSet2);

                    if (dataSet2.Tables[0].Rows.Count > 0)
                    {
                        lblMessage.Text = String.Empty;
                        lblMessage.ForeColor = new System.Drawing.Color();
                        gridviewLaboratory.DataSource = dataSet2;
                        gridviewLaboratory.DataBind();
                    }
                    else
                    {
                        lblMessage.Text = "No records in this laboratory exam found.";
                        gridviewLaboratory.DataSource = null;
                        gridviewLaboratory.DataBind();
                    }
                }
                else if (ddlLabExamType.SelectedItem.Text == "Physical Exam")
                {
                    SqlDataAdapter dataAdapter2 = new SqlDataAdapter(
                       "SELECT CaseNo AS 'Case Number', CONVERT(VARCHAR(11),DatePerformed,101) AS 'Date Performed' FROM LabPhysicalExam " +
                       "WHERE PatientAccountNo = @Patient;", cn);

                    SqlParameter Patient = dataAdapter2.SelectCommand.Parameters.Add("@Patient", SqlDbType.Int);
                    Patient.Value = Convert.ToInt32(Session["CurrentLabReportsPatientID"]);

                    cn.Open();
                    DataSet dataSet2 = new DataSet();
                    dataAdapter2.Fill(dataSet2);

                    if (dataSet2.Tables[0].Rows.Count > 0)
                    {
                        lblMessage.Text = String.Empty;
                        lblMessage.ForeColor = new System.Drawing.Color();
                        gridviewLaboratory.DataSource = dataSet2;
                        gridviewLaboratory.DataBind();
                    }
                    else
                    {
                        lblMessage.Text = "No records in this laboratory exam found.";
                        gridviewLaboratory.DataSource = null;
                        gridviewLaboratory.DataBind();
                    }
                }
                else if (ddlLabExamType.SelectedItem.Text == "Psychology")
                {
                    SqlDataAdapter dataAdapter2 = new SqlDataAdapter(
                       "SELECT CaseNo AS 'Case Number', CONVERT(VARCHAR(11),DatePerformed,101) AS 'Date Performed' FROM LabPsychology " +
                       "WHERE PatientAccountNo = @Patient;", cn);

                    SqlParameter Patient = dataAdapter2.SelectCommand.Parameters.Add("@Patient", SqlDbType.Int);
                    Patient.Value = Convert.ToInt32(Session["CurrentLabReportsPatientID"]);

                    cn.Open();
                    DataSet dataSet2 = new DataSet();
                    dataAdapter2.Fill(dataSet2);

                    if (dataSet2.Tables[0].Rows.Count > 0)
                    {
                        lblMessage.Text = String.Empty;
                        lblMessage.ForeColor = new System.Drawing.Color();
                        gridviewLaboratory.DataSource = dataSet2;
                        gridviewLaboratory.DataBind();
                    }
                    else
                    {
                        lblMessage.Text = "No records in this laboratory exam found.";
                        gridviewLaboratory.DataSource = null;
                        gridviewLaboratory.DataBind();
                    }
                }
                else if (ddlLabExamType.SelectedItem.Text == "Ultrasound")
                {
                    SqlDataAdapter dataAdapter2 = new SqlDataAdapter(
                       "SELECT CaseNo AS 'Case Number', CONVERT(VARCHAR(11),DatePerformed,101) AS 'Date Performed' FROM LabUltrasound " +
                       "WHERE PatientAccountNo = @Patient;", cn);

                    SqlParameter Patient = dataAdapter2.SelectCommand.Parameters.Add("@Patient", SqlDbType.Int);
                    Patient.Value = Convert.ToInt32(Session["CurrentLabReportsPatientID"]);

                    cn.Open();
                    DataSet dataSet2 = new DataSet();
                    dataAdapter2.Fill(dataSet2);

                    if (dataSet2.Tables[0].Rows.Count > 0)
                    {
                        lblMessage.Text = String.Empty;
                        lblMessage.ForeColor = new System.Drawing.Color();
                        gridviewLaboratory.DataSource = dataSet2;
                        gridviewLaboratory.DataBind();
                    }
                    else
                    {
                        lblMessage.Text = "No records in this laboratory exam found.";
                        gridviewLaboratory.DataSource = null;
                        gridviewLaboratory.DataBind();
                    }
                }
                else if (ddlLabExamType.SelectedItem.Text == "Urinalysis")
                {
                    SqlDataAdapter dataAdapter2 = new SqlDataAdapter(
                       "SELECT CaseNo AS 'Case Number', CONVERT(VARCHAR(11),DatePerformed,101) AS 'Date Performed' FROM LabUrinalysis " +
                       "WHERE PatientAccountNo = @Patient;", cn);

                    SqlParameter Patient = dataAdapter2.SelectCommand.Parameters.Add("@Patient", SqlDbType.Int);
                    Patient.Value = Convert.ToInt32(Session["CurrentLabReportsPatientID"]);

                    cn.Open();
                    DataSet dataSet2 = new DataSet();
                    dataAdapter2.Fill(dataSet2);

                    if (dataSet2.Tables[0].Rows.Count > 0)
                    {
                        lblMessage.Text = String.Empty;
                        lblMessage.ForeColor = new System.Drawing.Color();
                        gridviewLaboratory.DataSource = dataSet2;
                        gridviewLaboratory.DataBind();
                    }
                    else
                    {
                        lblMessage.Text = "No records in this laboratory exam found.";
                        gridviewLaboratory.DataSource = null;
                        gridviewLaboratory.DataBind();
                    }
                }
                else if (ddlLabExamType.SelectedItem.Text == "X-ray")
                {
                    SqlDataAdapter dataAdapter2 = new SqlDataAdapter(
                       "SELECT CaseNo AS 'Case Number', CONVERT(VARCHAR(11),DatePerformed,101) AS 'Date Performed' FROM LabXray " +
                       "WHERE PatientAccountNo = @Patient;", cn);

                    SqlParameter Patient = dataAdapter2.SelectCommand.Parameters.Add("@Patient", SqlDbType.Int);
                    Patient.Value = Convert.ToInt32(Session["CurrentLabReportsPatientID"]);

                    cn.Open();
                    DataSet dataSet2 = new DataSet();
                    dataAdapter2.Fill(dataSet2);

                    if (dataSet2.Tables[0].Rows.Count > 0)
                    {
                        lblMessage.Text = String.Empty;
                        lblMessage.ForeColor = new System.Drawing.Color();
                        gridviewLaboratory.DataSource = dataSet2;
                        gridviewLaboratory.DataBind();
                    }
                    else
                    {
                        lblMessage.Text = "No records in this laboratory exam found.";
                        gridviewLaboratory.DataSource = null;
                        gridviewLaboratory.DataBind();
                    }
                }
                else
                {
                    lblMessage.Text = "Please select a laboratory type from the list.";
                }

            }
        }
        else
        {
            lblMessage.Text = "Please select laboratory type.";
        }
    }

    protected void gridviewLaboratory_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["CurrentLabReportsCaseNum"] = gridviewLaboratory.SelectedRow.Cells[1].Text;
        lblMessage.Text = "Selected Patient ID: " + Session["CurrentLabReportsPatientID"].ToString() + ". Selected Case No.:" + Session["CurrentLabReportsCaseNum"].ToString() + " Please click the Submit button to continue.";
        btnSubmit.Enabled = true;
        //Added code july 26, 2016
        //Response.Write(Session["CurrentLabReportsCaseNum"].ToString()); // Case Number
        string CaseNumberHolder = Session["CurrentLabReportsCaseNum"].ToString();
        //Pass data to webpage report
        HttpCookie cookieCaseNumber = new HttpCookie("selectedCaseNumber");
        cookieCaseNumber.Value = CaseNumberHolder;
        //Response.Write(cookieCaseNumber.Value+"Eto case");
        //end added code
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        tbPatientName.Text = String.Empty;
        lblMessage.Text = String.Empty;
        lblMessage.ForeColor = new System.Drawing.Color();
        Session["CurrentLabReportsPatientID"] = null;
        ddlLabExamType.Enabled = false;
        gridviewPatient.SelectedIndex = -1; //Clears selected rows
        gridviewLaboratory.SelectedIndex = -1;
        gridviewPatient.DataSource = null;
        gridviewLaboratory.DataSource = null;
        gridviewPatient.DataBind();
        gridviewLaboratory.DataBind();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (ddlLabExamType.SelectedValue != null)
        {
            if (ddlLabExamType.SelectedItem.Text == "Audiometry")
            {
                Response.Redirect("/View_Reports/View_Audiometry_Report.aspx");
            }
            else if (ddlLabExamType.SelectedItem.Text == "Blood Chemistry")
            {
                Response.Redirect("/View_Reports/View_BloodChem_Report.aspx");
            }
            else if (ddlLabExamType.SelectedItem.Text == "CT Scan")
            {
                Response.Redirect("/View_Reports/View_CTScan.aspx");
            }
            else if (ddlLabExamType.SelectedItem.Text == "Cytopathology")
            {
                Response.Redirect("/View_Reports/View_Cytopathology.aspx");
            }
            else if (ddlLabExamType.SelectedItem.Text == "Drug Test")
            {
                Response.Redirect("/View_Reports/View_DrugTest_Report.aspx");
            }
            else if (ddlLabExamType.SelectedItem.Text == "Fecalysis")
            {
                Response.Redirect("/View_Reports/View_Fecalysis_Report.aspx");
            }
            else if (ddlLabExamType.SelectedItem.Text == "Haematology")
            {
                Response.Redirect("/View_Reports/View_Haematology_Report.aspx");
            }
            else if (ddlLabExamType.SelectedItem.Text == "Immunology")
            {
                Response.Redirect("/View_Reports/View_Immunology_Report.aspx");
            }
            else if (ddlLabExamType.SelectedItem.Text == "Physical Exam")
            {
                Response.Redirect("/View_Reports/View_PhysicalExam_Report.aspx");
            }
            else if (ddlLabExamType.SelectedItem.Text == "Psychology")
            {
                Response.Redirect("/View_Reports/View_Psychology_Report.aspx");
            }
            else if (ddlLabExamType.SelectedItem.Text == "Ultrasound")
            {
                Response.Redirect("/View_Reports/View_Ultrasound_Report.aspx");
            }
            else if (ddlLabExamType.SelectedItem.Text == "Urinalysis")
            {
                Response.Redirect("/View_Reports/View_Urinalysis.aspx");
            }
            else if (ddlLabExamType.SelectedItem.Text == "X-ray")
            {
                Response.Redirect("/View_Reports/View_XRay_Report.aspx");
            }
            else
            {
                lblMessage.Text = "Please select a laboratory type from the list.";
            }
        }

        else
        {
            lblMessage.Text = "Please select laboratory type.";
        }
    }
}
    
