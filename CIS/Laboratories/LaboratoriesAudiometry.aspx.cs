using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CIS_Laboratories_LaboratoriesAudiology : System.Web.UI.Page
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
               "SELECT IDENT_CURRENT('LabAudiometry')+1 AS id;", cn);

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
if(txtDatePerformed.Text !="" && txtRight250.Text != ""&& txtRight500.Text != ""
&& txtRight750.Text != ""&& txtRight1k.Text != ""
&& txtRight1500.Text != ""&& txtRight2k.Text != ""
&& txtRight3k.Text != "" && txtRight4k.Text != ""
&& txtRight6k.Text != ""&& txtRight8k.Text != ""
&& txtLeft250.Text != "" && txtLeft500.Text != ""
&& txtLeft750.Text != ""&& txtLeft1k.Text != ""
&& txtLeft1500.Text != ""&& txtLeft2k.Text != ""
&& txtLeft3k.Text != "" && txtLeft4k.Text != ""
&& txtLeft6k.Text != ""&& txtLeft8k.Text != ""
&& tbReqPhysician.Text != ""&& tbAudiologist.Text != "")
{
            string hearingfindings = String.Empty;

            if (rdbWithFindings.Checked)
            {
                hearingfindings = "With Findings";
            }
            else
            {
                hearingfindings = "Normal";
            }


            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
            {
                SqlCommand insert = new SqlCommand(
                   "INSERT INTO LabAudiometry(DatePerformed, AirRightEar250Hz, AirRightEar500Hz, AirRightEar750Hz, AirRightEar1000Hz, AirRightEar1500Hz," +
                   "AirRightEar2000Hz, AirRightEar3000Hz, AirRightEar4000Hz, AirRightEar6000Hz, AirRightEar8000Hz, AirLeftEar250Hz, AirLeftEar500Hz," +
                   "AirLeftEar750Hz, AirLeftEar1000Hz, AirLeftEar1500Hz, AirLeftEar2000Hz, AirLeftEar3000Hz, AirLeftEar4000Hz, AirLeftEar6000Hz," +
                   "AirLeftEar8000Hz, Hearing, Remarks, RequestDoctor, Audiologist, PatientAccountNo, NurseMedTechAccountNo)" +
                   "VALUES (@DatePerformed, @AirRightEar250Hz, @AirRightEar500Hz, @AirRightEar750Hz, @AirRightEar1000Hz, @AirRightEar1500Hz," +
                   "@AirRightEar2000Hz, @AirRightEar3000Hz, @AirRightEar4000Hz, @AirRightEar6000Hz, @AirRightEar8000Hz, @AirLeftEar250Hz, @AirLeftEar500Hz," +
                   "@AirLeftEar750Hz, @AirLeftEar1000Hz, @AirLeftEar1500Hz, @AirLeftEar2000Hz, @AirLeftEar3000Hz, @AirLeftEar4000Hz, @AirLeftEar6000Hz," +
                   "@AirLeftEar8000Hz, @Hearing, @Remarks, @RequestDoctor, @Audiologist, @PatientAccountNo, @NurseMedTechAccountNo); ",
                   cn);

                insert.Parameters.AddWithValue("@DatePerformed", Convert.ToDateTime(txtDatePerformed.Text));
                insert.Parameters.AddWithValue("@AirRightEar250Hz", Convert.ToInt32(txtRight250.Text));
                insert.Parameters.AddWithValue("@AirRightEar500Hz", Convert.ToInt32(txtRight500.Text));
                insert.Parameters.AddWithValue("@AirRightEar750Hz", Convert.ToInt32(txtRight750.Text));
                insert.Parameters.AddWithValue("@AirRightEar1000Hz", Convert.ToInt32(txtRight1k.Text));
                insert.Parameters.AddWithValue("@AirRightEar1500Hz", Convert.ToInt32(txtRight1500.Text));
                insert.Parameters.AddWithValue("@AirRightEar2000Hz", Convert.ToInt32(txtRight2k.Text));
                insert.Parameters.AddWithValue("@AirRightEar3000Hz", Convert.ToInt32(txtRight3k.Text));
                insert.Parameters.AddWithValue("@AirRightEar4000Hz", Convert.ToInt32(txtRight4k.Text));
                insert.Parameters.AddWithValue("@AirRightEar6000Hz", Convert.ToInt32(txtRight6k.Text));
                insert.Parameters.AddWithValue("@AirRightEar8000Hz", Convert.ToInt32(txtRight8k.Text));
                insert.Parameters.AddWithValue("@AirLeftEar250Hz", Convert.ToInt32(txtLeft250.Text));
                insert.Parameters.AddWithValue("@AirLeftEar500Hz", Convert.ToInt32(txtLeft500.Text));
                insert.Parameters.AddWithValue("@AirLeftEar750Hz", Convert.ToInt32(txtLeft750.Text));
                insert.Parameters.AddWithValue("@AirLeftEar1000Hz", Convert.ToInt32(txtLeft1k.Text));
                insert.Parameters.AddWithValue("@AirLeftEar1500Hz", Convert.ToInt32(txtLeft1500.Text));
                insert.Parameters.AddWithValue("@AirLeftEar2000Hz", Convert.ToInt32(txtLeft2k.Text));
                insert.Parameters.AddWithValue("@AirLeftEar3000Hz", Convert.ToInt32(txtLeft3k.Text));
                insert.Parameters.AddWithValue("@AirLeftEar4000Hz", Convert.ToInt32(txtLeft4k.Text));
                insert.Parameters.AddWithValue("@AirLeftEar6000Hz", Convert.ToInt32(txtLeft6k.Text));
                insert.Parameters.AddWithValue("@AirLeftEar8000Hz", Convert.ToInt32(txtLeft8k.Text));
                insert.Parameters.AddWithValue("@Hearing", hearingfindings);
                insert.Parameters.AddWithValue("@Remarks", txtRemarks.Text);
                insert.Parameters.AddWithValue("@RequestDoctor", tbReqPhysician.Text);
                insert.Parameters.AddWithValue("@Audiologist", tbAudiologist.Text);
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
if(txtRight250.Text == "")
{
txtRight250.BackColor = Color.Pink;
}

if(txtRight500.Text == "")
{
txtRight500.BackColor = Color.Pink;
}

if(txtRight750.Text == "")
{
txtRight750.BackColor = Color.Pink;
}

if(txtRight1k.Text == "")
{
txtRight1k.BackColor = Color.Pink;
}

if(txtRight1500.Text == "")
{
txtRight1500.BackColor = Color.Pink;
}

if(txtRight2k.Text == "")
{
txtRight2k.BackColor = Color.Pink;
}

if(txtRight3k.Text == "")
{
txtRight3k.BackColor = Color.Pink;
}

if(txtRight4k.Text == "")
{
txtRight4k.BackColor = Color.Pink;
}

if(txtRight6k.Text == "")
{
txtRight6k.BackColor = Color.Pink;
}

if(txtRight8k.Text == "")
{
txtRight8k.BackColor = Color.Pink;
}

if(txtLeft250.Text == "")
{
txtLeft250.BackColor = Color.Pink;
}

if(txtLeft500.Text == "")
{
txtLeft500.BackColor = Color.Pink;
}

if(txtLeft750.Text == "")
{
txtLeft750.BackColor = Color.Pink;
}

if(txtLeft1k.Text == "")
{
txtLeft1k.BackColor = Color.Pink;
}

if(txtLeft1500.Text == "")
{
txtLeft1500.BackColor = Color.Pink;
}

if(txtLeft2k.Text == "")
{
txtLeft2k.BackColor = Color.Pink;
}

if(txtLeft3k.Text == "")
{
txtLeft3k.BackColor = Color.Pink;
}

if(txtLeft4k.Text == "")
{
txtLeft4k.BackColor = Color.Pink;
}

if(txtLeft6k.Text == "")
{
txtLeft6k.BackColor = Color.Pink;
}

if(txtLeft8k.Text == "")
{
txtLeft8k.BackColor = Color.Pink;
}

if(tbReqPhysician.Text == "")
{
tbReqPhysician.BackColor = Color.Pink;
}

if(tbAudiologist.Text == "")
{
tbAudiologist.BackColor = Color.Pink;
}

}
        
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtDatePerformed.Text = txtLeft1500.Text = txtLeft1k.Text = txtLeft250.Text = txtLeft2k.Text =
        txtLeft3k.Text = txtLeft4k.Text = txtLeft500.Text = txtLeft6k.Text = txtLeft750.Text = txtLeft8k.Text =
        txtRemarks.Text = txtRight1500.Text = txtRight1k.Text = txtRight250.Text = txtRight2k.Text = txtRight3k.Text =
        txtRight4k.Text = txtRight500.Text = txtRight6k.Text = txtRight750.Text = txtRight8k.Text = tbAudiologist.Text = tbReqPhysician.Text = String.Empty;
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









