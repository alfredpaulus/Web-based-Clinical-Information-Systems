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

public partial class CIS_Laboratories_LaboratoriesCTScan : System.Web.UI.Page
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
               "SELECT IDENT_CURRENT('LabCTScan')+1 AS id;", cn);

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
if(txtDatePerformed.Text != "" && txtPlateNum.Text != "" && txtClinicalDiag.Text != "" &&
txtCodeCT.Text != "" && txtFindingsCTScan.Text != "" &&
txtImpressionsCTScan.Text != "" && tbReqPhysician.Text != ""
&& tbRadiologist.Text != "")
{
       
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlCommand insert = new SqlCommand(
               "INSERT INTO LabCTScan(DatePerformed, PlateNo, ClinicalDiag, Code, Findings, Impression, Remarks, ReqPhysician," +
               "Radiologist, PatientAccountNo, NurseMedTechAccountNo)" +
               "VALUES (@DatePerformed, @PlateNo, @ClinicalDiag, @Code, @Findings, @Impression, @Remarks, @ReqPhysician," +
               "@Radiologist, @PatientAccountNo, @NurseMedTechAccountNo);",
               cn);

            insert.Parameters.AddWithValue("@DatePerformed", Convert.ToDateTime(txtDatePerformed.Text));
            insert.Parameters.AddWithValue("@PlateNo", Convert.ToInt32(txtPlateNum.Text));
            insert.Parameters.AddWithValue("@ClinicalDiag", Convert.ToInt32(txtClinicalDiag.Text));
            insert.Parameters.AddWithValue("@Code", Convert.ToInt32(txtCodeCT.Text));
            insert.Parameters.AddWithValue("@Findings", txtFindingsCTScan.Text);
            insert.Parameters.AddWithValue("@Impression", txtImpressionsCTScan.Text);
            insert.Parameters.AddWithValue("@Remarks", txtRemarksCTScan.Text);
            insert.Parameters.AddWithValue("@ReqPhysician", tbReqPhysician.Text);
            insert.Parameters.AddWithValue("@Radiologist", tbRadiologist.Text);
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
if(txtPlateNum.Text == "")
{
txtPlateNum.BackColor = Color.Pink;
}
if(txtClinicalDiag.Text == "")
{
txtClinicalDiag.BackColor = Color.Pink;
}
if(txtCodeCT.Text == "")
{
txtCodeCT.BackColor = Color.Pink;
}
if(txtFindingsCTScan.Text == "")
{
txtFindingsCTScan.BackColor = Color.Pink;
}
if(txtImpressionsCTScan.Text == "")
{
txtImpressionsCTScan.BackColor = Color.Pink;
}
if(tbReqPhysician.Text == "")
{
tbReqPhysician.BackColor = Color.Pink;
}
if(tbRadiologist.Text == "")
{
tbRadiologist.BackColor = Color.Pink;
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




