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
using System.IO;

public partial class CIS_Laboratories_LaboratoriesXRay : System.Web.UI.Page
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
if(txtDatePerformed.Text != "" && txtPlateNumXRay.Text != "" && txtClinicalDiagXRay.Text != "" && txtCodeXRay.Text != "" && txtExaminationXRay.Text != "" && txtResultXRay.Text != "" && txtImpressionXRay.Text != "" && txtRemarksXRay.Text != "" && tbReqPhysician.Text != "" && tbRadiologist.Text != "")
{
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            byte[] buffer1 = new byte[fileImageUpload1XRay.FileContent.Length];
            Stream s1 = fileImageUpload1XRay.FileContent;
            s1.Read(buffer1, 0, buffer1.Length);

            byte[] buffer2 = new byte[fileImageUpload2XRay.FileContent.Length];
            Stream s2 = fileImageUpload2XRay.FileContent;
            s2.Read(buffer2, 0, buffer2.Length);

            byte[] buffer3 = new byte[fileImageUpload3XRay.FileContent.Length];
            Stream s3 = fileImageUpload3XRay.FileContent;
            s3.Read(buffer3, 0, buffer3.Length);

            SqlCommand insert = new SqlCommand(
               "INSERT INTO LabXray(DatePerformed, PlateNo, ClinicDiag, Code, Examination, ChestPA," +
               "Extremities, APLV, SpotView, LateralView, Others, Image1," +
               "Image2, Image3, Result, Impression, Remarks, ReqPhysician," +
               "Radiologist, PatientAccountNo, NurseMedTechAccountNo)" +
               "VALUES (@DatePerformed, @PlateNo, @ClinicDiag, @Code, @Examination, @ChestPA," +
               "@Extremities, @APLV, @SpotView, @LateralView, @Others, @Image1," +
               "@Image2, @Image3, @Result, @Impression, @Remarks, @ReqPhysician," +
               "@Radiologist, @PatientAccountNo, @NurseMedTechAccountNo);",
               cn);

            insert.Parameters.AddWithValue("@DatePerformed", Convert.ToDateTime(txtDatePerformed.Text));
            insert.Parameters.AddWithValue("@PlateNo", Convert.ToInt32(txtPlateNumXRay.Text));
            insert.Parameters.AddWithValue("@ClinicDiag", txtClinicalDiagXRay.Text);
            insert.Parameters.AddWithValue("@Code", Convert.ToInt32(txtCodeXRay.Text));
            insert.Parameters.AddWithValue("@Examination", txtExaminationXRay.Text);
            insert.Parameters.AddWithValue("@ChestPA", cbChestPAXRay.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@Extremities", cbExtremeXRay.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@APLV", cbAPLVXRay.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@SpotView", cbSpotViewXRay.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@LateralView", cbLateralViewXRay.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@Others", cbOthersXRay.Checked ? 1 : 0);
            insert.Parameters.AddWithValue("@Image1", buffer1);
            insert.Parameters.AddWithValue("@Image2", buffer2);
            insert.Parameters.AddWithValue("@Image3", buffer3);
            insert.Parameters.AddWithValue("@Result", txtResultXRay.Text);
            insert.Parameters.AddWithValue("@Impression", txtImpressionXRay.Text);
            insert.Parameters.AddWithValue("@Remarks", txtRemarksXRay.Text);
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
if(txtPlateNumXRay.Text == "")
{
txtPlateNumXRay.BackColor = Color.Pink;
}
if(txtClinicalDiagXRay.Text == "")
{
txtClinicalDiagXRay.BackColor = Color.Pink;
}
if(txtCodeXRay.Text == "")
{
txtCodeXRay.BackColor = Color.Pink;
}
if(txtExaminationXRay.Text == "")
{
txtExaminationXRay.BackColor = Color.Pink;
}
if(txtResultXRay.Text == "")
{
txtResultXRay.BackColor = Color.Pink;
}
if(txtImpressionXRay.Text == "")
{
txtImpressionXRay.BackColor = Color.Pink;
}
if(txtRemarksXRay.Text == "")
{
txtRemarksXRay.BackColor = Color.Pink;
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

