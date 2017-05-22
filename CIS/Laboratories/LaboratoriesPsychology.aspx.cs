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

public partial class CIS_Laboratories_Psychology : System.Web.UI.Page
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
               "SELECT IDENT_CURRENT('LabPsychology')+1 AS id;", cn);

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
if(tbPsychologist.Text != "" && txtDatePerformed.Text != "")
{
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlCommand insert = new SqlCommand(
               "INSERT INTO LabPsychology(DatePerformed, Others, IntellectualLevel, Persevering, SelfDisciplined, Enthusiastic," +
               "Venturesome, Obedience, CanWithstandIsolationAndBoredome, CanWithstandExtremeNoise, FacesReality, Confidence," +
               "TolerantToStress, Relaxed, Realistic, FreeOfJealousy, Adaptable, PracticalMinded," +
               "Assertive, Independent, Resourceful, GoalOriented, Psychologist, PatientAccountNo)" +
               "VALUES (@DatePerformed, @Others, @IntellectualLevel, @Persevering, @SelfDisciplined, @Enthusiastic," +
               "@Venturesome, @Obedience, @CanWithstandIsolationAndBoredome, @CanWithstandExtremeNoise, @FacesReality, @Confidence," +
               "@TolerantToStress, @Relaxed, @Realistic, @FreeOfJealousy, @Adaptable, @PracticalMinded," +
               "@Assertive, @Independent, @Resourceful, @GoalOriented, @Psychologist, @PatientAccountNo);",
               cn);

            insert.Parameters.AddWithValue("@DatePerformed", Convert.ToDateTime(txtDatePerformed.Text));
            insert.Parameters.AddWithValue("@Others", txtOthersPyschology.Text);
            insert.Parameters.AddWithValue("@IntellectualLevel", txtIntellectualLevelPsychology.Text);
            insert.Parameters.AddWithValue("@Persevering", Convert.ToInt32(ddPerseveringResult.SelectedValue));
            insert.Parameters.AddWithValue("@SelfDisciplined", Convert.ToInt32(ddSelfDisciplinedResult.SelectedValue));
            insert.Parameters.AddWithValue("@Enthusiastic", Convert.ToInt32(ddEnthusiasticResult.SelectedValue));
            insert.Parameters.AddWithValue("@Venturesome", Convert.ToInt32(ddVenturesomeResult.SelectedValue));
            insert.Parameters.AddWithValue("@Obedience", Convert.ToInt32(ddObedienceResult.SelectedValue));
            insert.Parameters.AddWithValue("@CanWithstandIsolationAndBoredome", Convert.ToInt32(ddIsolationBoredomResult.SelectedValue));
            insert.Parameters.AddWithValue("@CanWithstandExtremeNoise", Convert.ToInt32(ddExtremeNoiseVibrationTempResult.SelectedValue));
            insert.Parameters.AddWithValue("@FacesReality", Convert.ToInt32(ddFacesRealityResult.SelectedValue));
            insert.Parameters.AddWithValue("@Confidence", Convert.ToInt32(ddConfidenceResult.SelectedValue));
            insert.Parameters.AddWithValue("@TolerantToStress", Convert.ToInt32(ddTolerantStressResult.SelectedValue));
            insert.Parameters.AddWithValue("@Relaxed", Convert.ToInt32(ddRelaxedResult.SelectedValue));
            insert.Parameters.AddWithValue("@Realistic", Convert.ToInt32(ddRealisticResult.SelectedValue));
            insert.Parameters.AddWithValue("@FreeOfJealousy", Convert.ToInt32(ddFacesRealityResult.SelectedValue));
            insert.Parameters.AddWithValue("@Adaptable", Convert.ToInt32(ddAdaptableResult.SelectedValue));
            insert.Parameters.AddWithValue("@PracticalMinded", Convert.ToInt32(ddPracticalMindedResult.SelectedValue));
            insert.Parameters.AddWithValue("@Assertive", Convert.ToInt32(ddAssertiveResult.SelectedValue));
            insert.Parameters.AddWithValue("@Independent", Convert.ToInt32(ddIndependentResult.SelectedValue));
            insert.Parameters.AddWithValue("@Resourceful", Convert.ToInt32(ddResourcefulResult.SelectedValue));
            insert.Parameters.AddWithValue("@GoalOriented", Convert.ToInt32(ddGoalOrientedResult.SelectedValue));
            insert.Parameters.AddWithValue("@Psychologist", tbPsychologist.Text);
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
if(tbPsychologist.Text == "")
{
tbPsychologist.BackColor = Color.Pink;
}
if(txtDatePerformed.Text == "")
{
txtDatePerformed.BackColor = Color.Pink;
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



