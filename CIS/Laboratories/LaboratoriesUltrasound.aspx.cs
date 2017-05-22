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

public partial class CIS_Laboratories_LaboratoriesUltrasound : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LaboratoryPatientID"] == null)
        {
            Response.Redirect("~/CIS/Laboratories/LaboratoriesHome.aspx");
        }

        lblPatientId.Text = Session["LaboratoryPatientID"].ToString();
        lblDateOfBirth.Text = Session["LaboratoryPatientDoB"].ToString();
        lblPatientName.Text = Session["LaboratoryPatientName"].ToString();
        lblAge.Text = Session["LaboratoryPatientAge"].ToString();
        lblGender.Text = Session["LaboratoryPatientGender"].ToString();
        //txtDatePerformed.Text = Session["LaboratoryDateTime"].ToString();
DateTime getCurrentDateTime = DateTime.Now;
        txtDatePerformed.Text = getCurrentDateTime.ToString();


        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlDataAdapter dataAdapter = new SqlDataAdapter(
               "SELECT IDENT_CURRENT('LabUltrasound')+1 AS id;", cn);

            cn.Open();
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);

            if (dataSet.Tables[0].Rows.Count > 0)
            {
                lblCaseNum.Text = dataSet.Tables[0].Rows[0]["id"].ToString();
                cn.Close();
            }

            else
            {
                lblMessage.Text = "There seems to be an error. Please contact the admin.";
            }

        }

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
if(txtDatePerformed.Text != "" &&
txtFatalNumberUltrasoundFindings.Text != "" && txtPlacentalLocationGradeUltrasoundFindings.Text != "" && txtFatalMovementUltrasoundFindings.Text != "" && txtFSexUltrasoundFindings.Text != "" && txtFatalLieUltrasoundFindings.Text != "" && txtAmnioticFluidUltrasoundFindings.Text != "" && txtCardiacActivityUltrasoundFindings.Text != "" && txtCRLUltrasoundMeasurements.Text != "" && txtCRLWeeksUltrasoundMeasurements.Text != "" && txtBPDUltrasoundMeasurements.Text != "" && txtBPDWeeksUltrasoundMeasurements.Text != "" && txtEFBWUltrasoundMeasurements.Text != "" && txtAverageGestationalAgeUltrasoundMeasurements.Text != "" && txtEDCUltrasoundMeasurements.Text != "" && txtFLUltrasoundMeasurements.Text != "" && txtFLWeeksUltrasoundMeasurements.Text != "" && txtACUltrasoundMeasurements.Text != "" && txtACWeeksUltrasoundMeasurements.Text != "" && txtFindingsUltrasound.Text != "" && tbSonologist.Text != "")
{
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlCommand insert = new SqlCommand(
               "INSERT INTO LabUltrasound(DatePerformed, UltrasoundFindingsFatalNumber, UltrasoundFindingsPlacentalLocationGrade, UltrasoundFindingsFatalMovement," +
               "UltrasoundFindingsFSex, UltrasoundFindingsFatalLie, UltrasoundFindingsAmnioticFluid, UltrasoundFindingsCardiacActivity, UltrasoundMeasurementLmpWeeksCRL," +
               "UltrasoundMeasurementLmpWeeksCRLWeeks, UltrasoundMeasurementLmpWeeksBPD, UltrasoundMeasurementLmpWeeksBPDWeeks, UltrasoundMeasurementLmpWeeksEFBW," +
               "UltrasoundMeasurementLmpWeeksAverageGestationalAge, UltrasoundMeasurementLmpWeeksEDC, UltrasoundMeasurementLmpWeeksFL, UltrasoundMeasurementLmpWeeksFLWeeks, UltrasoundMeasurementLmpWeeksAC, UltrasoundMeasurementLmpWeeksACWeeks, Findings, Sonologist, PatientAccountNo, NurseMedTechAccountNo)" +
               "VALUES (@DatePerformed, @UltrasoundFindingsFatalNumber, @UltrasoundFindingsPlacentalLocationGrade, @UltrasoundFindingsFatalMovement," +
               "@UltrasoundFindingsFSex, @UltrasoundFindingsFatalLie, @UltrasoundFindingsAmnioticFluid, @UltrasoundFindingsCardiacActivity, @UltrasoundMeasurementLmpWeeksCRL," +
               "@UltrasoundMeasurementLmpWeeksCRLWeeks, @UltrasoundMeasurementLmpWeeksBPD, @UltrasoundMeasurementLmpWeeksBPDWeeks, @UltrasoundMeasurementLmpWeeksEFBW," +
               "@UltrasoundMeasurementLmpWeeksAverageGestationalAge, @UltrasoundMeasurementLmpWeeksEDC, @UltrasoundMeasurementLmpWeeksFL, @UltrasoundMeasurementLmpWeeksFLWeeks, @UltrasoundMeasurementLmpWeeksAC, @UltrasoundMeasurementLmpWeeksACWeeks, @Findings, @Sonologist, @PatientAccountNo, @NurseMedTechAccountNo);",
               cn);

            insert.Parameters.AddWithValue("@DatePerformed", Convert.ToDateTime(txtDatePerformed.Text));
            insert.Parameters.AddWithValue("@UltrasoundFindingsFatalNumber", txtFatalNumberUltrasoundFindings.Text);
            insert.Parameters.AddWithValue("@UltrasoundFindingsPlacentalLocationGrade", txtPlacentalLocationGradeUltrasoundFindings.Text);
            insert.Parameters.AddWithValue("@UltrasoundFindingsFatalMovement", txtFatalMovementUltrasoundFindings.Text);
            insert.Parameters.AddWithValue("@UltrasoundFindingsFSex", txtFSexUltrasoundFindings.Text);
            insert.Parameters.AddWithValue("@UltrasoundFindingsFatalLie", txtFatalLieUltrasoundFindings.Text);
            insert.Parameters.AddWithValue("@UltrasoundFindingsAmnioticFluid", txtAmnioticFluidUltrasoundFindings.Text);
            insert.Parameters.AddWithValue("@UltrasoundFindingsCardiacActivity", txtCardiacActivityUltrasoundFindings.Text);
            insert.Parameters.AddWithValue("@UltrasoundMeasurementLmpWeeksCRL", txtCRLUltrasoundMeasurements.Text);
            insert.Parameters.AddWithValue("@UltrasoundMeasurementLmpWeeksCRLWeeks", txtCRLWeeksUltrasoundMeasurements.Text);
            insert.Parameters.AddWithValue("@UltrasoundMeasurementLmpWeeksBPD", txtBPDUltrasoundMeasurements.Text);
            insert.Parameters.AddWithValue("@UltrasoundMeasurementLmpWeeksBPDWeeks", txtBPDWeeksUltrasoundMeasurements.Text);
            insert.Parameters.AddWithValue("@UltrasoundMeasurementLmpWeeksEFBW", txtEFBWUltrasoundMeasurements.Text);
            insert.Parameters.AddWithValue("@UltrasoundMeasurementLmpWeeksAverageGestationalAge", txtAverageGestationalAgeUltrasoundMeasurements.Text);
            insert.Parameters.AddWithValue("@UltrasoundMeasurementLmpWeeksEDC", txtEDCUltrasoundMeasurements.Text);
            insert.Parameters.AddWithValue("@UltrasoundMeasurementLmpWeeksFL", txtFLUltrasoundMeasurements.Text);
            insert.Parameters.AddWithValue("@UltrasoundMeasurementLmpWeeksFLWeeks", txtFLWeeksUltrasoundMeasurements.Text);
            insert.Parameters.AddWithValue("@UltrasoundMeasurementLmpWeeksAC", txtACUltrasoundMeasurements.Text);
            insert.Parameters.AddWithValue("@UltrasoundMeasurementLmpWeeksACWeeks", txtACWeeksUltrasoundMeasurements.Text);
            insert.Parameters.AddWithValue("@Findings", txtFindingsUltrasound.Text);
            insert.Parameters.AddWithValue("@Sonologist", tbSonologist.Text);
            insert.Parameters.AddWithValue("@PatientAccountNo", Convert.ToInt32(Session["LaboratoryPatientID"]));
            insert.Parameters.AddWithValue("@NurseMedTechAccountNo", Convert.ToInt32(Session["LoggedInAccntNo"]));

            try
            {
                cn.Open();
                insert.ExecuteNonQuery();
                lblMessage.Text = "Succesfully Added!";
                Response.AddHeader("REFRESH", "3;URL=LaboratoriesHome.aspx");
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
if(txtDatePerformed.Text == "")
{
txtDatePerformed.BackColor = Color.Pink;
}
if(txtFatalNumberUltrasoundFindings.Text == "")
{
txtFatalNumberUltrasoundFindings.BackColor = Color.Pink;
}
if(txtPlacentalLocationGradeUltrasoundFindings.Text == "")
{
txtPlacentalLocationGradeUltrasoundFindings.BackColor = Color.Pink;
}
if(txtFatalMovementUltrasoundFindings.Text == "")
{
txtFatalMovementUltrasoundFindings.BackColor = Color.Pink;
}
if(txtFSexUltrasoundFindings.Text == "")
{
txtFSexUltrasoundFindings.BackColor = Color.Pink;
}
if(txtFatalLieUltrasoundFindings.Text == "")
{
txtFatalLieUltrasoundFindings.BackColor = Color.Pink;
}
if(txtAmnioticFluidUltrasoundFindings.Text == "")
{
txtAmnioticFluidUltrasoundFindings.BackColor = Color.Pink;
}
if(txtCardiacActivityUltrasoundFindings.Text == "")
{
txtCardiacActivityUltrasoundFindings.BackColor = Color.Pink;
}
if(txtCRLUltrasoundMeasurements.Text == "")
{
txtCRLUltrasoundMeasurements.BackColor = Color.Pink;
}
if(txtCRLWeeksUltrasoundMeasurements.Text == "")
{
txtCRLWeeksUltrasoundMeasurements.BackColor = Color.Pink;
}
if(txtBPDUltrasoundMeasurements.Text == "")
{
txtBPDUltrasoundMeasurements.BackColor = Color.Pink;
}
if(txtBPDWeeksUltrasoundMeasurements.Text == "")
{
txtBPDWeeksUltrasoundMeasurements.BackColor = Color.Pink;
}
if(txtEFBWUltrasoundMeasurements.Text == "")
{
txtEFBWUltrasoundMeasurements.BackColor = Color.Pink;
}
if(txtAverageGestationalAgeUltrasoundMeasurements.Text == "")
{
txtAverageGestationalAgeUltrasoundMeasurements.BackColor = Color.Pink;
}
if(txtEDCUltrasoundMeasurements.Text == "")
{
txtEDCUltrasoundMeasurements.BackColor = Color.Pink;
}
if(txtFLUltrasoundMeasurements.Text == "")
{
txtFLUltrasoundMeasurements.BackColor = Color.Pink;
}
if(txtFLWeeksUltrasoundMeasurements.Text == "")
{
txtFLWeeksUltrasoundMeasurements.BackColor = Color.Pink;
}
if(txtACUltrasoundMeasurements.Text == "")
{
txtACUltrasoundMeasurements.BackColor = Color.Pink;
}
if(txtACWeeksUltrasoundMeasurements.Text == "")
{
txtACWeeksUltrasoundMeasurements.BackColor = Color.Pink;
}
if(txtFindingsUltrasound.Text == "")
{
txtFindingsUltrasound.BackColor = Color.Pink;
}
if(tbSonologist.Text == "")
{
tbSonologist.BackColor = Color.Pink;
}

}
    } 

    protected void btnClear_Click(object sender, EventArgs e)
    {

    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Session["LaboratoryPatientID"] = null;
        Session["LaboratoryPatientDoB"] = null;
        Session["LaboratoryPatientName"] = null;
        Session["LaboratoryPatientAge"] = null;
        Session["LaboratoryDateTime"] = null;
        Session["LaboratoryPatientGender"] = null;

        Response.Redirect("~/CIS/Laboratories/LaboratoriesHome.aspx");
    }
}


