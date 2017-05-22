using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Include using directives to use SQL related commands
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
//Namespace for RegEx
using System.Text.RegularExpressions;
//Namespace for generating random password (Membership.GeneratePassword)
using System.Web.Security;

public partial class CIS_Reception_ReceptionNewPatient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRNPSubmit_Click(object sender, EventArgs e)
    {
        string gender, generatedusername, generatedpassword = String.Empty;
        

        if (rbRNPFemale.Checked == true)
        {
            gender = "Female";
        }
        else
        {
            gender = "Male";
        }

        //generate username (calls CheckIfUsernameTaken method)
        generatedusername = GenerateUsername();
        //generate random password
        generatedpassword = Membership.GeneratePassword(6, 0);

        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlCommand insert = new SqlCommand(
               "INSERT INTO Patient (Username, Pass, Fname, Lname, Mname, Gender, DoB, CivilStatus, Nationality, " +
               "Address1, City, ZIP, TelNo, MobileNo, Company, Occupation, Religion, Remarks)" +
               "VALUES (@Username, @Pass, @Fname, @Lname, @Mname, @Gender, @DoB, @CivilStatus, @Nationality, " +
               "@Address1, @City, @ZIP, @TelNo, @MobileNo, @Company, @Occupation, @Religion, @Remarks); ",
               cn);
            insert.Parameters.AddWithValue("@Username", generatedusername);
            insert.Parameters.AddWithValue("@Pass", generatedpassword);
            insert.Parameters.AddWithValue("@Fname", tbRNPFname.Text);
            insert.Parameters.AddWithValue("@Lname", tbRNPLname.Text);
            insert.Parameters.AddWithValue("@Mname", tbRNPMname.Text);
            insert.Parameters.AddWithValue("@Gender", gender);
            insert.Parameters.AddWithValue("@DoB", tbRNPBday.Text);
            insert.Parameters.AddWithValue("@CivilStatus", ddlRNPCStatus.SelectedItem.Text);
            insert.Parameters.AddWithValue("@Nationality", tbRNPNationality.Text);
            insert.Parameters.AddWithValue("@Address1", tbRNPAddress.Text);
            insert.Parameters.AddWithValue("@City", tbRNPCity.Text);
            insert.Parameters.AddWithValue("@ZIP", tbRNPZip.Text);
            insert.Parameters.AddWithValue("@TelNo", tbRNPTelNum.Text);
            insert.Parameters.AddWithValue("@MobileNo", tbRNPMobileNum.Text);
            insert.Parameters.AddWithValue("@Company", tbRNPCompany.Text);
            insert.Parameters.AddWithValue("@Occupation", tbRNPOccupation.Text);
            insert.Parameters.AddWithValue("@Religion", tbRNPReligion.Text);
            insert.Parameters.AddWithValue("@Remarks", tbRNPRemarks.Text);

            try
            {
                cn.Open();
                insert.ExecuteNonQuery();
                lblMessage.Text = "Succesfully Added!" + "<br />" + "Please take note of the following details and give to the patient for future use:"
                    + "<br />" + "Username: " + generatedusername + "<br />" + "Password: " + generatedpassword;
                Response.AddHeader("REFRESH", "10;URL=ReceptionHome.aspx");

                gender = String.Empty;
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                cn.Close();
            }

        }
    }

    protected void btnRNPClear_Click(object sender, EventArgs e)
    {
        tbRNPAddress.Text = tbRNPBday.Text = tbRNPCity.Text = tbRNPCompany.Text = tbRNPFname.Text =
        tbRNPLname.Text = tbRNPMname.Text = tbRNPMobileNum.Text = tbRNPNationality.Text = tbRNPOccupation.Text =
        tbRNPReligion.Text = tbRNPRemarks.Text = tbRNPTelNum.Text = tbRNPZip.Text = String.Empty;

        rbRNPFemale.Checked = rbRNPMale.Checked = false;
    }

    protected void btnRNPCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/CIS/Reception/ReceptionHome.aspx");
    }

    protected string GenerateUsername()
    {
        int usernamectr = 1;
        string fnameholder, lnameholder, tryusername = String.Empty;

        fnameholder = Regex.Replace(tbRNPFname.Text, @"\s", "");
        lnameholder = Regex.Replace(tbRNPLname.Text, @"\s", "");

        fnameholder = fnameholder.ToLower();
        lnameholder = lnameholder.ToLower();

        tryusername = fnameholder + lnameholder + usernamectr.ToString();

        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlDataAdapter dataAdapter = new SqlDataAdapter(
               "SELECT Username FROM Patient " +
               "WHERE Username = @NewUsername"
               , cn);

            SqlParameter NewUsername = dataAdapter.SelectCommand.Parameters.Add("@NewUsername", SqlDbType.VarChar, 100);
            NewUsername.Value = tryusername;

            cn.Open();
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);

            while (dataSet.Tables[0].Rows.Count > 0)
            {
                lblMessage.Text = "Generating username...";

                usernamectr++;
                tryusername = fnameholder + lnameholder + usernamectr.ToString();

                NewUsername.Value = tryusername;

                dataSet.Clear();
                dataAdapter.Fill(dataSet);
            }

            if (dataSet.Tables[0].Rows.Count == 0)
            {
                cn.Close();
                lblMessage.Text = "Generated username: " + tryusername;
                return tryusername;
            }
            else
            {
                cn.Close();
                lblMessage.Text = "There seems to be an error. Please contact the admin.";
                return tryusername;
            }
        }

    }



}