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

public partial class CIS_Laboratories_LaboratoriesFecalysis : System.Web.UI.Page
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
               "SELECT IDENT_CURRENT('LabFecalysis')+1 AS id;", cn);

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
if(txtDatePerformed.Text != "" && txtColorPhyical.Text != "" && txtConsistencyPhydical.Text != ""
&& txtOccultBloodChem.Text != "" && txtBilePigmenChem.Text != ""
&& txtRedBloodMicro.Text != "" && txtPussCellsMicro.Text != ""
&& txtLeukocytes.Text != "" && txtErythrocytes.Text != "" &&
txtFatGlobules.Text != "" && txtStarchGranules.Text != "" &&
txtBacteria.Text != "" && tbReqPhysician.Text != "" &&
tbPathologist.Text != "")
{
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlCommand insert = new SqlCommand(
               "INSERT INTO LabFecalysis(DatePerformed, PhysicalCharacteristicsColor, PhysicalCharacteristicsConsistency, ChemicalTestOccultBlood, ChemicalTestBilePigmen, MicroscopicFindingsRedBloodCells, MicroscopicFindingsPussCells," +
               "MicroscopicFindingsOthers, MicroscopicFindingsAscaris, MicroscopicFindingsTrichuris, MicroscopicFindingsHookworm, MicroscopicFindingsEntamoebaHystolityca," +
               "MicroscopicFindingsCysts, MicroscopicFindingsTrophoziotes, Remarks, Leukocytes, Erythrocytes, FatGlobules, StarchGranules, Bacteria, ReqPhysican, Pathologist, PatientAccountNo, NurseMedTechAccountNo)" +
               "VALUES (@DatePerformed, @PhysicalCharacteristicsColor, @PhysicalCharacteristicsConsistency, @ChemicalTestOccultBlood, @ChemicalTestBilePigmen, @MicroscopicFindingsRedBloodCells, @MicroscopicFindingsPussCells," +
               "@MicroscopicFindingsOthers, @MicroscopicFindingsAscaris, @MicroscopicFindingsTrichuris, @MicroscopicFindingsHookworm, @MicroscopicFindingsEntamoebaHystolityca," +
               "@MicroscopicFindingsCysts, @MicroscopicFindingsTrophoziotes, @Remarks, @Leukocytes, @Erythrocytes, @FatGlobules, @StarchGranules, @Bacteria, @ReqPhysican, @Pathologist, @PatientAccountNo, @NurseMedTechAccountNo);",
               cn);

            insert.Parameters.AddWithValue("@DatePerformed", Convert.ToDateTime(txtDatePerformed.Text));
            insert.Parameters.AddWithValue("@PhysicalCharacteristicsColor", txtColorPhyical.Text);
            insert.Parameters.AddWithValue("@PhysicalCharacteristicsConsistency", txtConsistencyPhydical.Text);
            insert.Parameters.AddWithValue("@ChemicalTestOccultBlood", txtOccultBloodChem.Text);
            insert.Parameters.AddWithValue("@ChemicalTestBilePigmen", txtBilePigmenChem.Text);
            insert.Parameters.AddWithValue("@MicroscopicFindingsRedBloodCells", txtRedBloodMicro.Text);
            insert.Parameters.AddWithValue("@MicroscopicFindingsPussCells", txtPussCellsMicro.Text);
            insert.Parameters.AddWithValue("@MicroscopicFindingsOthers", txtOthersMicro.Text);
            insert.Parameters.AddWithValue("@MicroscopicFindingsAscaris", txtAscaris.Text);
            insert.Parameters.AddWithValue("@MicroscopicFindingsTrichuris", txtTrichuris.Text);
            insert.Parameters.AddWithValue("@MicroscopicFindingsHookworm", txtHookworm.Text);
            insert.Parameters.AddWithValue("@MicroscopicFindingsEntamoebaHystolityca", txtEntamoeba.Text);
            insert.Parameters.AddWithValue("@MicroscopicFindingsCysts", txtCystsEH.Text);
            insert.Parameters.AddWithValue("@MicroscopicFindingsTrophoziotes", txtTrophoziotesEH.Text);
            insert.Parameters.AddWithValue("@Remarks", txtRemarksFeca.Text);
            insert.Parameters.AddWithValue("@Leukocytes", txtLeukocytes.Text);
            insert.Parameters.AddWithValue("@Erythrocytes", txtErythrocytes.Text);
            insert.Parameters.AddWithValue("@FatGlobules", txtFatGlobules.Text);
            insert.Parameters.AddWithValue("@StarchGranules", txtStarchGranules.Text);
            insert.Parameters.AddWithValue("@Bacteria", txtBacteria.Text);
            insert.Parameters.AddWithValue("@ReqPhysican", tbReqPhysician.Text);
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
if(txtColorPhyical.Text == "")
{
txtColorPhyical.BackColor = Color.Pink;
}
if(txtConsistencyPhydical.Text == "")
{
txtConsistencyPhydical.BackColor = Color.Pink;
}
if(txtOccultBloodChem.Text == "")
{
txtOccultBloodChem.BackColor = Color.Pink;
}
if(txtBilePigmenChem.Text == "")
{
txtBilePigmenChem.BackColor = Color.Pink;
}
if(txtRedBloodMicro.Text == "")
{
txtRedBloodMicro.BackColor = Color.Pink;
}
if(txtPussCellsMicro.Text == "")
{
txtPussCellsMicro.BackColor = Color.Pink;
}
if(txtLeukocytes.Text == "")
{
txtLeukocytes.BackColor = Color.Pink;
}
if(txtErythrocytes.Text == "")
{
txtErythrocytes.BackColor = Color.Pink;
}
if(txtFatGlobules.Text == "")
{
txtFatGlobules.BackColor = Color.Pink;
}
if(txtStarchGranules.Text == "")
{
txtStarchGranules.BackColor = Color.Pink;
}
if(txtBacteria.Text == "")
{
txtBacteria.BackColor = Color.Pink;
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


