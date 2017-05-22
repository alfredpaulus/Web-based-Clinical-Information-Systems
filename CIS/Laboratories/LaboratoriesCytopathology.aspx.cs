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

public partial class CIS_Laboratories_LaboratoriesCytopathology : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        cbScantCellularitySA.Enabled = false;
        cbPoorFixationSA.Enabled = false;
        cbObscuringInflaSA.Enabled = false;
        cbObscuringBloodSA.Enabled = false;
        cbExcessiveCyto.Enabled = false;

        cbLowGradeECA.Enabled = false;
        cbHPVECA.Enabled = false;
        cbMildDysplasiaECA.Enabled = false;
        cbHighGradeECA.Enabled = false;
        cbModerateDysECA.Enabled = false;
        cbModerateSeverDysECA.Enabled = false;
        cbCarcinomaECA.Enabled = false;
        
        cbOutOfPhaseECA.Enabled = false;
        cbPostmenpausedECA.Enabled = false;
        cbNoMensECA.Enabled = false;
        


        cbCervicalSpecimenHE.Enabled = false;
        cbInflammationHE.Enabled = false;
        cbInsufficientPatientHE.Enabled = false;



        if (Session["LaboratoryPatientID"] == null)
        {
            Response.Redirect("~/CIS/Laboratories/LaboratoriesHome.aspx");
        }

        lblPatientId.Text = Session["LaboratoryPatientID"].ToString();
        lblDateOfBirth.Text = Session["LaboratoryPatientDoB"].ToString();
        lblPatientName.Text = Session["LaboratoryPatientName"].ToString();
        lblAge.Text = Session["LaboratoryPatientAge"].ToString();
        lblGender.Text = Session["LaboratoryPatientGender"].ToString();
         DateTime getCurrentDateTime = DateTime.Now;
        txtDatePerformed.Text = getCurrentDateTime.ToString();


        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlDataAdapter dataAdapter = new SqlDataAdapter(
               "SELECT IDENT_CURRENT('LabCytopathology')+1 AS id;", cn);

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
if(txtDatePerformed.Text != "" && tbReqPhysician.Text != "" && tbPathologist.Text != "")
{
        
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlCommand insert = new SqlCommand(
               "INSERT INTO LabCytopathology (DatePerformed, SpecimenAdequacySatisfactory, SpecimenAdequacyLessThanOptimal, SpecimenAdequacyUnsatisfactory, SpecimenAdequacyUnsatisfactoryScantCellularity," +
               "SpecimenAdequacyUnsatisfactoryPoorFixation, SpecimenAdequacyUnsatisfactoryObscuringInflammation, SpecimenAdequacyUnsatisfactoryObscuringBlood, SpecimenAdequacyUnsatisfactoryExcessiveCytosis," +
               "GeneralCategorizationWithinNormalLimits, GeneralCategorizationBenignCellularChange, GeneralCategorizationFurtherActionRecommended, DescriptiveDiagnosisInfectionFungiConsistent," +
               "DescriptiveDiagnosisInfectionTrichomonasVaginalis, DescriptiveDiagnosisInfectionOther, DescriptiveDiagnosisReactiveInflammation, DescriptiveDiagnosisReactiveEffectsOfIUD," +
               "DescriptiveDiagnosisReactiveRadiationEffect, DescriptiveDiagnosisReactiveChemotheraphyEffect, DescriptiveDiagnosisReactiveSquamousMetaplasis, EpithelialCellAbnormalitiesSquamousAtypia," +
               "EpithelialCellAbnormalitiesSquamousIntraepithelial, EpithelialCellAbnormalitiesSquamousIntraepithelialLowGrade, EpithelialCellAbnormalitiesSquamousIntraepithelialLowGradeHPV, EpithelialCellAbnormalitiesSquamousIntraepithelialLowGradeMildDysplasia," +
               "EpithelialCellAbnormalitiesSquamousIntraepithelialHighGrade, EpithelialCellAbnormalitiesSquamousIntraepithelialHighGradeModerateDysplasia, EpithelialCellAbnormalitiesSquamousIntraepithelialHighGradeSevereDysplasia, EpithelialCellAbnormalitiesSquamousIntraepithelialHighGradeCarcinomaInCitu," +
               "EpithelialCellAbnormalitiesEndometrialCellsPresent, EpithelialCellAbnormalitiesEndometrialCellsPresentOutOfPhase, EpithelialCellAbnormalitiesEndometrialCellsPresentInPostmenopaused, EpithelialCellAbnormalitiesEndometrialCellsPresentNoMenstrualHistory," +
               "EpithelialCellAbnormalitiesSquamousIntraepithelialAtypicalGlanduralCellsUndetermined, EpithelialCellAbnormalitiesSquamousIntraepithelialAdenocarcinoma, NonEpithelialMalignantNeoplasm, HormonalEvaluationCompatible, HormonalEvaluationIncompatible, HormonalEvaluationEvaluationNoPossible," +
               "HormonalEvaluationEvaluationNoPossibleCervicalSpecimen, HormonalEvaluationEvaluationNoPossibleInflammation, HormonalEvaluationEvaluationNoPossibleInsufficientHistory, HormonalEvaluationOther, ReqPhysician, Pathologist, PatientAccountNo, NurseMedTechAccountNo)" +
               "VALUES (@DatePerformed, @SpecimenAdequacySatisfactory, @SpecimenAdequacyLessThanOptimal, @SpecimenAdequacyUnsatisfactory, @SpecimenAdequacyUnsatisfactoryScantCellularity," +
               "@SpecimenAdequacyUnsatisfactoryPoorFixation, @SpecimenAdequacyUnsatisfactoryObscuringInflammation, @SpecimenAdequacyUnsatisfactoryObscuringBlood, @SpecimenAdequacyUnsatisfactoryExcessiveCytosis," +
               "@GeneralCategorizationWithinNormalLimits, @GeneralCategorizationBenignCellularChange, @GeneralCategorizationFurtherActionRecommended, @DescriptiveDiagnosisInfectionFungiConsistent," +
               "@DescriptiveDiagnosisInfectionTrichomonasVaginalis, @DescriptiveDiagnosisInfectionOther, @DescriptiveDiagnosisReactiveInflammation, @DescriptiveDiagnosisReactiveEffectsOfIUD," +
               "@DescriptiveDiagnosisReactiveRadiationEffect, @DescriptiveDiagnosisReactiveChemotheraphyEffect, @DescriptiveDiagnosisReactiveSquamousMetaplasis, @EpithelialCellAbnormalitiesSquamousAtypia," +
               "@EpithelialCellAbnormalitiesSquamousIntraepithelial, @EpithelialCellAbnormalitiesSquamousIntraepithelialLowGrade, @EpithelialCellAbnormalitiesSquamousIntraepithelialLowGradeHPV, @EpithelialCellAbnormalitiesSquamousIntraepithelialLowGradeMildDysplasia," +
               "@EpithelialCellAbnormalitiesSquamousIntraepithelialHighGrade, @EpithelialCellAbnormalitiesSquamousIntraepithelialHighGradeModerateDysplasia, @EpithelialCellAbnormalitiesSquamousIntraepithelialHighGradeSevereDysplasia, @EpithelialCellAbnormalitiesSquamousIntraepithelialHighGradeCarcinomaInCitu," +
               "@EpithelialCellAbnormalitiesEndometrialCellsPresent, @EpithelialCellAbnormalitiesEndometrialCellsPresentOutOfPhase, @EpithelialCellAbnormalitiesEndometrialCellsPresentInPostmenopaused, @EpithelialCellAbnormalitiesEndometrialCellsPresentNoMenstrualHistory," +
               "@EpithelialCellAbnormalitiesSquamousIntraepithelialAtypicalGlanduralCellsUndetermined, @EpithelialCellAbnormalitiesSquamousIntraepithelialAdenocarcinoma, @NonEpithelialMalignantNeoplasm, @HormonalEvaluationCompatible, @HormonalEvaluationIncompatible, @HormonalEvaluationEvaluationNoPossible," +
               "@HormonalEvaluationEvaluationNoPossibleCervicalSpecimen, @HormonalEvaluationEvaluationNoPossibleInflammation, @HormonalEvaluationEvaluationNoPossibleInsufficientHistory, @HormonalEvaluationOther, @ReqPhysician, @Pathologist, @PatientAccountNo, @NurseMedTechAccountNo);",
               cn);

            insert.Parameters.AddWithValue("@DatePerformed", Convert.ToDateTime(txtDatePerformed.Text));
            insert.Parameters.AddWithValue("@SpecimenAdequacySatisfactory", cbSatisfactorySA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@SpecimenAdequacyLessThanOptimal", cbLessThanOptimalSA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@SpecimenAdequacyUnsatisfactory", cbUnsatisfacotrySA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@SpecimenAdequacyUnsatisfactoryScantCellularity", cbScantCellularitySA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@SpecimenAdequacyUnsatisfactoryPoorFixation", cbPoorFixationSA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@SpecimenAdequacyUnsatisfactoryObscuringInflammation", cbObscuringInflaSA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@SpecimenAdequacyUnsatisfactoryObscuringBlood", cbObscuringBloodSA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@SpecimenAdequacyUnsatisfactoryExcessiveCytosis", cbExcessiveCyto.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@GeneralCategorizationWithinNormalLimits", cbWithinNormalLimitsGC.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@GeneralCategorizationBenignCellularChange", cbBenignCellularGC.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@GeneralCategorizationFurtherActionRecommended", cbFurtherActionRecGC.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@DescriptiveDiagnosisInfectionFungiConsistent", cbFungiInfection.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@DescriptiveDiagnosisInfectionTrichomonasVaginalis", cbTrichomonasInfection.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@DescriptiveDiagnosisInfectionOther", txtOthersCytopathology.Text);
            insert.Parameters.AddWithValue("@DescriptiveDiagnosisReactiveInflammation", cbInflammationReactive.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@DescriptiveDiagnosisReactiveEffectsOfIUD", cbEffectsIUDReactive.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@DescriptiveDiagnosisReactiveRadiationEffect", cbRadiationReactive.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@DescriptiveDiagnosisReactiveChemotheraphyEffect", cbChemoReactive.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@DescriptiveDiagnosisReactiveSquamousMetaplasis", cbSquamousReactive.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@EpithelialCellAbnormalitiesSquamousAtypia", cbSquamousAtypiaECA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@EpithelialCellAbnormalitiesSquamousIntraepithelial", cbIntraEpithelialECA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@EpithelialCellAbnormalitiesSquamousIntraepithelialLowGrade", cbLowGradeECA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@EpithelialCellAbnormalitiesSquamousIntraepithelialLowGradeHPV", cbHPVECA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@EpithelialCellAbnormalitiesSquamousIntraepithelialLowGradeMildDysplasia", cbMildDysplasiaECA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@EpithelialCellAbnormalitiesSquamousIntraepithelialHighGrade", cbHighGradeECA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@EpithelialCellAbnormalitiesSquamousIntraepithelialHighGradeModerateDysplasia", cbModerateDysECA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@EpithelialCellAbnormalitiesSquamousIntraepithelialHighGradeSevereDysplasia", cbModerateSeverDysECA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@EpithelialCellAbnormalitiesSquamousIntraepithelialHighGradeCarcinomaInCitu", cbCarcinomaECA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@EpithelialCellAbnormalitiesEndometrialCellsPresent", cbEndometrialECA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@EpithelialCellAbnormalitiesEndometrialCellsPresentOutOfPhase", cbOutOfPhaseECA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@EpithelialCellAbnormalitiesEndometrialCellsPresentInPostmenopaused", cbPostmenpausedECA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@EpithelialCellAbnormalitiesEndometrialCellsPresentNoMenstrualHistory", cbNoMensECA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@EpithelialCellAbnormalitiesSquamousIntraepithelialAtypicalGlanduralCellsUndetermined", cbAtypicalGlanduralECA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@EpithelialCellAbnormalitiesSquamousIntraepithelialAdenocarcinoma", cbADENOCARCINOMAECA.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@NonEpithelialMalignantNeoplasm", txtNonEpithelialMalignantECA.Text);
            insert.Parameters.AddWithValue("@HormonalEvaluationCompatible", cbEvaluationHE.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@HormonalEvaluationIncompatible", cbIncompatibleHE.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@HormonalEvaluationEvaluationNoPossible", cbEvaluationHE.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@HormonalEvaluationEvaluationNoPossibleCervicalSpecimen", cbCervicalSpecimenHE.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@HormonalEvaluationEvaluationNoPossibleInflammation", cbInflammationHE.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@HormonalEvaluationEvaluationNoPossibleInsufficientHistory", cbInsufficientPatientHE.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@HormonalEvaluationOther", txtOthersHE.Text);
            insert.Parameters.AddWithValue("@ReqPhysician", tbReqPhysician.Text);
            insert.Parameters.AddWithValue("@Pathologist", tbPathologist.Text);
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
if(tbReqPhysician.Text == "")
{
tbReqPhysician.BackColor = Color.Pink;
}
if(tbPathologist.Text == "")
{
tbPathologist.BackColor = Color.Pink;
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
    protected void cbUnsatisfacotrySA_CheckedChanged(object sender, EventArgs e)
    {
        if (cbUnsatisfacotrySA.Checked == true)
        {
            cbScantCellularitySA.Enabled = true;
            cbPoorFixationSA.Enabled = true;
            cbObscuringInflaSA.Enabled = true;
            cbObscuringBloodSA.Enabled = true;
            cbExcessiveCyto.Enabled = true;
        }
        if(cbUnsatisfacotrySA.Checked == false)
        {
            cbScantCellularitySA.Enabled = false;
            cbPoorFixationSA.Enabled = false;
            cbObscuringInflaSA.Enabled = false;
            cbObscuringBloodSA.Enabled = false;
            cbExcessiveCyto.Enabled = false;
        }

    }
    protected void cbIntraEpithelialECA_CheckedChanged(object sender, EventArgs e)
    {
        if (cbIntraEpithelialECA.Checked == true)
        {
            cbLowGradeECA.Enabled = true;
            cbHighGradeECA.Enabled = true;
        }
        if (cbIntraEpithelialECA.Checked == false)
        {
            cbLowGradeECA.Enabled = false;
            cbHighGradeECA.Enabled = false;
        }
    }
    protected void cbLowGradeECA_CheckedChanged(object sender, EventArgs e)
    {
        if (cbLowGradeECA.Checked== true)
        {
            cbHPVECA.Enabled = true;
            cbMildDysplasiaECA.Enabled = true;
        }
        if (cbLowGradeECA.Checked == false)
        {
            cbHPVECA.Enabled = false;
            cbMildDysplasiaECA.Enabled = false;
        }
    }
    protected void cbHighGradeECA_CheckedChanged(object sender, EventArgs e)
    {
        if (cbHighGradeECA.Checked == true)
        {
            cbModerateDysECA.Enabled = true;
            cbModerateSeverDysECA.Enabled = true;
            cbCarcinomaECA.Enabled = true;
        }
        if (cbHighGradeECA.Checked == false)
        {
            cbModerateDysECA.Enabled = false;
            cbModerateSeverDysECA.Enabled = false;
            cbCarcinomaECA.Enabled = false;
        }
    }
    protected void cbEndometrialECA_CheckedChanged(object sender, EventArgs e)
    {
        if (cbEndometrialECA.Checked == true)
        {
            cbOutOfPhaseECA.Enabled = true;
            cbPostmenpausedECA.Enabled = true;
            cbNoMensECA.Enabled = true;
        }
        if (cbEndometrialECA.Checked == false)
        {
            cbOutOfPhaseECA.Enabled = false;
            cbPostmenpausedECA.Enabled = false;
            cbNoMensECA.Enabled = false;
        }
    }
}









