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

public partial class CIS_Laboratories_LaboratoriesImmunology : System.Web.UI.Page
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
               "SELECT IDENT_CURRENT('LabImmunology')+1 AS id;", cn);

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
if(txtDatePerformed.Text != "" && txtHBsAGPatientCount.Text != "" && txtHBsAGCutOff.Text != "" && txtHBsAGRemarks.Text != "" && txtAntiHBSPatientCount.Text != "" &&
txtAntiHBSCutOff.Text != "" && txtAntiHBSRemarks.Text != "" && txtAntiHBCIgCPatientCount.Text != "" && txtAntiHBCIgCCutOff.Text != "" && txtAntiHBCIgCRemarks.Text != "" && txtAntiHBePersonCount.Text != "" && txtAntiHBeCutOff.Text != "" && txtAntiHBeRemarks.Text != "" && txtAntiHAVPersonCount.Text != "" && 
txtAntiHAVCutOff.Text != "" && txtAntiHAVRemarks.Text != "" && txtFindingsImmunology.Text != null && txtThyT3.Text != "" && txtThyT4.Text != "" && txtThyTSH.Text != "" && txtThyFT3.Text != "" && txtThyFT4.Text != "" && txtAFPResult.Text != "" && txtAFPNormal.Text != "" && txtCEAResult.Text != "" 
&& txtCEANormal.Text != "" && txtCA125Result.Text != "" && txtBHCGNormal.Text != "" && txtPSAResult.Text != "" && txtPSANormal.Text != "" && txtCA153Result.Text != "" && txtCA153Normal.Text != "" && txtCA199Normal.Text != "" && txtCA199Result.Text != "" && txtBHCGResult.Text != "" && txtBHCGNormal.Text != "" && txtCA724Result.Text != "" && txtCA724Normal.Text != "" && txtHIVExamDate.Text != "" && txtOtherTestHIV.Text != null && txtHIVProfCert.Text != "" && txtExpiryDateImmu.Text != "" && tbReqPhysician.Text != "" && tbPathologist.Text != "")
{
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlCommand insert = new SqlCommand(
               "INSERT INTO LabImmunology(DatePerformed, HepatitisHBsAGPatientCount, HepatitisHBsAGCutOffValue, HepatitisHBsAGRemarks, HepatitisAntiHBSPatientCount, HepatitisAntiHBSCutOffValue," +
               "HepatitisAntiHBSRemarks, HepatitisAntiHBCIgCPatientCount, HepatitisAntiHBCIgCCutOffValue, HepatitisAntiHBCIgCRemarks, HepatitisAntiHBePatientCount, HepatitisAntiHBeCutOffValue," +
               "HepatitisAntiHBeRemarks, HepatitisAntiHAVIgMPatientCount, HepatitisAntiHAVIgCutOffValue, HepatitisAntiHAVIgRemarks, Findings, ThyroidT3," +
               "ThyroidT4, ThyroidTSH, ThyroidFT3, ThyroidFT4, TumorAFPLiverResult, TumorAFPLiverNormalValues, TumorCEAColonResult, TumorCEAColonNormalValues, TumorCA125OvaryResult, TumorCA125OvaryNormalValues," +
               "TumorPSAResult, TumorPSANormalValues, TumorCA153BreastResult, TumorCA153BreastNormalValues, TumorCA199PancreasResult, TumorCA199PancreasNormalValues, TumorBHCGResult, TumorBHCGNormalValues, TumorCA724ColorectalResult, TumorCA724ColorectalNormalValues," +
               "HIVTestExamDate, OtherTestUsed, PhysicianLicenseNo, HIVProficiencyCertNoMedTech, ExpiryDate, ReqPhysician, Pathologist, PatientAccountNo, NurseMedTechAccountNo)" +
               "VALUES (@DatePerformed, @HepatitisHBsAGPatientCount, @HepatitisHBsAGCutOffValue, @HepatitisHBsAGRemarks, @HepatitisAntiHBSPatientCount, @HepatitisAntiHBSCutOffValue," +
               "@HepatitisAntiHBSRemarks, @HepatitisAntiHBCIgCPatientCount, @HepatitisAntiHBCIgCCutOffValue, @HepatitisAntiHBCIgCRemarks, @HepatitisAntiHBePatientCount, @HepatitisAntiHBeCutOffValue," +
               "@HepatitisAntiHBeRemarks, @HepatitisAntiHAVIgMPatientCount, @HepatitisAntiHAVIgCutOffValue, @HepatitisAntiHAVIgRemarks, @Findings, @ThyroidT3," +
               "@ThyroidT4, @ThyroidTSH, @ThyroidFT3, @ThyroidFT4, @TumorAFPLiverResult, @TumorAFPLiverNormalValues, @TumorCEAColonResult, @TumorCEAColonNormalValues, @TumorCA125OvaryResult, @TumorCA125OvaryNormalValues," +
               "@TumorPSAResult, @TumorPSANormalValues, @TumorCA153BreastResult, @TumorCA153BreastNormalValues, @TumorCA199PancreasResult, @TumorCA199PancreasNormalValues, @TumorBHCGResult, @TumorBHCGNormalValues, @TumorCA724ColorectalResult, @TumorCA724ColorectalNormalValues," +
               "@HIVTestExamDate, @OtherTestUsed, @PhysicianLicenseNo, @HIVProficiencyCertNoMedTech, @ExpiryDate, @ReqPhysician, @Pathologist, @PatientAccountNo, @NurseMedTechAccountNo);",
               cn);

            insert.Parameters.AddWithValue("@DatePerformed", Convert.ToDateTime(txtDatePerformed.Text));
            insert.Parameters.AddWithValue("@HepatitisHBsAGPatientCount", Convert.ToDecimal(txtHBsAGPatientCount.Text));
            insert.Parameters.AddWithValue("@HepatitisHBsAGCutOffValue", Convert.ToDecimal(txtHBsAGCutOff.Text));
            insert.Parameters.AddWithValue("@HepatitisHBsAGRemarks", txtHBsAGRemarks.Text); 
            insert.Parameters.AddWithValue("@HepatitisAntiHBSPatientCount", Convert.ToDecimal(txtAntiHBSPatientCount.Text));
            insert.Parameters.AddWithValue("@HepatitisAntiHBSCutOffValue", Convert.ToDecimal(txtAntiHBSCutOff.Text));
            insert.Parameters.AddWithValue("@HepatitisAntiHBSRemarks", txtAntiHBSRemarks.Text);
            insert.Parameters.AddWithValue("@HepatitisAntiHBCIgCPatientCount", Convert.ToDecimal(txtAntiHBCIgCPatientCount.Text));
            insert.Parameters.AddWithValue("@HepatitisAntiHBCIgCCutOffValue", Convert.ToDecimal(txtAntiHBCIgCCutOff.Text));
            insert.Parameters.AddWithValue("@HepatitisAntiHBCIgCRemarks", txtAntiHBCIgCRemarks.Text);
            insert.Parameters.AddWithValue("@HepatitisAntiHBePatientCount", Convert.ToDecimal(txtAntiHBePersonCount.Text));
            insert.Parameters.AddWithValue("@HepatitisAntiHBeCutOffValue", Convert.ToDecimal(txtAntiHBeCutOff.Text)); 
            insert.Parameters.AddWithValue("@HepatitisAntiHBeRemarks", txtAntiHBeRemarks.Text);
            insert.Parameters.AddWithValue("@HepatitisAntiHAVIgMPatientCount", Convert.ToDecimal(txtAntiHAVPersonCount.Text));
            insert.Parameters.AddWithValue("@HepatitisAntiHAVIgCutOffValue", Convert.ToDecimal(txtAntiHAVCutOff.Text));
            insert.Parameters.AddWithValue("@HepatitisAntiHAVIgRemarks", txtAntiHAVRemarks.Text);
            insert.Parameters.AddWithValue("@Findings", txtFindingsImmunology.Text);
            insert.Parameters.AddWithValue("@ThyroidT3", Convert.ToDecimal(txtThyT3.Text));
            insert.Parameters.AddWithValue("@ThyroidT4", Convert.ToDecimal(txtThyT4.Text));
            insert.Parameters.AddWithValue("@ThyroidTSH", Convert.ToDecimal(txtThyTSH.Text));
            insert.Parameters.AddWithValue("@ThyroidFT3", Convert.ToDecimal(txtThyFT3.Text));
            insert.Parameters.AddWithValue("@ThyroidFT4", Convert.ToDecimal(txtThyFT4.Text));
            insert.Parameters.AddWithValue("@TumorAFPLiverResult", Convert.ToDecimal(txtAFPResult.Text));
            insert.Parameters.AddWithValue("@TumorAFPLiverNormalValues", Convert.ToDecimal(txtAFPNormal.Text));
            insert.Parameters.AddWithValue("@TumorCEAColonResult", Convert.ToDecimal(txtCEAResult.Text));
            insert.Parameters.AddWithValue("@TumorCEAColonNormalValues", Convert.ToDecimal(txtCEANormal.Text));
            insert.Parameters.AddWithValue("@TumorCA125OvaryResult", Convert.ToDecimal(txtCA125Result.Text));
            insert.Parameters.AddWithValue("@TumorCA125OvaryNormalValues", Convert.ToDecimal(txtCA125Normal.Text));
            insert.Parameters.AddWithValue("@TumorPSAResult", Convert.ToDecimal(txtPSAResult.Text));
            insert.Parameters.AddWithValue("@TumorPSANormalValues", Convert.ToDecimal(txtPSANormal.Text));
            insert.Parameters.AddWithValue("@TumorCA153BreastResult", Convert.ToDecimal(txtCA153Result.Text));
            insert.Parameters.AddWithValue("@TumorCA153BreastNormalValues", Convert.ToDecimal(txtCA153Normal.Text));
            insert.Parameters.AddWithValue("@TumorCA199PancreasResult", Convert.ToDecimal(txtCA199Result.Text));
            insert.Parameters.AddWithValue("@TumorCA199PancreasNormalValues", Convert.ToDecimal(txtCA199Normal.Text));
            insert.Parameters.AddWithValue("@TumorBHCGResult", Convert.ToDecimal(txtBHCGResult.Text));
            insert.Parameters.AddWithValue("@TumorBHCGNormalValues", Convert.ToDecimal(txtBHCGNormal.Text));
            insert.Parameters.AddWithValue("@TumorCA724ColorectalResult", Convert.ToDecimal(txtCA724Result.Text));
            insert.Parameters.AddWithValue("@TumorCA724ColorectalNormalValues", Convert.ToDecimal(txtCA724Normal.Text));
            insert.Parameters.AddWithValue("@HIVTestExamDate", Convert.ToDateTime(txtHIVExamDate.Text));
            insert.Parameters.AddWithValue("@OtherTestUsed", txtOtherTestHIV.Text);
            insert.Parameters.AddWithValue("@PhysicianLicenseNo", Convert.ToInt32(txtPhysicianLicenseHIV.Text));
            insert.Parameters.AddWithValue("@HIVProficiencyCertNoMedTech", Convert.ToDecimal(txtHIVProfCert.Text));
            insert.Parameters.AddWithValue("@ExpiryDate", Convert.ToDateTime(txtExpiryDateImmu.Text));
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
if(txtHBsAGPatientCount.Text == "")
{
txtHBsAGPatientCount.BackColor = Color.Pink;
}
if(txtHBsAGCutOff.Text == "")
{
txtHBsAGCutOff.BackColor = Color.Pink;
}
if(txtHBsAGRemarks.Text == "")
{
txtHBsAGRemarks.BackColor = Color.Pink;
}
if(txtAntiHBSPatientCount.Text == "")
{
txtAntiHBSPatientCount.BackColor = Color.Pink;
}
if(txtAntiHBSCutOff.Text == "")
{
txtAntiHBSCutOff.BackColor = Color.Pink;
}
if(txtAntiHBSRemarks.Text == "")
{
txtAntiHBSRemarks.BackColor = Color.Pink;
}
if(txtAntiHBCIgCPatientCount.Text == "")
{
txtAntiHBCIgCPatientCount.BackColor = Color.Pink;
}
if(txtAntiHBCIgCCutOff.Text == "")
{
txtAntiHBCIgCCutOff.BackColor = Color.Pink;
}
if(txtAntiHBCIgCRemarks.Text == "")
{
txtAntiHBCIgCRemarks.BackColor = Color.Pink;
}
if(txtAntiHBePersonCount.Text == "")
{
txtAntiHBePersonCount.BackColor = Color.Pink;
}
if(txtAntiHBeCutOff.Text == "")
{
txtAntiHBeCutOff.BackColor = Color.Pink;
}
if(txtAntiHBeRemarks.Text == "")
{
txtAntiHBeRemarks.BackColor = Color.Pink;
}
if(txtAntiHAVPersonCount.Text == "")
{
txtAntiHAVPersonCount.BackColor = Color.Pink;
}
if(txtAntiHAVCutOff.Text == "")
{
txtAntiHAVCutOff.BackColor = Color.Pink;
}
if(txtAntiHAVRemarks.Text == "")
{
txtAntiHAVRemarks.BackColor = Color.Pink;
}
if(txtFindingsImmunology.Text == "")
{
txtFindingsImmunology.BackColor = Color.Pink;
}
if(txtThyT3.Text == "")
{
txtThyT3.BackColor = Color.Pink;
}
if(txtThyT4.Text == "")
{
txtThyT4.BackColor = Color.Pink;
}
if(txtThyTSH.Text == "")
{
txtThyTSH.BackColor = Color.Pink;
}
if(txtThyFT3.Text == "")
{
txtThyFT3.BackColor = Color.Pink;
}
if(txtThyFT4.Text == "")
{
txtThyFT4.BackColor = Color.Pink;
}
if(txtAFPResult.Text == "")
{
txtAFPResult.BackColor = Color.Pink;
}
if(txtAFPNormal.Text == "")
{
txtAFPNormal.BackColor = Color.Pink;
}
if(txtCEAResult.Text == "")
{
txtCEAResult.BackColor = Color.Pink;
}
if(txtCEANormal.Text == "")
{
txtCEANormal.BackColor = Color.Pink;
}
if(txtCA125Result.Text == "")
{
txtCA125Result.BackColor = Color.Pink;
}
if(txtCA125Normal.Text == "")
{
txtCA125Normal.BackColor = Color.Pink;
}
if(txtBHCGNormal.Text == "")
{
txtBHCGNormal.BackColor = Color.Pink;
}
if(txtPSAResult.Text == "")
{
txtPSAResult.BackColor = Color.Pink;
}
if(txtPSANormal.Text == "")
{
txtPSANormal.BackColor = Color.Pink;
}
if(txtCA153Result.Text == "")
{
txtCA153Result.BackColor = Color.Pink;
}
if(txtCA153Normal.Text == "")
{
txtCA153Normal.BackColor = Color.Pink;
}
if(txtCA199Result.Text == "")
{
txtCA199Result.BackColor = Color.Pink;
}
if(txtCA199Normal.Text == "")
{
txtCA199Normal.BackColor = Color.Pink;
}
if(txtBHCGResult.Text == "")
{
txtBHCGResult.BackColor = Color.Pink;
}
if(txtBHCGNormal.Text == "")
{
txtBHCGNormal.BackColor = Color.Pink;
}
if(txtCA724Result.Text == "")
{
txtCA724Result.BackColor = Color.Pink;
}
if(txtCA724Normal.Text == "")
{
txtCA724Normal.BackColor = Color.Pink;
}
if(txtHIVExamDate.Text == "")
{
txtHIVExamDate.BackColor = Color.Pink;
}
if(txtOtherTestHIV.Text == "")
{
txtOtherTestHIV.BackColor = Color.Pink;
}
if(txtHIVProfCert.Text == "")
{
txtHIVProfCert.BackColor = Color.Pink;
}
if(txtExpiryDateImmu.Text == "")
{
txtExpiryDateImmu.BackColor = Color.Pink;
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





