using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CIS_Reception_Registration_RegistrationBillingHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlDataAdapter dataAdapter = new SqlDataAdapter(
               "SELECT IDENT_CURRENT('BillingTransactions')+1 AS id;", cn);

            cn.Open();
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);

            if (dataSet.Tables[0].Rows.Count > 0)
            {
                lblTransactionID.Text = dataSet.Tables[0].Rows[0]["id"].ToString();
                cn.Close();
            }

            else
            {
                lblMessage.Text = "There seems to be an error. Please contact the admin.";
            }

        }
    }

    protected void btnMRHClear_Click(object sender, EventArgs e)
    {
        tbPatientAccountNumber.Text = lblMessage.Text = String.Empty;
    }

    protected void btnMRHSubmit_Click(object sender, EventArgs e)
    {
        if(!String.IsNullOrWhiteSpace(tbPatientAccountNumber.Text))
        {
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
            {
                SqlDataAdapter dataAdapter = new SqlDataAdapter(
                   //"SELECT *, CONVERT(VARCHAR(11),DoB,101) AS Bdate, DATEDIFF(hour,DoB,GETDATE())/8766 AS Age FROM Patient " +
                   "SELECT * FROM Patient " +
                   "WHERE AccountNo = @PatientAN"
                   , cn);

                SqlParameter AccountNo = dataAdapter.SelectCommand.Parameters.Add("@PatientAN", SqlDbType.VarChar, 15);
                AccountNo.Value = tbPatientAccountNumber.Text;

                cn.Open();
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet);

                if (dataSet.Tables[0].Rows.Count > 0)
                {
                    Session["CurrentTransactionID"] = lblTransactionID.Text;
                    Session["CurrentTransactionPatientID"] = tbPatientAccountNumber.Text;
                    //Session["CurrentTransactionPatientDoB"] = dataSet.Tables[0].Rows[0]["Bdate"].ToString();
                    Session["CurrentTransactionPatientName"] = dataSet.Tables[0].Rows[0]["Lname"].ToString() + ", " + dataSet.Tables[0].Rows[0]["Fname"].ToString() + " " + dataSet.Tables[0].Rows[0]["Mname"].ToString();
                    //Session["CurrentTransactionPatientAge"] = dataSet.Tables[0].Rows[0]["Age"].ToString();
                    Session["CurrentTransactionDateTime"] = System.DateTime.Now.ToString();
                    cn.Close();

                    Response.Redirect("/CIS/Reception/Registration/RegistrationBilling.aspx");
                }

                else
                {
                    Session["CurrentTransactionID"] = null;
                    Session["CurrentTransactionPatientID"] = null;
                    //Session["CurrentTransactionPatientDoB"] = null;
                    Session["CurrentTransactionPatientName"] = null;
                    //Session["CurrentTransactionPatientAge"] = null;
                    Session["CurrentTransactionDateTime"] = null;
                    cn.Close();

                    lblMessage.Text = "There seems to be an error. Please contact the admin.";
                }

            }
        }

        else
        {
            lblMessage.Text = "Please enter Patient's Account Number.";
        }

        
    }
}