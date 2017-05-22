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

public partial class CIS_MedicalRecord_MedicalRecordVitalSigns : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LaboratoryPatientID"] == null)
        {
            Response.Redirect("~/CIS/Laboratories/LaboratoriesHome.aspx");
        }
        
        lblPatientID.Text = Session["LaboratoryPatientID"].ToString();
        lblPatientDOB.Text = Session["LaboratoryPatientDoB"].ToString();
        lblPatientName.Text = Session["LaboratoryPatientName"].ToString();
        lblPatientAge.Text = Session["LaboratoryPatientAge"].ToString();
        lblDateTimeNow.Text = Session["LaboratoryDateTime"].ToString();

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
if (tbPulseRate.Text != ""&& tbHeight.Text != ""&& tbRespiratoryRate.Text != ""&& tbWeight.Text != ""&& tbTemperature.Text != ""&& tbBloodPressure.Text != "")
        {
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlCommand insert = new SqlCommand(
               "INSERT INTO VitalSigns(VitalSignsDateTime, PatientAccountNo, NurseMedTechAccountNo, PulseRate, RespiratoryRate, " +
               "TemperatureDegC, HeightCm, WeightKg, BloodPressuremmHg)" +
               "VALUES (@VTDateTime, @VTPatientAccountNo, @VTNurseMedTechAccountNo, @VTPulseRate, @VTRespiratoryRate, " +
               "@VTTemperatureDegC, @VTHeightCm, @VTWeightKg, @VTBloodPressuremmHg);",
               cn);

            insert.Parameters.AddWithValue("@VTDateTime", Convert.ToDateTime(lblDateTimeNow.Text));
            insert.Parameters.AddWithValue("@VTPatientAccountNo", Convert.ToInt32(Session["LaboratoryPatientID"]));
            insert.Parameters.AddWithValue("@VTNurseMedTechAccountNo", Convert.ToInt32(Session["LoggedInAccntNo"]));
            insert.Parameters.AddWithValue("@VTPulseRate", Convert.ToDecimal(tbPulseRate.Text));
            insert.Parameters.AddWithValue("@VTRespiratoryRate", Convert.ToDecimal(tbRespiratoryRate.Text));
            insert.Parameters.AddWithValue("@VTTemperatureDegC", Convert.ToDecimal(tbTemperature.Text));
            insert.Parameters.AddWithValue("@VTHeightCm", Convert.ToDecimal(tbHeight.Text));
            insert.Parameters.AddWithValue("@VTWeightKg", Convert.ToDecimal(tbWeight.Text));
            insert.Parameters.AddWithValue("@VTBloodPressuremmHg", tbBloodPressure.Text);

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
else{
Page.ClientScript.RegisterStartupScript(this.GetType(),"Notice","alert('Some required field/s missing!');",true);
if(tbPulseRate.Text == "")
{
tbPulseRate.BackColor = Color.Pink;   
}
if(tbHeight.Text == "")
{
tbHeight.BackColor = Color.Pink;
}
if(tbRespiratoryRate.Text == "")
{
tbRespiratoryRate.BackColor = Color.Pink;
}
if(tbWeight.Text == "")
{
tbWeight.BackColor = Color.Pink;
}
if(tbTemperature.Text == "")
{
tbTemperature.BackColor = Color.Pink;
}
if(tbBloodPressure.Text == "")
{
tbBloodPressure.BackColor = Color.Pink;
}
}
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        tbBloodPressure.Text = tbHeight.Text = tbPulseRate.Text = tbRespiratoryRate.Text =
        tbTemperature.Text = tbWeight.Text = String.Empty;
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Session["LaboratoryPatientID"] = null;
        Session["LaboratoryPatientDoB"] = null;
        Session["LaboratoryPatientName"] = null;
        Session["LaboratoryPatientAge"] = null;
        Session["LaboratoryDateTime"] = null;
        
        Response.Redirect("~/CIS/Laboratories/LaboratoriesHome.aspx");
    }
}








