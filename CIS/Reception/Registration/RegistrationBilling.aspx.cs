using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CIS_Registration_RegistrationBilling : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CurrentTransactionID"] == null)
        {
            Response.Redirect("~/CIS/Reception/Registration/RegistrationBillingHome.aspx");
        }

        lblCurrentTransactionID.Text = Session["CurrentTransactionID"].ToString();
        lblPatientID.Text = Session["CurrentTransactionPatientID"].ToString();
        //lblPatientDOB.Text = Session["CurrentTransactionPatientDoB"].ToString();
        lblPatientName.Text = Session["CurrentTransactionPatientName"].ToString();
        //lblPatientAge.Text = Session["CurrentTransactionPatientAge"].ToString();
        lblDateTimeNow.Text = Session["CurrentTransactionDateTime"].ToString();

        float sum = 0;
        for (int i = 0; i < gridviewTransaction.Rows.Count; i++)
        {
            sum += float.Parse(gridviewTransaction.Rows[i].Cells[3].Text);
        }
        lblTotal.Text = sum.ToString();
    }
    
    protected void btnMRDCancel_Click(object sender, EventArgs e)
    {
        Session["CurrentTransactionID"] = null;
        Session["CurrentTransactionPatientID"] = null;
        //Session["CurrentTransactionPatientDoB"] = null;
        Session["CurrentTransactionPatientName"] = null;
        //Session["CurrentTransactionPatientAge"] = null;
        Session["CurrentTransactionDateTime"] = null;

        Response.Redirect("~/CIS/Reception/Registration/RegistrationBillingHome.aspx");
    }

    protected void btnMRDClear_Click(object sender, EventArgs e)
    {

    }

    protected void btnMRDSubmit_Click(object sender, EventArgs e)
    {
        Session["CurrentTransactionID"] = null;
        Session["CurrentTransactionPatientID"] = null;
        //Session["CurrentTransactionPatientDoB"] = null;
        Session["CurrentTransactionPatientName"] = null;
        //Session["CurrentTransactionPatientAge"] = null;
        Session["CurrentTransactionDateTime"] = null;

        //Add code to call next queued patient?
        lblMessage.Text = "Succesfully Added!";
        Response.AddHeader("REFRESH", "3;URL=RegistrationBillingHome.aspx");
    }

    protected void btnAddItem_Click(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {
            SqlCommand insert = new SqlCommand(
               "INSERT INTO BillingTransactions(TransactionNo, TransactionDateTime, ServiceItem, Price, PatientID, EmployeeID)" +
               "VALUES (@TransactionNo, @TransactionDateTime, @ServiceItem, @Price, @PatientID, @EmployeeID);",
               cn);

            insert.Parameters.AddWithValue("@TransactionNo", Convert.ToInt32(Session["CurrentTransactionID"]));
            insert.Parameters.AddWithValue("@TransactionDateTime", Convert.ToDateTime(Session["CurrentTransactionDateTime"]));
            insert.Parameters.AddWithValue("@ServiceItem", ddlItem.SelectedItem.Text);
            insert.Parameters.AddWithValue("@Price", Convert.ToDecimal(ddlItem.SelectedValue));
            insert.Parameters.AddWithValue("@PatientID", Convert.ToInt32(Session["CurrentTransactionPatientID"]));
            insert.Parameters.AddWithValue("@EmployeeID", Convert.ToInt32(Session["LoggedInAccntNo"]));

            try
            {
                cn.Open();
                insert.ExecuteNonQuery();
                gridviewTransaction.DataBind();

                float sum = 0;
                for (int i = 0; i < gridviewTransaction.Rows.Count; i++)
                {
                    sum += float.Parse(gridviewTransaction.Rows[i].Cells[3].Text);
                }
                lblTotal.Text = sum.ToString();
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                cn.Close();
            }
        }

    }

    protected void gridviewTransaction_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
    }

    protected void gridviewTransaction_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        float sum = 0;
        for (int i = 0; i < gridviewTransaction.Rows.Count; i++)
        {
            sum += float.Parse(gridviewTransaction.Rows[i].Cells[3].Text);
        }
        lblTotal.Text = sum.ToString();
    }

    protected void gridviewTransaction_PageIndexChanged(object sender, EventArgs e)
    {
        float sum = 0;
        for (int i = 0; i < gridviewTransaction.Rows.Count; i++)
        {
            sum += float.Parse(gridviewTransaction.Rows[i].Cells[3].Text);
        }
        lblTotal.Text = sum.ToString();
    }
}