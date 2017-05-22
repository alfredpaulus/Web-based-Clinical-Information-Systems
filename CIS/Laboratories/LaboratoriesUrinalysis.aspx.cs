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

public partial class CIS_Laboratories_LaboratoriesUrinalysis : System.Web.UI.Page
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
               "SELECT IDENT_CURRENT('LabUrinalysis')+1 AS id;", cn);

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
if(txtDatePerformed.Text != "" && txtColorPhysicalUrinalysis.Text != "" && txtTransparencyPhysicalUrinalysis.Text != "" && txtReactionPhysicalUrinalysis.Text != "" && txtSpecificGravityPhysicalUrinalysis.Text != "" &&
txtPusCellsMicroUrinalysis.Text != "" && txtRBCMicroUrinalysis.Text != "" && txtEpithelialCellsMicroUrinalysis.Text != "" &&
txtMucusThreadsMicroUrinalysis.Text != "" &&
txtBacteriaMicroUrinalysis.Text != "" && 
txtYeastCellsMicroUrinalysis.Text != "" &&
txtAmorphousMicroUrinalysis.Text != "" && 
txtAmorphousUratesMicroUrinalysis.Text != "" &&
txtCalciumOxalatesMicroUrinalysis.Text != "" &&
txtTriplePhosphateMicroUrinalysis.Text != "" &&
txtUricAcidMicroUrinalysis.Text != "" &&
txtOthersMicroUrinalysis.Text != "" &&
txtProteinChemicalUrinalysis.Text != "" &&
txtSugarChemicalUrinalysis.Text != "" &&
txtKetoneChemicalUrinalysis.Text != "" &&
txtBloodChemicalUrinalysis.Text != "" &&
txtPusChemicalUrinalysis.Text != "" &&
txtRBCChemicalUrinalysis.Text != "" &&
txtNitritesChemicalUrinalysis.Text != "" &&
txtBilirubinChemicalUrinalysis.Text != "" &&
txtOthersChemicalUrinalysis.Text != "" &&
txtPregnancyTestOtherExamUrinalysis.Text != "" &&
txtSpecimentOtherExamUrinalysis.Text != "" &&
txtMethodOtherExamUrinalysis.Text != "" &&
txtRemarksOtherExamUrinalysis.Text != "" &&
tbReqPhysician.Text != "" &&
tbPathologist.Text != "")
{
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlCommand insert = new SqlCommand(
               "INSERT INTO LabUrinalysis(DatePerformed, PhysicalExaminationColor, PhysicalExaminationTransparency, PhysicalExaminationReaction, PhysicalExaminationSpecificGravity, MicroscopicExaminationPusCells," +
               "MicroscopicExaminationRBC, MicroscopicExaminationEpithelialCells, MicroscopicExaminationMucusThreads, MicroscopicExaminationBacteria, MicroscopicExaminationYeastCells, MicroscopicExaminationAmorphousUrates," +
               "MicroscopicExaminationAmorphous, MicroscopicExaminationCalciumOxalates, MicroscopicExaminationTriplePhosphate, MicroscopicExaminationUricAcid, MicroscopicExaminationOthers, ChemicalExaminationProtein," +
               "ChemicalExaminationSugar, ChemicalExaminationKetone, ChemicalExaminationBlood, ChemicalExaminationPus, ChemicalExaminationRBC," +
               "ChemicalExaminationNitrites, ChemicalExaminationBilirubin, ChemicalExaminationOthers, OtherExaminationPregnancyTest, OtherExaminationSpecimen," +
               "OtherExaminationMethod, OtherExaminationRemarks, ReqPhysician, Pathologist, PatientAccountNo, NurseMedTechAccountNo)" +
               "VALUES (@DatePerformed, @PhysicalExaminationColor, @PhysicalExaminationTransparency, @PhysicalExaminationReaction, @PhysicalExaminationSpecificGravity, @MicroscopicExaminationPusCells," +
               "@MicroscopicExaminationRBC, @MicroscopicExaminationEpithelialCells, @MicroscopicExaminationMucusThreads, @MicroscopicExaminationBacteria, @MicroscopicExaminationYeastCells, @MicroscopicExaminationAmorphousUrates," +
               "@MicroscopicExaminationAmorphous, @MicroscopicExaminationCalciumOxalates, @MicroscopicExaminationTriplePhosphate, @MicroscopicExaminationUricAcid, @MicroscopicExaminationOthers, @ChemicalExaminationProtein," +
               "@ChemicalExaminationSugar, @ChemicalExaminationKetone, @ChemicalExaminationBlood, @ChemicalExaminationPus, @ChemicalExaminationRBC," +
               "@ChemicalExaminationNitrites, @ChemicalExaminationBilirubin, @ChemicalExaminationOthers, @OtherExaminationPregnancyTest, @OtherExaminationSpecimen," +
               "@OtherExaminationMethod, @OtherExaminationRemarks, @ReqPhysician, @Pathologist, @PatientAccountNo, @NurseMedTechAccountNo);",
               cn);

            insert.Parameters.AddWithValue("@DatePerformed", Convert.ToDateTime(txtDatePerformed.Text));
            insert.Parameters.AddWithValue("@PhysicalExaminationColor", txtColorPhysicalUrinalysis.Text);
            insert.Parameters.AddWithValue("@PhysicalExaminationTransparency", txtTransparencyPhysicalUrinalysis.Text);
            insert.Parameters.AddWithValue("@PhysicalExaminationReaction", txtReactionPhysicalUrinalysis.Text);
            insert.Parameters.AddWithValue("@PhysicalExaminationSpecificGravity", txtSpecificGravityPhysicalUrinalysis.Text);
            insert.Parameters.AddWithValue("@MicroscopicExaminationPusCells", txtPusCellsMicroUrinalysis.Text);
            insert.Parameters.AddWithValue("@MicroscopicExaminationRBC", txtRBCMicroUrinalysis.Text);
            insert.Parameters.AddWithValue("@MicroscopicExaminationEpithelialCells", txtEpithelialCellsMicroUrinalysis.Text);
            insert.Parameters.AddWithValue("@MicroscopicExaminationMucusThreads", txtMucusThreadsMicroUrinalysis.Text);
            insert.Parameters.AddWithValue("@MicroscopicExaminationBacteria", txtBacteriaMicroUrinalysis.Text);
            insert.Parameters.AddWithValue("@MicroscopicExaminationYeastCells", txtYeastCellsMicroUrinalysis.Text);
            insert.Parameters.AddWithValue("@MicroscopicExaminationAmorphousUrates", txtAmorphousMicroUrinalysis.Text);
            insert.Parameters.AddWithValue("@MicroscopicExaminationAmorphous", txtAmorphousUratesMicroUrinalysis.Text);
            insert.Parameters.AddWithValue("@MicroscopicExaminationCalciumOxalates", txtCalciumOxalatesMicroUrinalysis.Text);
            insert.Parameters.AddWithValue("@MicroscopicExaminationTriplePhosphate", txtTriplePhosphateMicroUrinalysis.Text);
            insert.Parameters.AddWithValue("@MicroscopicExaminationUricAcid", txtUricAcidMicroUrinalysis.Text);
            insert.Parameters.AddWithValue("@MicroscopicExaminationOthers", txtOthersMicroUrinalysis.Text);
            insert.Parameters.AddWithValue("@ChemicalExaminationProtein", txtProteinChemicalUrinalysis.Text);
            insert.Parameters.AddWithValue("@ChemicalExaminationSugar", txtSugarChemicalUrinalysis.Text);
            insert.Parameters.AddWithValue("@ChemicalExaminationKetone", txtKetoneChemicalUrinalysis.Text);
            insert.Parameters.AddWithValue("@ChemicalExaminationBlood", txtBloodChemicalUrinalysis.Text);
            insert.Parameters.AddWithValue("@ChemicalExaminationPus", txtPusChemicalUrinalysis.Text);
            insert.Parameters.AddWithValue("@ChemicalExaminationRBC", txtRBCChemicalUrinalysis.Text);
            insert.Parameters.AddWithValue("@ChemicalExaminationNitrites", txtNitritesChemicalUrinalysis.Text);
            insert.Parameters.AddWithValue("@ChemicalExaminationBilirubin", txtBilirubinChemicalUrinalysis.Text);
            insert.Parameters.AddWithValue("@ChemicalExaminationOthers", txtOthersChemicalUrinalysis.Text);
            insert.Parameters.AddWithValue("@OtherExaminationPregnancyTest", txtPregnancyTestOtherExamUrinalysis.Text);
            insert.Parameters.AddWithValue("@OtherExaminationSpecimen", txtSpecimentOtherExamUrinalysis.Text);
            insert.Parameters.AddWithValue("@OtherExaminationMethod", txtMethodOtherExamUrinalysis.Text);
            insert.Parameters.AddWithValue("@OtherExaminationRemarks", txtRemarksOtherExamUrinalysis.Text);
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
if(txtColorPhysicalUrinalysis.Text == "")
{
txtColorPhysicalUrinalysis.BackColor = Color.Pink;
}
if(txtTransparencyPhysicalUrinalysis.Text == "")
{
txtTransparencyPhysicalUrinalysis.BackColor = Color.Pink;
}
if(txtReactionPhysicalUrinalysis.Text == "")
{
txtReactionPhysicalUrinalysis.BackColor = Color.Pink;
}
if(txtSpecificGravityPhysicalUrinalysis.Text == "")
{
txtSpecificGravityPhysicalUrinalysis.BackColor = Color.Pink;
}
if(txtPusCellsMicroUrinalysis.Text == "")
{
txtPusCellsMicroUrinalysis.BackColor = Color.Pink;
}
if(txtRBCMicroUrinalysis.Text == "")
{
txtRBCMicroUrinalysis.BackColor = Color.Pink;
}
if(txtEpithelialCellsMicroUrinalysis.Text == "")
{
txtEpithelialCellsMicroUrinalysis.BackColor = Color.Pink;
}
if(txtMucusThreadsMicroUrinalysis.Text == "")
{
txtMucusThreadsMicroUrinalysis.BackColor = Color.Pink;
}
if(txtBacteriaMicroUrinalysis.Text == "")
{
txtBacteriaMicroUrinalysis.BackColor = Color.Pink;
}
if(txtYeastCellsMicroUrinalysis.Text == "")
{
txtYeastCellsMicroUrinalysis.BackColor = Color.Pink;
}
if(txtAmorphousMicroUrinalysis.Text == "")
{
txtAmorphousMicroUrinalysis.BackColor = Color.Pink;
}
if(txtAmorphousUratesMicroUrinalysis.Text == "")
{
txtAmorphousUratesMicroUrinalysis.BackColor = Color.Pink;
}
if(txtCalciumOxalatesMicroUrinalysis.Text == "")
{
txtCalciumOxalatesMicroUrinalysis.BackColor = Color.Pink;
}
if(txtTriplePhosphateMicroUrinalysis.Text == "")
{
txtTriplePhosphateMicroUrinalysis.BackColor = Color.Pink;
}
if(txtUricAcidMicroUrinalysis.Text == "")
{
txtUricAcidMicroUrinalysis.BackColor = Color.Pink;
}
if(txtOthersMicroUrinalysis.Text == "")
{
txtOthersMicroUrinalysis.BackColor = Color.Pink;
}
if(txtProteinChemicalUrinalysis.Text == "")
{
txtProteinChemicalUrinalysis.BackColor = Color.Pink;
}
if(txtSugarChemicalUrinalysis.Text == "")
{
txtSugarChemicalUrinalysis.BackColor = Color.Pink;
}
if(txtKetoneChemicalUrinalysis.Text == "")
{
txtKetoneChemicalUrinalysis.BackColor = Color.Pink;
}
if(txtBloodChemicalUrinalysis.Text == "")
{
txtBloodChemicalUrinalysis.BackColor = Color.Pink;
}
if(txtPusChemicalUrinalysis.Text == "")
{
txtPusChemicalUrinalysis.BackColor = Color.Pink;
}
if(txtRBCChemicalUrinalysis.Text == "")
{
txtRBCChemicalUrinalysis.BackColor = Color.Pink;
}
if(txtNitritesChemicalUrinalysis.Text == "")
{
txtNitritesChemicalUrinalysis.BackColor = Color.Pink;
}
if(txtBilirubinChemicalUrinalysis.Text == "")
{
txtBilirubinChemicalUrinalysis.BackColor = Color.Pink;
}
if(txtOthersChemicalUrinalysis.Text == "")
{
txtOthersChemicalUrinalysis.BackColor = Color.Pink;
}
if(txtPregnancyTestOtherExamUrinalysis.Text == "")
{
txtPregnancyTestOtherExamUrinalysis.BackColor = Color.Pink;
}
if(txtSpecimentOtherExamUrinalysis.Text == "")
{
txtSpecimentOtherExamUrinalysis.BackColor = Color.Pink;
}
if(txtMethodOtherExamUrinalysis.Text == "")
{
txtMethodOtherExamUrinalysis.BackColor = Color.Pink;
}
if(txtRemarksOtherExamUrinalysis.Text == "")
{
txtRemarksOtherExamUrinalysis.BackColor = Color.Pink;
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
}



