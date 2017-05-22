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

public partial class fmcislogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Manually register the event-handling method forthe Click event of the Button control.
        btnFMCISLogin.Click += new EventHandler(this.btnFMCISLogin_Click);


        //This code will prevent user from accessing the Login.aspx when already logged in
        if (Session["LoggedIn"] != null)
        {
            Response.Redirect("/Default.aspx");
        }
    }

    void btnFMCISLogin_Click(Object sender, EventArgs e)
    {
        if (tbFMCISLoginAccountNumber.Text != null)
        {
            if (ddLogInAs.SelectedValue == "DOC")
            {
                using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
                {
                    SqlDataAdapter dataAdapter = new SqlDataAdapter(
                       "SELECT * FROM Doctor " +
                       "WHERE AccountNo = @DoctorAN " +
                       "AND Pass = @DoctorPW;",
                       cn);
                    SqlParameter AccountNo = dataAdapter.SelectCommand.Parameters.Add("@DoctorAN", SqlDbType.VarChar, 15);
                    AccountNo.Value = tbFMCISLoginAccountNumber.Text;

                    SqlParameter AccountPass = dataAdapter.SelectCommand.Parameters.Add("@DoctorPW", SqlDbType.VarChar, 50);
                    AccountPass.Value = tbFMCISLoginPassword.Text;

                    cn.Open();
                    DataSet dataSet = new DataSet();
                    dataAdapter.Fill(dataSet);

                    if (dataSet.Tables[0].Rows.Count > 0)
                    {
                        Session["LoggedIn"] = 1;
                        Session["LoggedInAccntNo"] = tbFMCISLoginAccountNumber.Text;
                        Session["LoggedInAs"] = "DOC";
                        Session["LoggedInDOCDepartment"] = dataSet.Tables[0].Rows[0]["Department"].ToString();
                        Session["Username"] = "Dr. " + dataSet.Tables[0].Rows[0]["Fname"].ToString() + " " + dataSet.Tables[0].Rows[0]["Lname"].ToString();
                        cn.Close();

                        Response.Redirect("/CIS/MedicalRecord/MedicalRecordHome.aspx");
                    }
                    else
                    {
                        Session["LoggedIn"] = null;
                        Session["LoggedInAccntNo"] = null;
                        Session["LoggedInAs"] = null;
                        Session["Username"] = null;
                        cn.Close();
                        lblMessage.Text = "Please enter valid Account No. and Password";
                    }

                }
            }

            else if (ddLogInAs.SelectedValue == "NMT")
            {
                using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
                {
                    SqlDataAdapter dataAdapter = new SqlDataAdapter(
                       "SELECT * FROM NurseMedTech " +
                       "WHERE AccountNo = @NurseMedTechAN " +
                       "AND Pass = @NurseMedTechPW;",
                       cn);
                    SqlParameter AccountNo = dataAdapter.SelectCommand.Parameters.Add(
                                                            "@NurseMedTechAN", SqlDbType.VarChar, 15);
                    AccountNo.Value = tbFMCISLoginAccountNumber.Text;

                    SqlParameter AccountPass = dataAdapter.SelectCommand.Parameters.Add(
                                                        "@NurseMedTechPW", SqlDbType.VarChar, 50);
                    AccountPass.Value = tbFMCISLoginPassword.Text;

                    cn.Open();
                    DataSet dataSet = new DataSet();
                    dataAdapter.Fill(dataSet);

                    if (dataSet.Tables[0].Rows.Count > 0)
                    {
                        Session["LoggedIn"] = 1;
                        Session["LoggedInAccntNo"] = tbFMCISLoginAccountNumber.Text;
                        Session["LoggedInAs"] = "NMT";
                        Session["Username"] = dataSet.Tables[0].Rows[0]["Fname"].ToString() + " " + dataSet.Tables[0].Rows[0]["Lname"].ToString();
                        cn.Close();

                        Response.Redirect("/CIS/Laboratories/LaboratoriesHome.aspx");
                    }
                    else
                    {
                        Session["LoggedIn"] = null;
                        Session["LoggedInAccntNo"] = null;
                        Session["LoggedInAs"] = null;
                        Session["Username"] = null;
                        cn.Close();
                        lblMessage.Text = "Please enter valid Account No. and Password";
                    }

                }
            }

            else if (ddLogInAs.SelectedValue == "EMP")
            {
                using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
                {
                    SqlDataAdapter dataAdapter = new SqlDataAdapter(
                       "SELECT * FROM Employee " +
                       "WHERE AccountNo = @EmployeeAN " +
                       "AND Pass = @EmployeePW;",
                       cn);
                    SqlParameter AccountNo = dataAdapter.SelectCommand.Parameters.Add(
                                                            "@EmployeeAN", SqlDbType.VarChar, 15);
                    AccountNo.Value = tbFMCISLoginAccountNumber.Text;

                    SqlParameter AccountPass = dataAdapter.SelectCommand.Parameters.Add(
                                                        "@EmployeePW", SqlDbType.VarChar, 50);
                    AccountPass.Value = tbFMCISLoginPassword.Text;

                    cn.Open();
                    DataSet dataSet = new DataSet();
                    dataAdapter.Fill(dataSet);

                    if (dataSet.Tables[0].Rows.Count > 0)
                    {
                        Session["LoggedIn"] = 1;
                        Session["LoggedInAccntNo"] = tbFMCISLoginAccountNumber.Text;
                        Session["LoggedInAs"] = "EMP";
                        Session["Username"] = dataSet.Tables[0].Rows[0]["Fname"].ToString() + " " + dataSet.Tables[0].Rows[0]["Lname"].ToString();
                        cn.Close();

                        Response.Redirect("/CIS/Reception/ReceptionHome.aspx");
                    }
                    else
                    {
                        Session["LoggedIn"] = null;
                        Session["LoggedInAccntNo"] = null;
                        Session["LoggedInAs"] = null;
                        Session["Username"] = null;
                        cn.Close();
                        lblMessage.Text = "Please enter valid Account No. and Password";
                    }

                }
            }

            else if(ddLogInAs.SelectedValue == "ADM")
            {
                using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
                {
                    SqlDataAdapter dataAdapter = new SqlDataAdapter(
                       "SELECT * FROM AdminAcc " +
                       "WHERE Username = @AdminAN " +
                       "AND Pass = @AdminPW;",
                       cn);
                    SqlParameter AccountNo = dataAdapter.SelectCommand.Parameters.Add(
                                                            "@AdminAN", SqlDbType.VarChar, 15);
                    AccountNo.Value = tbFMCISLoginAccountNumber.Text;

                    SqlParameter AccountPass = dataAdapter.SelectCommand.Parameters.Add(
                                                        "@AdminPW", SqlDbType.VarChar, 50);
                    AccountPass.Value = tbFMCISLoginPassword.Text;

                    cn.Open();
                    DataSet dataSet = new DataSet();
                    dataAdapter.Fill(dataSet);

                    if (dataSet.Tables[0].Rows.Count > 0)
                    {
                        Session["LoggedIn"] = 1;
                        Session["LoggedInAccntNo"] = tbFMCISLoginAccountNumber.Text;
                        Session["LoggedInAs"] = "ADM";
                        Session["Username"] = "Admin " + dataSet.Tables[0].Rows[0]["Fname"].ToString() + " " + dataSet.Tables[0].Rows[0]["Lname"].ToString();
                        cn.Close();

                        Response.Redirect("/CIS/Admin/AdminManageAccounts.aspx");
                    }
                    else
                    {
                        Session["LoggedIn"] = null;
                        Session["LoggedInAccntNo"] = null;
                        Session["LoggedInAs"] = null;
                        Session["Username"] = null;
                        cn.Close();
                        lblMessage.Text = "Please enter valid Account No. and Password";
                    }

                }
            }

            else
            {
                Session["LoggedIn"] = null;
                Session["LoggedInAccntNo"] = null;
                Session["LoggedInAs"] = null;
                Session["Username"] = null;
                lblMessage.Text = "There seems to be an error. Please contact admin.";
            }
        }

    }
}