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

public partial class CIS_Laboratories_LaboratoriesBloodChemistry : System.Web.UI.Page
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
         DateTime getCurrentDateTime = DateTime.Now;
        txtDatePerformed.Text = getCurrentDateTime.ToString();


        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlDataAdapter dataAdapter = new SqlDataAdapter(
               "SELECT IDENT_CURRENT('LabBloodChemistry')+1 AS id;", cn);

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
if(txtDatePerformed.Text != "" && txtFbs.Text != "" && txtBun.Text != "" && txtCreatine.Text != ""
&& txtBua.Text != "" && txtCholestarol.Text != "" && txtTriglycerides.Text != "" && txtHdl.Text != "" && txtLdl.Text != ""
&& txtVldl.Text != "" && txtSgot.Text != "" && txtSgpt.Text != ""
&& txtAlkaline.Text != "" && txtBilirubin.Text != "" && 
txtDirectBiliburin.Text != "" && txtIndirectBilirubin.Text != ""
&& txtAlbumim.Text != "" && txtGlobulin.Text != "" && 
txtAgRatio.Text != "" && txtSodium.Text != "" && 
txtPotassium.Text != "" && txtChloride.Text != "" && 
txtCalcium.Text != "" && txtHbA.Text != "" && 
txtRandomBloodSugar.Text != "" && txtLipase.Text != "" 
&& txtGgtp.Text != "" && txtCpkMB.Text != "" && txtCo2.Text != ""
&& txt2hrPpbs.Text != "" && txtOgct.Text != "" && txtLdh.Text != ""
&& txtCpkTotal.Text != "" && txtMagnesium.Text != "" &&
txtPhosporous.Text != "" && txtAmylase.Text != "" &&
txtIron.Text != "" && txtFbsOGTT.Text != "" && txt1hrOGGT.Text != ""
&& txt2hrOGGT.Text != "" && txt3hrOGGT.Text != "" &&
tbReqPhysician.Text != "" && tbPathologist.Text != "" && txtFructosamine.Text != "" && 
txtAcidPhos.Text != "")
{
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlCommand insert = new SqlCommand(
               "INSERT INTO LabBloodChemistry(DatePerformed, FBS, BUN, Creatine, BUA, Cholesterol, Triglycerides, HDL, LDL, VLDL, SGOT, SGPT, AlkalainePhosphatase," +
               "TotalBilirubin, DirectBilirubin, IndirectBilirubin, Albumim, Globulin, AGRatio, Sodium, Potassium, Chloride, Calcium, HbA1C," +
               "RandomBloodSugar, AcidPhosphatase, Lipase, GGTP, CPKMB, CO2, Fructosamine, PPBS2hr, OGCT, LDH, CPKTotal, Magnesium, Phosporous," +
               "Amylase, Iron, OGTTFBS, OGTT1hr, OGTT2hr, OGTT3hr, Others, ReqPhysician, Pathologist, PatientAccountNo, NurseMedTechAccountNo)" +
               "VALUES (@DatePerformed, @FBS, @BUN, @Creatine, @BUA, @Cholesterol, @Triglycerides, @HDL, @LDL, @VLDL, @SGOT, @SGPT, @AlkalainePhosphatase," +
               "@TotalBilirubin, @DirectBilirubin, @IndirectBilirubin, @Albumim, @Globulin, @AGRatio, @Sodium, @Potassium, @Chloride, @Calcium, @HbA1C," +
               "@RandomBloodSugar, @AcidPhosphatase, @Lipase, @GGTP, @CPKMB, @CO2, @Fructosamine, @PPBS2hr, @OGCT, @LDH, @CPKTotal, @Magnesium, @Phosporous," +
               "@Amylase, @Iron, @OGTTFBS, @OGTT1hr, @OGTT2hr, @OGTT3hr, @Others, @ReqPhysician, @Pathologist, @PatientAccountNo, @NurseMedTechAccountNo);",
               cn);

            insert.Parameters.AddWithValue("@DatePerformed", Convert.ToDateTime(txtDatePerformed.Text));
            insert.Parameters.AddWithValue("@FBS", Convert.ToDecimal(txtFbs.Text));
            insert.Parameters.AddWithValue("@BUN", Convert.ToDecimal(txtBun.Text));
            insert.Parameters.AddWithValue("@Creatine", Convert.ToDecimal(txtCreatine.Text));
            insert.Parameters.AddWithValue("@BUA", Convert.ToDecimal(txtBua.Text));
            insert.Parameters.AddWithValue("@Cholesterol", Convert.ToDecimal(txtCholestarol.Text));
            insert.Parameters.AddWithValue("@Triglycerides", Convert.ToDecimal(txtTriglycerides.Text));
            insert.Parameters.AddWithValue("@HDL", Convert.ToDecimal(txtHdl.Text));
            insert.Parameters.AddWithValue("@LDL", Convert.ToDecimal(txtLdl.Text));
            insert.Parameters.AddWithValue("@VLDL", Convert.ToDecimal(txtVldl.Text));
            insert.Parameters.AddWithValue("@SGOT", Convert.ToDecimal(txtSgot.Text));
            insert.Parameters.AddWithValue("@SGPT", Convert.ToDecimal(txtSgpt.Text));
            insert.Parameters.AddWithValue("@AlkalainePhosphatase", Convert.ToDecimal(txtAlkaline.Text));
            insert.Parameters.AddWithValue("@TotalBilirubin", Convert.ToDecimal(txtBilirubin.Text));
            insert.Parameters.AddWithValue("@DirectBilirubin", Convert.ToDecimal(txtDirectBiliburin.Text));
            insert.Parameters.AddWithValue("@IndirectBilirubin", Convert.ToDecimal(txtIndirectBilirubin.Text));
            insert.Parameters.AddWithValue("@Albumim", Convert.ToDecimal(txtAlbumim.Text));
            insert.Parameters.AddWithValue("@Globulin", Convert.ToDecimal(txtGlobulin.Text));
            insert.Parameters.AddWithValue("@AGRatio", Convert.ToDecimal(txtAgRatio.Text));
            insert.Parameters.AddWithValue("@Sodium", Convert.ToDecimal(txtSodium.Text));
            insert.Parameters.AddWithValue("@Potassium", Convert.ToDecimal(txtPotassium.Text));
            insert.Parameters.AddWithValue("@Chloride", Convert.ToDecimal(txtChloride.Text));
            insert.Parameters.AddWithValue("@Calcium", Convert.ToDecimal(txtCalcium.Text));
            insert.Parameters.AddWithValue("@HbA1C", Convert.ToDecimal(txtHbA.Text));
            insert.Parameters.AddWithValue("@RandomBloodSugar", Convert.ToDecimal(txtRandomBloodSugar.Text));
            insert.Parameters.AddWithValue("@AcidPhosphatase", Convert.ToDecimal(txtAcidPhos.Text));
            insert.Parameters.AddWithValue("@Lipase", Convert.ToDecimal(txtLipase.Text));
            insert.Parameters.AddWithValue("@GGTP", Convert.ToDecimal(txtGgtp.Text));
            insert.Parameters.AddWithValue("@CPKMB", Convert.ToDecimal(txtCpkMB.Text));
            insert.Parameters.AddWithValue("@CO2", Convert.ToDecimal(txtCo2.Text));
            insert.Parameters.AddWithValue("@Fructosamine", Convert.ToDecimal(txtFructosamine.Text));
            insert.Parameters.AddWithValue("@PPBS2hr", Convert.ToDecimal(txt2hrPpbs.Text));
            insert.Parameters.AddWithValue("@OGCT", Convert.ToDecimal(txtOgct.Text));
            insert.Parameters.AddWithValue("@LDH", Convert.ToDecimal(txtLdh.Text));
            insert.Parameters.AddWithValue("@CPKTotal", Convert.ToDecimal(txtCpkTotal.Text));
            insert.Parameters.AddWithValue("@Magnesium", Convert.ToDecimal(txtMagnesium.Text));
            insert.Parameters.AddWithValue("@Phosporous", Convert.ToDecimal(txtPhosporous.Text));
            insert.Parameters.AddWithValue("@Amylase", Convert.ToDecimal(txtAmylase.Text));
            insert.Parameters.AddWithValue("@Iron", Convert.ToDecimal(txtIron.Text));
            insert.Parameters.AddWithValue("@OGTTFBS", Convert.ToDecimal(txtFbsOGTT.Text));
            insert.Parameters.AddWithValue("@OGTT1hr", Convert.ToDecimal(txt1hrOGGT.Text));
            insert.Parameters.AddWithValue("@OGTT2hr", Convert.ToDecimal(txt2hrOGGT.Text));
            insert.Parameters.AddWithValue("@OGTT3hr", Convert.ToDecimal(txt3hrOGGT.Text));
            insert.Parameters.AddWithValue("@Others", txtOthersOGGT.Text);
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
if(txtFbs.Text == "")
{
txtFbs.BackColor = Color.Pink;
}
if(txtBun.Text == "")
{
txtBun.BackColor = Color.Pink;
}
if(txtCreatine.Text == "")
{
txtCreatine.BackColor = Color.Pink;
}
if(txtBua.Text == "")
{
txtBua.BackColor = Color.Pink;
}
if(txtCholestarol.Text == "")
{
txtCholestarol.BackColor = Color.Pink;
}
if(txtTriglycerides.Text == "")
{
txtTriglycerides.BackColor = Color.Pink;
}
if(txtHdl.Text == "")
{
txtHdl.BackColor = Color.Pink;
}
if(txtLdl.Text == "")
{
txtLdl.BackColor = Color.Pink;
}
if(txtVldl.Text == "")
{
txtVldl.BackColor = Color.Pink;
}
if(txtSgot.Text == "")
{
txtSgot.BackColor = Color.Pink;
}
if(txtSgpt.Text == "")
{
txtSgpt.BackColor = Color.Pink;
}
if(txtAlkaline.Text == "")
{
txtAlkaline.BackColor = Color.Pink;
}
if(txtBilirubin.Text == "")
{
txtBilirubin.BackColor = Color.Pink;
}
if(txtDirectBiliburin.Text == "")
{
txtDirectBiliburin.BackColor = Color.Pink;
}
if(txtIndirectBilirubin.Text == "")
{
txtIndirectBilirubin.BackColor = Color.Pink;
}
if(txtAlbumim.Text == "")
{
txtAlbumim.BackColor = Color.Pink;
}
if(txtGlobulin.Text == "")
{
txtGlobulin.BackColor = Color.Pink;
}
if(txtAgRatio.Text == "")
{
txtAgRatio.BackColor = Color.Pink;
}
if(txtSodium.Text == "")
{
txtSodium.BackColor = Color.Pink;
}
if(txtPotassium.Text == "")
{
txtPotassium.BackColor = Color.Pink;
}
if(txtChloride.Text == "")
{
txtChloride.BackColor = Color.Pink;
}
if(txtCalcium.Text == "")
{
txtCalcium.BackColor = Color.Pink;
}
if(txtHbA.Text == "")
{
txtHbA.BackColor = Color.Pink;
}
if(txtRandomBloodSugar.Text == "")
{
txtRandomBloodSugar.BackColor = Color.Pink;
}
if(txtAcidPhos.Text == "")
{
txtAcidPhos.BackColor = Color.Pink;
}
if(txtLipase.Text == "")
{
txtLipase.BackColor = Color.Pink;
}
if(txtGgtp.Text == "")
{
txtGgtp.BackColor = Color.Pink;
}
if(txtCpkMB.Text == "")
{
txtCpkMB.BackColor = Color.Pink;
}
if(txtCo2.Text == "")
{
txtCo2.BackColor  = Color.Pink;
}
if(txtFructosamine.Text == "")
{
txtFructosamine.BackColor = Color.Pink;
}
if(txt2hrPpbs.Text == "")
{
txt2hrPpbs.BackColor = Color.Pink;
}
if(txtOgct.Text == "")
{
txtOgct.BackColor = Color.Pink;
}
if(txtLdh.Text == "")
{
txtLdh.BackColor = Color.Pink;
}
if(txtCpkTotal.Text == "")
{
txtCpkTotal.BackColor = Color.Pink;
}
if(txtMagnesium.Text == "")
{
txtMagnesium.BackColor = Color.Pink;
}
if(txtPhosporous.Text == "")
{
txtPhosporous.BackColor = Color.Pink;
}
if(txtAmylase.Text == "")
{
txtAmylase.BackColor = Color.Pink;
}
if(txtIron.Text == "")
{
txtIron.BackColor = Color.Pink;
}
if(txtFbsOGTT.Text == "")
{
txtFbsOGTT.BackColor = Color.Pink;
}
if(txt1hrOGGT.Text == "")
{
txt1hrOGGT.BackColor = Color.Pink;
}
if(txt2hrOGGT.Text == "")
{
txt2hrOGGT.BackColor = Color.Pink;
}
if(txt3hrOGGT.Text == "")
{
txt3hrOGGT.BackColor = Color.Pink;
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







