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

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Manually register the event-handling method forthe Click event of the Button control.
        btnLogin.Click += new EventHandler(this.btnLogin_Click);


        //This code will prevent user from accessing the Login.aspx when already logged in
        if (Session["LoggedIn"] != null)
        {
            Response.Redirect("/Default.aspx");
        }
    }

    void btnLogin_Click(Object sender, EventArgs e)
    {
        if (tbLoginUsername.Text != null)
        {
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
            {
                SqlDataAdapter dataAdapter = new SqlDataAdapter(
                   "SELECT * FROM Patient " +
                   "WHERE Username = @PatientUN " +
                   "AND Pass = @PatientPW;",
                   cn);
                SqlParameter PatientUser = dataAdapter.SelectCommand.Parameters.Add("@PatientUN", SqlDbType.VarChar, 100);
                PatientUser.Value = tbLoginUsername.Text;

                SqlParameter PatientPass = dataAdapter.SelectCommand.Parameters.Add("@PatientPW", SqlDbType.VarChar, 50);
                PatientPass.Value = tbLoginPassword.Text;

                cn.Open();
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet);

                if (dataSet.Tables[0].Rows.Count > 0)
                {
                    Session["LoggedIn"] = 1;
                    Session["Username"] = tbLoginUsername.Text;
                    Session["AccountNo"] = dataSet.Tables[0].Rows[0]["AccountNo"].ToString();
                    Session["LoggedInAs"] = "PAT";
                    cn.Close();
                    Response.Redirect("/Default.aspx");
                }
                else
                {
                    Session["LoggedIn"] = null;
                    Session["Username"] = null;
                    Session["AccountNo"] = null;
                    Session["LoggedInAs"] = null;
                    lblMessage.Text = "Please enter valid Username and Password";

                    cn.Close();
                    //Response.Write("<script>alert('Please enter valid Username and Password')</script>"); //Causes other script to stop working?
                }

            }


        }
    }
}