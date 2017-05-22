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

public partial class CIS_Laboratories_LaboratoriesDrugTest : System.Web.UI.Page
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
               "SELECT IDENT_CURRENT('LabDrugTest')+1 AS id;", cn);

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
if(txtDatePerformed.Text != "" && txtTestResult.Text != "" && txtMetabo1.Text != ""
&& txtMetaboRes1.Text != "" && tbHeadofLaboratory.Text != ""
&& tbAnalyst.Text != "")
{
        string PurposeText, TestMethodText = String.Empty;

        if(rdbPreEmploymentPurpose.Checked)
        {
            PurposeText = "Pre-Employment";
        }
        else if(rdbRandomPurpose.Checked)
        {
            PurposeText = "Random";
        }
        else if(rdbReturnDutyPurpose.Checked)
        {
            PurposeText = "Return-to-duty";
        }
        else if(rdbSuspicionPurpose.Checked)
        {
            PurposeText = "Reasonable Suspicion/Cause";
        }
        else
        {
            PurposeText = "Others";
        }

        if(rdbTestKitMethod.Checked)
        {
            TestMethodText = "Test Kit";
        }
        else if(rdbGCMSMethod.Checked)
        {
            TestMethodText = "GC-MS for Confirmatory";
        }
        else
        {
            TestMethodText = "Instrumented";
        }


        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlCommand insert = new SqlCommand(
               "INSERT INTO LabDrugTest(DatePerformed, Purpose, TestMethod, TestResult, DrugMetabolite1, DrugMetabolite2, DrugMetabolite3, DrugMetabolite4, DrugMetabolite5," +
               "DrugMetabolite6, DrugMetabolite7, DrugMetabolite8, DrugMetabolite9, DrugMetabolite10," +
               "Result1, Result2, Result3, Result4, Result5, Result6, Result7, Result8, Result9, Result10, Analyst, HeadOfLaboratory, PatientAccountNo, NurseMedTechAccountNo)" +
               "VALUES (@DatePerformed, @Purpose, @TestMethod, @TestResult, @DrugMetabolite1, @DrugMetabolite2, @DrugMetabolite3, @DrugMetabolite4, @DrugMetabolite5," +
               "@DrugMetabolite6, @DrugMetabolite7, @DrugMetabolite8, @DrugMetabolite9, @DrugMetabolite10," +
               "@Result1, @Result2, @Result3, @Result4, @Result5, @Result6, @Result7, @Result8, @Result9, @Result10, @Analyst, @HeadOfLaboratory, @PatientAccountNo, @NurseMedTechAccountNo);",
               cn);

            insert.Parameters.AddWithValue("@DatePerformed", Convert.ToDateTime(txtDatePerformed.Text));
            insert.Parameters.AddWithValue("@Purpose", PurposeText);
            insert.Parameters.AddWithValue("@TestMethod", TestMethodText);
            insert.Parameters.AddWithValue("@TestResult", txtTestResult.Text);
            insert.Parameters.AddWithValue("@DrugMetabolite1", txtMetabo1.Text);
            insert.Parameters.AddWithValue("@DrugMetabolite2", txtMetabo2.Text);
            insert.Parameters.AddWithValue("@DrugMetabolite3", txtMetabo3.Text);
            insert.Parameters.AddWithValue("@DrugMetabolite4", txtMetabo4.Text);
            insert.Parameters.AddWithValue("@DrugMetabolite5", txtMetabo5.Text);
            insert.Parameters.AddWithValue("@DrugMetabolite6", txtMetabo6.Text);
            insert.Parameters.AddWithValue("@DrugMetabolite7", txtMetabo7.Text);
            insert.Parameters.AddWithValue("@DrugMetabolite8", txtMetabo8.Text);
            insert.Parameters.AddWithValue("@DrugMetabolite9", txtMetabo9.Text);
            insert.Parameters.AddWithValue("@DrugMetabolite10", txtMetabo10.Text);
            insert.Parameters.AddWithValue("@Result1", txtMetaboRes1.Text);
            insert.Parameters.AddWithValue("@Result2", txtMetaboRes2.Text);
            insert.Parameters.AddWithValue("@Result3", txtMetaboRes3.Text);
            insert.Parameters.AddWithValue("@Result4", txtMetaboRes4.Text);
            insert.Parameters.AddWithValue("@Result5", txtMetaboRes5.Text);
            insert.Parameters.AddWithValue("@Result6", txtMetaboRes6.Text);
            insert.Parameters.AddWithValue("@Result7", txtMetaboRes7.Text);
            insert.Parameters.AddWithValue("@Result8", txtMetaboRes8.Text);
            insert.Parameters.AddWithValue("@Result9", txtMetaboRes9.Text);
            insert.Parameters.AddWithValue("@Result10", txtMetaboRes10.Text);
            insert.Parameters.AddWithValue("@Analyst", tbAnalyst.Text);
            insert.Parameters.AddWithValue("@HeadOfLaboratory", tbHeadofLaboratory.Text);
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
if(txtTestResult.Text == "")
{
txtTestResult.BackColor = Color.Pink;
}
if(txtMetabo1.Text == "")
{
txtMetabo1.BackColor = Color.Pink;
}
if(txtMetaboRes1.Text == "")
{
txtMetaboRes1.BackColor = Color.Pink;
}
if(tbHeadofLaboratory.Text == "")
{
tbHeadofLaboratory.BackColor = Color.Pink;
}
if(tbAnalyst.Text == "")
{
tbAnalyst.BackColor = Color.Pink;
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


