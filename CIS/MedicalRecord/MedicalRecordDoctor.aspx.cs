using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
//Include using directives to use SQL related commands
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CIS_MedicalRecord_MedicalRecordDoctor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CurrentConsultationID"] == null )
        {
            Response.Redirect("~/CIS/MedicalRecord/MedicalRecordHome.aspx");
        }

        //Event handlers for Submit and Clear
        btnMRDSubmit.Click += new EventHandler(this.btnMRDSubmit_Click);
        btnMRDClear.Click += new EventHandler(this.btnMRDClear_Click);
        //I was able to access the design view so the event handlers for btnShowPatientVitalSigns and btnMRDCancel were created automatically

        //To register the current datetime

        lblCurrentConsultationID.Text = Session["CurrentConsultationID"].ToString();
        lblPatientID.Text = Session["CurrentConsultationPatientID"].ToString();
        lblPatientDOB.Text = Session["CurrentConsultationPatientDoB"].ToString();
        lblPatientName.Text = Session["CurrentConsultationPatientName"].ToString();
        lblPatientAge.Text = Session["CurrentConsultationPatientAge"].ToString();
        lblDateTimeNow.Text = Session["CurrentConsultationDateTime"].ToString();


    }

    private void btnMRDSubmit_Click(object sender, EventArgs e)
    {
if(tbChiefComplaint.Text != "" && tbExamAdvice.Text != "" &&
tbExamResult.Text != "" && tbTreatmentPlan.Text != "" &&
tbPrescription.Text != "" && tbCaseSummary.Text != "" && 
tbReferredto.Text != "" )
{
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlCommand insert = new SqlCommand(
               "INSERT INTO MedicalRecordConsultation (ConsultationDateTime, PatientAccountNo, ChiefComplaint, Remarks, " +
               "ExaminationAdvice, ExaminationResults, DiagnosisType, DiagnosisResults, TreatmentPlan, Prescription, CaseSummary, ReferredTo, DoctorAccountNo)" +
               "VALUES (@ConsultationDateTime, @PatientAccountNo, @ChiefComplaint, @Remarks, @ExaminationAdvice, @ExaminationResults, @DiagnosisType, " +
               "@DiagnosisResults, @TreatmentPlan, @Prescription, @CaseSummary, @ReferredTo, @DoctorAccountNo)" +
               ";",
               cn);
            insert.Parameters.AddWithValue("@ConsultationDateTime", Convert.ToDateTime(lblDateTimeNow.Text));
            insert.Parameters.AddWithValue("@PatientAccountNo", Convert.ToInt32(Session["CurrentConsultationPatientID"]));
            insert.Parameters.AddWithValue("@ChiefComplaint", tbChiefComplaint.Text);
            insert.Parameters.AddWithValue("@Remarks", tbRemarks.Text);
            insert.Parameters.AddWithValue("@ExaminationAdvice", tbExamAdvice.Text);
            insert.Parameters.AddWithValue("@ExaminationResults", tbExamResult.Text);
            insert.Parameters.AddWithValue("@DiagnosisType", tbDiagnosisType.Text);
            insert.Parameters.AddWithValue("@DiagnosisResults", tbDiagnosisResult.Text);
            insert.Parameters.AddWithValue("@TreatmentPlan", tbTreatmentPlan.Text);
            insert.Parameters.AddWithValue("@Prescription", tbPrescription.Text);
            insert.Parameters.AddWithValue("@CaseSummary", tbCaseSummary.Text);
            insert.Parameters.AddWithValue("@ReferredTo", tbReferredto.Text);
            insert.Parameters.AddWithValue("@DoctorAccountNo", Convert.ToInt32(Session["LoggedInAccntNo"]));

            try
            {
                cn.Open();
                insert.ExecuteNonQuery();
                lblMessage.Text = "Succesfully Added!";
                Response.AddHeader("REFRESH", "3;URL=MedicalRecordHome.aspx");
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                cn.Close();
            }

        }
}else
{
Page.ClientScript.RegisterStartupScript(this.GetType(),"Notice","alert('Some required field/s missing!');",true);
if(tbChiefComplaint.Text == "")
{
tbChiefComplaint.BackColor = Color.Pink;
}
if(tbExamAdvice.Text == "")
{
tbExamAdvice.BackColor = Color.Pink;
}
if(tbExamResult.Text == "")
{
tbExamResult.BackColor = Color.Pink;
}
if(tbTreatmentPlan.Text == "")
{
tbTreatmentPlan.BackColor = Color.Pink;
}
if(tbPrescription.Text == "")
{
tbPrescription.BackColor = Color.Pink;
}
if(tbCaseSummary.Text == "")
{
tbCaseSummary.BackColor = Color.Pink;
}
if(tbReferredto.Text == "")
{
tbReferredto.BackColor = Color.Pink;
}
}
    }

    private void btnMRDClear_Click(object sender, EventArgs e)
    {
        tbChiefComplaint.Text = tbExamAdvice.Text = tbExamResult.Text = tbDiagnosisType.Text =
        tbDiagnosisResult.Text = tbTreatmentPlan.Text = tbPrescription.Text = tbCaseSummary.Text =
        tbReferredto.Text = String.Empty;
    }

    
    //protected void btnShowPatientVitalSigns_Click(object sender, EventArgs e)
    //{
    //    if (Panel1.Visible == false)
    //    {
    //        Panel1.Visible = true;
    //        btnShowPatientVitalSigns.Text = "Hide Patient Vital Signs";
    //    }
    //    else
    //    {
    //        Panel1.Visible = false;
    //        btnShowPatientVitalSigns.Text = "Show Patient Vital Signs";
    //    }
    //}

    protected void btnMRDCancel_Click(object sender, EventArgs e)
    {
        Session["CurrentConsultationID"] = null;
        Session["CurrentConsultationPatientID"] = null;
        Session["CurrentConsultationPatientDoB"] = null;
        Session["CurrentConsultationPatientName"] = null;
        Session["CurrentConsultationPatientAge"] = null;
        Session["CurrentConsultationDateTime"] = null;

        Response.Redirect("~/CIS/MedicalRecord/MedicalRecordHome.aspx");
    }
}
