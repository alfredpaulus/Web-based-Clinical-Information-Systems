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

public partial class CIS_Laboratories_LaboratoriesDental : System.Web.UI.Page
{
    protected void Page_PreLoad(object sender, EventArgs e)
    {
        //Security: This will check if the user was logged in and logged in as a Doctor, if not, it will redirect to another page
        if (Convert.ToInt32(Session["LoggedInDOCDepartment"]) != 3)
        {
            Response.Redirect("~/NotAuthorized.aspx");
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["DentalPatientID"] == null)
        {
            Response.Redirect("~/CIS/MedicalRecord/Dental/DentalHome.aspx");
        }

        lblPatientId.Text = Session["DentalPatientID"].ToString();
        lblDateOfBirth.Text = Session["DentalPatientDoB"].ToString();
        lblPatientName.Text = Session["DentalPatientName"].ToString();
        lblAge.Text = Session["DentalPatientAge"].ToString();
        lblGender.Text = Session["DentalPatientGender"].ToString();
        //txtDatePerformed.Text = Session["LaboratoryDateTime"].ToString();

        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlDataAdapter dataAdapter = new SqlDataAdapter(
               "SELECT IDENT_CURRENT('LabDental')+1 AS id;", cn);

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
if(txtSignificantFindingsDental.Text != "" && txtDatePerformed.Text != "")
{
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlCommand insert = new SqlCommand(
               "INSERT INTO LabDental(DatePerformed, UpperLeft1, UpperLeft2, UpperLeft3, UpperLeft4, UpperLeft5, UpperLeft6, UpperLeft7, UpperLeft8," +
               "LowerLeft1, LowerLeft2, LowerLeft3, LowerLeft4, LowerLeft5, LowerLeft6, LowerLeft7, LowerLeft8," +
               "UpperRight1, UpperRight2, UpperRight3, UpperRight4, UpperRight5, UpperRight6, UpperRight7, UpperRight8," +
               "LowerRight1, LowerRight2, LowerRight3, LowerRight4, LowerRight5, LowerRight6, LowerRight7, LowerRight8, SignificantFindings, DentistAccountNo, PatientAccountNo)" +
               "VALUES (@DatePerformed, @UpperLeft1, @UpperLeft2, @UpperLeft3, @UpperLeft4, @UpperLeft5, @UpperLeft6, @UpperLeft7, @UpperLeft8," +
               "@LowerLeft1, @LowerLeft2, @LowerLeft3, @LowerLeft4, @LowerLeft5, @LowerLeft6, @LowerLeft7, @LowerLeft8," +
               "@UpperRight1, @UpperRight2, @UpperRight3, @UpperRight4, @UpperRight5, @UpperRight6, @UpperRight7, @UpperRight8," +
               "@LowerRight1, @LowerRight2, @LowerRight3, @LowerRight4, @LowerRight5, @LowerRight6, @LowerRight7, @LowerRight8, @SignificantFindings, @DentistAccountNo, @PatientAccountNo);",
               cn);

            insert.Parameters.AddWithValue("@DatePerformed", Convert.ToDateTime(txtDatePerformed.Text));
            insert.Parameters.AddWithValue("@UpperLeft1", ddUpperL1.Text);
            insert.Parameters.AddWithValue("@UpperLeft2", ddUpperL2.Text);
            insert.Parameters.AddWithValue("@UpperLeft3", ddUpperL3.Text);
            insert.Parameters.AddWithValue("@UpperLeft4", ddUpperL4.Text);
            insert.Parameters.AddWithValue("@UpperLeft5", ddUpperL5.Text);
            insert.Parameters.AddWithValue("@UpperLeft6", ddUpperL6.Text);
            insert.Parameters.AddWithValue("@UpperLeft7", ddUpperL7.Text);
            insert.Parameters.AddWithValue("@UpperLeft8", ddUpperL8.Text);
            insert.Parameters.AddWithValue("@LowerLeft1", ddLowerL1.Text);
            insert.Parameters.AddWithValue("@LowerLeft2", ddLowerL2.Text);
            insert.Parameters.AddWithValue("@LowerLeft3", ddLowerL3.Text);
            insert.Parameters.AddWithValue("@LowerLeft4", ddLowerL4.Text);
            insert.Parameters.AddWithValue("@LowerLeft5", ddLowerL5.Text);
            insert.Parameters.AddWithValue("@LowerLeft6", ddLowerL6.Text);
            insert.Parameters.AddWithValue("@LowerLeft7", ddLowerL7.Text);
            insert.Parameters.AddWithValue("@LowerLeft8", ddLowerL8.Text);
            insert.Parameters.AddWithValue("@UpperRight1", ddUpperR1.Text);
            insert.Parameters.AddWithValue("@UpperRight2", ddUpperR2.Text);
            insert.Parameters.AddWithValue("@UpperRight3", ddUpperR3.Text);
            insert.Parameters.AddWithValue("@UpperRight4", ddUpperR4.Text);
            insert.Parameters.AddWithValue("@UpperRight5", ddUpperR5.Text);
            insert.Parameters.AddWithValue("@UpperRight6", ddUpperR6.Text);
            insert.Parameters.AddWithValue("@UpperRight7", ddUpperR7.Text);
            insert.Parameters.AddWithValue("@UpperRight8", ddUpperR8.Text);
            insert.Parameters.AddWithValue("@LowerRight1", ddLowerR1.Text);
            insert.Parameters.AddWithValue("@LowerRight2", ddLowerR2.Text);
            insert.Parameters.AddWithValue("@LowerRight3", ddLowerR3.Text);
            insert.Parameters.AddWithValue("@LowerRight4", ddLowerR4.Text);
            insert.Parameters.AddWithValue("@LowerRight5", ddLowerR5.Text);
            insert.Parameters.AddWithValue("@LowerRight6", ddLowerR6.Text);
            insert.Parameters.AddWithValue("@LowerRight7", ddLowerR7.Text);
            insert.Parameters.AddWithValue("@LowerRight8", ddLowerR8.Text);
            insert.Parameters.AddWithValue("@SignificantFindings", txtSignificantFindingsDental.Text);
            insert.Parameters.AddWithValue("@PatientAccountNo", Convert.ToInt32(Session["DentalPatientID"]));
            insert.Parameters.AddWithValue("@DentistAccountNo", Convert.ToInt32(Session["LoggedInAccntNo"]));

            try
            {
                cn.Open();
                insert.ExecuteNonQuery();
                lblMessage.Text = "Succesfully Added!";
                Response.AddHeader("REFRESH", "3;URL=DentalHome.aspx");
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
if(txtSignificantFindingsDental.Text == "")
{
txtSignificantFindingsDental.BackColor = Color.Pink;
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
        Session["DentalPatientID"] = null;
        Session["DentalPatientDoB"] = null;
        Session["DentalPatientName"] = null;
        Session["DentalPatientAge"] = null;
        Session["DentalDateTime"] = null;
        Session["DentalPatientGender"] = null;

        Response.Redirect("~/CIS/MedicalRecord/Dental/DentalHome.aspx");
    }
}


