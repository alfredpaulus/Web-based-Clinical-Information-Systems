using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CIS_Laboratories_LaboratoriesPhysical : System.Web.UI.Page
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
               "SELECT IDENT_CURRENT('LabPhysicalExam')+1 AS id;", cn);

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
                //lblMessage.Text = "There seems to be an error. Please contact the admin.";
            }

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
if(txtDatePerformed.Text != "" && txtRecommendation.Text != "" && 
txtExamPhysician.Text != "" && txtMedicalDirector.Text != "")
{
        string IshiharaColorText, ColorVisionText, HearingTextLeft, HearingTextRight, SatisfactoryHearingText, HearingStandardText, VividnessText = String.Empty;
        string visualAidText, visualAidStandard, visualAidDuty, visualAidSatisfactory, visualAidColorVision, visualAidPsychology = String.Empty;
        if (rdbIshiharaAdequate.Checked)
        {
            IshiharaColorText = "Adequate";
        }
        else if (rdbIshiharaDefective.Checked)
        {
            IshiharaColorText = "Defective";
        }
        else
        {
            IshiharaColorText = "Not Applicable";
        }// END OF ISHIHARA COLOR

        if (rdbColorVisionAdequate.Checked)
        {
            ColorVisionText = "Adequate";
        }
        else if(rdbColorVisionDefective.Checked)
        {
            ColorVisionText = "Defective";
        }
        else
{
ColorVisionText = "Not Applicable";
}// END OF COLOR VISION

        if (rdbLeftASAdequate.Checked)
        {
            HearingTextLeft = "Left Adequate";
        }
        else if(rdbLeftASDefective.Checked)
        {
            HearingTextLeft = "Left Defective";
        }
else
{
HearingTextLeft = "Not Applicable";
}// END OF LEFT HEARING


        if (rdbRightADAdequate.Checked)
        {
            HearingTextRight = "Right Adequate";
        }
        else if(rdbRightADDefective.Checked)
        {
            HearingTextRight = "Right Defective";
        }
else
{
HearingTextRight = "Not Applicable";
}// END OF RIGHT HEARING



        if (rdbSatisfactoryHearingAdequate.Checked)
        {
            SatisfactoryHearingText = "Adequate";
        }
        else if(rdbSatisfactoryHearingDefective.Checked)
        {
            SatisfactoryHearingText = "Defective";
        }
else
{
SatisfactoryHearingText = "Not Applicable";
}// END OF SATISFACTORY HEARING

        if (rdbHearingMeetsSTCWCodeAdequate.Checked)
        {
            HearingStandardText = "Adequate";
        }
        else if(rdbHearingMeetsSTCWCodeDefective.Checked)
        {
            HearingStandardText = "Defective";
        }
else
{
HearingStandardText = "Not Applicable";
}// END OF HEARING STANDARD

        if (rdbVividnessAdequate.Checked)
        {
            VividnessText = "Adequate";
        }
        else if(rdbVividnessDefective.Checked)
        {
            VividnessText = "Defective";
        }
else
{
VividnessText = "Not Applicable";
}// END OF VIVIDNESS


        if (rdbItemsGlasses.Checked)
        {
            visualAidText = "Glasses";
        }
        else if (rdbItemsContactLenses.Checked)
        {
            visualAidText = "Contact Lenses";
        }
        else if (rdbItemsSpectacles.Checked)
        {
            visualAidText = "Spectacles";
        }
        else
        {
            visualAidText = "Not Applicable";
        }// END OF VISUAL AIDS ITEMS
        if(rdbVisualAcuityMeetsStandardYes.Checked)
        {
            visualAidStandard = "Yes";
        }
        else if(rdbVisualAcuityMeetsStandardNo.Checked)
        {
            visualAidStandard = "No";
        }
else
{
visualAidStandard = "Not Applicable";
}//END OF VISUAL AID STANDARD

        if(rdbFitForDutiesYes.Checked)
        {
            visualAidDuty = "Yes";
        }
        else if(rdbFitForDutiesNo.Checked)
        {
            visualAidDuty = "No";
        }
else
{
visualAidDuty = "Not Applicable";
}// END OF VISUAL AID DUTY

        if(rdbSatifactorySightYes.Checked)
        {
            visualAidSatisfactory = "Yes";
        }
        else if(rdbSatifactorySightNo.Checked)
        {
            visualAidSatisfactory = "No";
        }
        else
        {
            visualAidSatisfactory = "Not Applicable";
        }// END OF VISUAL AID SATISFACTORY
        if(rdbColorVisionStandardYes.Checked)
        {
            visualAidColorVision = "Yes";
        }
        else if(rdbColorVisionStandardNo.Checked)
        {
            visualAidColorVision = "No";
        }
        else
        {
            visualAidColorVision = "Not Applicable";
        }// END OF VISUAL AID COLOR VISION
        if(rdbSatisfacotryPyschologicalYes.Checked)
        {
            visualAidPsychology = "Yes";
        }
        else if(rdbSatisfacotryPyschologicalNo.Checked)
        {
            visualAidPsychology = "No";
        }
else
{
visualAidPsychology = "Not Applicable";
}// END OF VISUAL AID PSYCHOLOGY
        //Submit button
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlCommand insert = new SqlCommand(
               "INSERT INTO LabPhysicalExam(DatePerformed, PhysicalExamGeneralAppearance, PhysicalExamSkin, PhysicalExamHeadAndScalp, PhysicalExamEyes, PhysicalExamPupils, PhysicalExamEars, PhysicalExamNoseAndSinuses, PhysicalExamMouthThroat, PhysicalExamNeckThyroid, PhysicalExamChestBreastAxilla, PhysicalExamHeartCardiovascular, PhysicalExamLungsRespiratory," +
               "PhysicalExamAbdomen, PhysicalExamBackFlanks, PhysicalExamAnusRectum, PhysicalExamGenitoUrinarySystem, PhysicalExamInquinalsGenitals, PhysicalExamMusculoSkeletal, PhysicalExamExtremeties, PhysicalExamReflexes, PhysicalExamNeurologicalNervous, PhysicalExamENT, PhysicalExamFarVisionUncorrectedOS20," +
               "PhysicalExamFarVisionUncorrectedOD20, PhysicalExamFarVisionCorrectedOS20, PhysicalExamFarVisionCorrectedOD20, PhysicalExamNearVisionUncorrectedOSJ, PhysicalExamNearVisionUncorrectedODJ, PhysicalExamNearVisionCorrectedOSJ, PhysicalExamNearVisionCorrectedODJ, PhysicalExamIshiharaColor, PhysicalExamColorVision, PhysicalExamLeftAS, PhysicalExamRightAD, PhysicalExamSatisfactoryHearing, PhysicalExamHearingMettsStandardsSTCWCode," +
               "PhysicalExamVividness, PhysicalExamBodyBuilt, PhysicalExamItems, PhysicalExamVisualActivityStandard, PhysicalExamFitForLookoutDuties, PhysicalExamSatisfactorySight, PhysicalExamColorVisionStandard, PhysicalExamSatisfactoryPschologycalTest, Recommendations, ExamPhysician, MedicalDirector, PatientAccountNo, NurseMedTechAccountNo)" +
               "VALUES (@DatePerformed, @PhysicalExamGeneralAppearance, @PhysicalExamSkin, @PhysicalExamHeadAndScalp, @PhysicalExamEyes, @PhysicalExamPupils, @PhysicalExamEars, @PhysicalExamNoseAndSinuses, @PhysicalExamMouthThroat, @PhysicalExamNeckThyroid, @PhysicalExamChestBreastAxilla, @PhysicalExamHeartCardiovascular, @PhysicalExamLungsRespiratory," +
               "@PhysicalExamAbdomen, @PhysicalExamBackFlanks, @PhysicalExamAnusRectum, @PhysicalExamGenitoUrinarySystem, @PhysicalExamInquinalsGenitals, @PhysicalExamMusculoSkeletal, @PhysicalExamExtremeties, @PhysicalExamReflexes, @PhysicalExamNeurologicalNervous, @PhysicalExamENT, @PhysicalExamFarVisionUncorrectedOS20," +
               "@PhysicalExamFarVisionUncorrectedOD20, @PhysicalExamFarVisionCorrectedOS20, @PhysicalExamFarVisionCorrectedOD20, @PhysicalExamNearVisionUncorrectedOSJ, @PhysicalExamNearVisionUncorrectedODJ, @PhysicalExamNearVisionCorrectedOSJ, @PhysicalExamNearVisionCorrectedODJ, @PhysicalExamIshiharaColor, @PhysicalExamColorVision, @PhysicalExamLeftAS, @PhysicalExamRightAD, @PhysicalExamSatisfactoryHearing, @PhysicalExamHearingMettsStandardsSTCWCode," +
               "@PhysicalExamVividness, @PhysicalExamBodyBuilt, @PhysicalExamItems, @PhysicalExamVisualActivityStandard, @PhysicalExamFitForLookoutDuties, @PhysicalExamSatisfactorySight, @PhysicalExamColorVisionStandard, @PhysicalExamSatisfactoryPschologycalTest, @Recommendations, @ExamPhysician, @MedicalDirector, @PatientAccountNo, @NurseMedTechAccountNo);",
               cn);

            insert.Parameters.AddWithValue("@DatePerformed", Convert.ToDateTime(txtDatePerformed.Text));
            insert.Parameters.AddWithValue("@PhysicalExamGeneralAppearance",txtGenApp.Text);
            insert.Parameters.AddWithValue("@PhysicalExamSkin", txtSkin.Text);
            insert.Parameters.AddWithValue("@PhysicalExamHeadAndScalp", txtHeadNScalp.Text);
            insert.Parameters.AddWithValue("@PhysicalExamEyes", txtEyes.Text);
            insert.Parameters.AddWithValue("@PhysicalExamPupils", txtPupils.Text);
            insert.Parameters.AddWithValue("@PhysicalExamEars", txtEars.Text);
            insert.Parameters.AddWithValue("@PhysicalExamNoseAndSinuses", txtNoseSinus.Text);
            insert.Parameters.AddWithValue("@PhysicalExamMouthThroat", txtMouthThroat.Text);
            insert.Parameters.AddWithValue("@PhysicalExamNeckThyroid", txtNeckThy.Text);
            insert.Parameters.AddWithValue("@PhysicalExamChestBreastAxilla", txtChestBreast.Text);
            insert.Parameters.AddWithValue("@PhysicalExamHeartCardiovascular", txtHeartCardio.Text);
            insert.Parameters.AddWithValue("@PhysicalExamLungsRespiratory", txtLungsRes.Text);
            insert.Parameters.AddWithValue("@PhysicalExamAbdomen", txtAbdomen.Text);
            insert.Parameters.AddWithValue("@PhysicalExamBackFlanks", txtBackFlanks.Text);
            insert.Parameters.AddWithValue("@PhysicalExamAnusRectum", txtAnusRectum.Text);
            insert.Parameters.AddWithValue("@PhysicalExamGenitoUrinarySystem", txtGenitoUrinary.Text);
            insert.Parameters.AddWithValue("@PhysicalExamInquinalsGenitals", txtInquinals.Text);
            insert.Parameters.AddWithValue("@PhysicalExamMusculoSkeletal", txtMuscoloSkeletal.Text);
            insert.Parameters.AddWithValue("@PhysicalExamExtremeties", txtExtreme.Text);
            insert.Parameters.AddWithValue("@PhysicalExamReflexes", txtReflexes.Text);
            insert.Parameters.AddWithValue("@PhysicalExamNeurologicalNervous", txtNeurological.Text);
            insert.Parameters.AddWithValue("@PhysicalExamENT", txtENT.Text);
            insert.Parameters.AddWithValue("@PhysicalExamFarVisionUncorrectedOS20", txtFarOS20Uncorrect.Text);
            insert.Parameters.AddWithValue("@PhysicalExamFarVisionUncorrectedOD20", txtFarOD20Uncorrect.Text);
            insert.Parameters.AddWithValue("@PhysicalExamFarVisionCorrectedOS20", txtFarOS20Correct.Text);
            insert.Parameters.AddWithValue("@PhysicalExamFarVisionCorrectedOD20", txtFarOD20Correct.Text);
            insert.Parameters.AddWithValue("@PhysicalExamNearVisionUncorrectedOSJ", txtNearOSJUncorrect.Text);
            insert.Parameters.AddWithValue("@PhysicalExamNearVisionUncorrectedODJ", txtNearODJUncorrect.Text);
            insert.Parameters.AddWithValue("@PhysicalExamNearVisionCorrectedOSJ", txtNearOSJCorrect.Text);
            insert.Parameters.AddWithValue("@PhysicalExamNearVisionCorrectedODJ", txtNearODJCorrect.Text);
            insert.Parameters.AddWithValue("@PhysicalExamIshiharaColor", IshiharaColorText);
            insert.Parameters.AddWithValue("@PhysicalExamColorVision", ColorVisionText);
            insert.Parameters.AddWithValue("@PhysicalExamLeftAS", HearingTextLeft);
            insert.Parameters.AddWithValue("@PhysicalExamRightAD", HearingTextRight);
            insert.Parameters.AddWithValue("@PhysicalExamSatisfactoryHearing", SatisfactoryHearingText);
            insert.Parameters.AddWithValue("@PhysicalExamHearingMettsStandardsSTCWCode", HearingStandardText);
            insert.Parameters.AddWithValue("@PhysicalExamVividness", VividnessText);
            insert.Parameters.AddWithValue("@PhysicalExamBodyBuilt", txtBodyBuilt.Text);
            insert.Parameters.AddWithValue("@PhysicalExamItems", visualAidText);
            insert.Parameters.AddWithValue("@PhysicalExamVisualActivityStandard", visualAidStandard);
            insert.Parameters.AddWithValue("@PhysicalExamFitForLookoutDuties", visualAidDuty);
            insert.Parameters.AddWithValue("@PhysicalExamSatisfactorySight", visualAidSatisfactory);
            insert.Parameters.AddWithValue("@PhysicalExamColorVisionStandard", visualAidColorVision);
            insert.Parameters.AddWithValue("@PhysicalExamSatisfactoryPschologycalTest", visualAidPsychology);
            insert.Parameters.AddWithValue("@Recommendations", txtRecommendation.Text);
            insert.Parameters.AddWithValue("@ExamPhysician", txtExamPhysician.Text);
            insert.Parameters.AddWithValue("@MedicalDirector", txtMedicalDirector.Text);
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
if(txtRecommendation.Text == "")
{
txtRecommendation.BackColor = Color.Pink;
}
if(txtExamPhysician.Text == "")
{
txtExamPhysician.BackColor = Color.Pink;
}
if(txtMedicalDirector.Text == "")
{
txtMedicalDirector.BackColor = Color.Pink;
}
}

    }
    protected void btnRHClear_Click(object sender, EventArgs e)
    {

    }
    protected void btnRHCancel_Click(object sender, EventArgs e)
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










