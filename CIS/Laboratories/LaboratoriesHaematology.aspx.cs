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

public partial class CIS_Laboratories_LaboratoriesHaematology : System.Web.UI.Page
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
               "SELECT IDENT_CURRENT('LabHaematology')+1 AS id;", cn);

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
if(txtDatePerformed.Text != "" && txtHGB.Text != "" && txtHCT.Text != "" && txtRCT.Text != "" && txtWBC.Text != "" && txtPLT.Text != "" && txtSegmenters.Text != "" &&
txtStabs.Text != "" && txtLymphocytes.Text != "" &&
 txtEosinophils.Text != "" && txtMonocytes.Text != "" && txtBasophils.Text != "" && txtClottingTime.Text != "" && txtBleedingTime.Text != "" && txtESR.Text != "" && txtBlast.Text != "" && txtRHType.Text != "" && txtMixedCells.Text != "" && txtMixedHashTag.Text != "" && txtPTT.Text != "" && txtPT.Text != "" && txtControl.Text != "" && txtPercentActivity.Text != "" && txtINR.Text != "" && txtMCV.Text != "" && txtMCH.Text != "" && txtMCHC.Text != "" && txtRDW.Text != "" && txtMalarialSmear.Text != "" && txtNeutrophils.Text != "" && tbReqPhysician.Text != "" && tbPathologist.Text != "" )
{
        string BloodTypeTxt = String.Empty;

        if(ddBloodTypeHae.SelectedValue == "A")
        {
            BloodTypeTxt = "A";
        }
        else if(ddBloodTypeHae.SelectedValue == "B")
        {
            BloodTypeTxt = "B";
        }
        else if(ddBloodTypeHae.SelectedValue == "AB")
        {
            BloodTypeTxt = "AB";
        }
        else
        {
            BloodTypeTxt = "O";
        }

        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlCommand insert = new SqlCommand(
               "INSERT INTO LabHaematology(DatePerformed, BloodType, HGB, HCT, RCT, WBC, PLT, Segmenters, Stabs, Lymphocytes, Eosinophils, Monocytes, Basophils," +
               "ClottingTime, BleedingTime, ESR, Blast, RHType, MixedCells, MixedNo, PTT, PT, Control_, PercActivity, INR, MCV, MCH, MCHC," +
               "RDW, MalarialSmear, Neutrophils, ReqPhysician, Pathologist, PatientAccountNo, NurseMedTechAccountNo)" +
               "VALUES (@DatePerformed, @BloodType, @HGB, @HCT, @RCT, @WBC, @PLT, @Segmenters, @Stabs, @Lymphocytes, @Eosinophils, @Monocytes, @Basophils," +
               "@ClottingTime, @BleedingTime, @ESR, @Blast, @RHType, @MixedCells, @MixedNo, @PTT, @PT, @Control_, @PercActivity, @INR, @MCV, @MCH, @MCHC," +
               "@RDW, @MalarialSmear, @Neutrophils, @ReqPhysician, @Pathologist, @PatientAccountNo, @NurseMedTechAccountNo);",
               cn);

            insert.Parameters.AddWithValue("@DatePerformed", Convert.ToDateTime(txtDatePerformed.Text));
            insert.Parameters.AddWithValue("@BloodType", BloodTypeTxt);
            insert.Parameters.AddWithValue("@HGB", Convert.ToDecimal(txtHGB.Text));
            insert.Parameters.AddWithValue("@HCT", Convert.ToDecimal(txtHCT.Text));
            insert.Parameters.AddWithValue("@RCT", Convert.ToDecimal(txtRCT.Text));
            insert.Parameters.AddWithValue("@WBC", Convert.ToDecimal(txtWBC.Text));
            insert.Parameters.AddWithValue("@PLT", Convert.ToDecimal(txtPLT.Text));
            insert.Parameters.AddWithValue("@Segmenters", Convert.ToDecimal(txtSegmenters.Text));
            insert.Parameters.AddWithValue("@Stabs", Convert.ToDecimal(txtStabs.Text));
            insert.Parameters.AddWithValue("@Lymphocytes", Convert.ToDecimal(txtLymphocytes.Text));
            insert.Parameters.AddWithValue("@Eosinophils", Convert.ToDecimal(txtEosinophils.Text));
            insert.Parameters.AddWithValue("@Monocytes", Convert.ToDecimal(txtMonocytes.Text));
            insert.Parameters.AddWithValue("@Basophils", Convert.ToDecimal(txtBasophils.Text));
            insert.Parameters.AddWithValue("@ClottingTime", Convert.ToDecimal(txtClottingTime.Text));
            insert.Parameters.AddWithValue("@BleedingTime", Convert.ToDecimal(txtBleedingTime.Text));
            insert.Parameters.AddWithValue("@ESR", Convert.ToDecimal(txtESR.Text));
            insert.Parameters.AddWithValue("@Blast", Convert.ToDecimal(txtBlast.Text));
            insert.Parameters.AddWithValue("@RHType", Convert.ToDecimal(txtRHType.Text));
            insert.Parameters.AddWithValue("@MixedCells", Convert.ToDecimal(txtMixedCells.Text));
            insert.Parameters.AddWithValue("@MixedNo", Convert.ToDecimal(txtMixedHashTag.Text));
            insert.Parameters.AddWithValue("@PTT", Convert.ToDecimal(txtPTT.Text));
            insert.Parameters.AddWithValue("@PT", Convert.ToDecimal(txtPT.Text));
            insert.Parameters.AddWithValue("@Control_", Convert.ToDecimal(txtControl.Text));
            insert.Parameters.AddWithValue("@PercActivity", Convert.ToDecimal(txtPercentActivity.Text));
            insert.Parameters.AddWithValue("@INR", Convert.ToDecimal(txtINR.Text));
            insert.Parameters.AddWithValue("@MCV", Convert.ToDecimal(txtMCV.Text));
            insert.Parameters.AddWithValue("@MCH", Convert.ToDecimal(txtMCH.Text));
            insert.Parameters.AddWithValue("@MCHC", Convert.ToDecimal(txtMCHC.Text));
            insert.Parameters.AddWithValue("@RDW", Convert.ToDecimal(txtRDW.Text));
            insert.Parameters.AddWithValue("@MalarialSmear", Convert.ToDecimal(txtMalarialSmear.Text));
            insert.Parameters.AddWithValue("@Neutrophils", Convert.ToDecimal(txtNeutrophils.Text));
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
if(txtHGB.Text == "")
{
txtHGB.BackColor = Color.Pink;
}
if(txtHCT.Text == "")
{
txtHCT.BackColor = Color.Pink;
}
if(txtRCT.Text == "")
{
txtRCT.BackColor = Color.Pink;
}
if(txtWBC.Text == "")
{
txtWBC.BackColor = Color.Pink;
}
if(txtPLT.Text == "")
{
txtPLT.BackColor = Color.Pink;
}
if(txtSegmenters.Text == "")
{
txtSegmenters.BackColor = Color.Pink;
}
if(txtStabs.Text == "")
{
txtStabs.BackColor = Color.Pink;
}
if(txtLymphocytes.Text == "")
{
txtLymphocytes.BackColor = Color.Pink;
}
if(txtEosinophils.Text == "")
{
txtEosinophils.BackColor = Color.Pink;
}
if(txtMonocytes.Text == "")
{
txtMonocytes.BackColor = Color.Pink;
}
if(txtBasophils.Text == "")
{
txtBasophils.BackColor = Color.Pink;
}
if(txtClottingTime.Text == "")
{
txtClottingTime.BackColor = Color.Pink;
}
if(txtBleedingTime.Text == "")
{
txtBleedingTime.BackColor = Color.Pink;
}
if(txtESR.Text == "")
{
txtESR.BackColor = Color.Pink;
}
if(txtBlast.Text == "")
{
txtBlast.BackColor = Color.Pink;
}
if(txtRHType.Text == "")
{
txtRHType.BackColor = Color.Pink;
}
if(txtMixedCells.Text == "")
{
txtMixedCells.BackColor = Color.Pink;
}
if(txtMixedHashTag.Text == "")
{
txtMixedHashTag.BackColor = Color.Pink;
}
if(txtPTT.Text == "")
{
txtPTT.BackColor = Color.Pink;
}
if(txtPT.Text == "")
{
txtPT.BackColor = Color.Pink;
}
if(txtControl.Text == "")
{
txtControl.BackColor = Color.Pink;
}
if(txtPercentActivity.Text == "")
{
txtPercentActivity.BackColor = Color.Pink;
}
if(txtINR.Text == "")
{
txtINR.BackColor = Color.Pink;
}
if(txtMCV.Text == "")
{
txtMCV.BackColor = Color.Pink;
}
if(txtMCH.Text == "")
{
txtMCH.BackColor = Color.Pink;
}
if(txtMCHC.Text == "")
{
txtMCHC.BackColor = Color.Pink;
}
if(txtRDW.Text == "")
{
txtRDW.BackColor = Color.Pink;
}
if(txtMalarialSmear.Text == "")
{
txtMalarialSmear.BackColor = Color.Pink;
}
if(txtNeutrophils.Text == "")
{
txtNeutrophils.BackColor = Color.Pink;
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


