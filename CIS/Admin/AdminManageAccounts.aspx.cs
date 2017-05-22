using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CIS_Admin_AdminManageAccounts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Manually created event handlers because the Design view in my VS doesn't work
        btnShowPatientAccounts.Click += new EventHandler(this.ShowPatientAccounts_Click);
        btnShowDoctorsAccounts.Click += new EventHandler(this.ShowDoctorsAccounts_Click);
        btnShowNurseMedTechAccounts.Click += new EventHandler(this.Button1_Click);
        btnShowEmployeeAccounts.Click += new EventHandler(this.Button2_Click);
        btnRefresh.Click += new EventHandler(this.btnRefresh_Click);
    }

    private void btnRefresh_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/CIS/Admin/AdminManageAccounts.aspx");
    }

    void ShowPatientAccounts_Click(Object sender, EventArgs e)
    {
        if (Panel1.Visible == false)
        {
            Panel1.Visible = true;
            btnShowPatientAccounts.Text = "Hide Patient Accounts";
        }
        else
        {
            Panel1.Visible = false;
            btnShowPatientAccounts.Text = "Show Patient Accounts";
        }

    }

    void ShowDoctorsAccounts_Click(Object sender, EventArgs e)
    {
        if (Panel2.Visible == false)
        {
            Panel2.Visible = true;
            btnShowDoctorsAccounts.Text = "Hide Doctor Accounts";
        }
        else
        {
            Panel2.Visible = false;
            btnShowDoctorsAccounts.Text = "Show Doctor Accounts";
        }

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Panel3.Visible == false)
        {
            Panel3.Visible = true;
            btnShowNurseMedTechAccounts.Text = "Hide Nurse/MedTech Accounts";
        }
        else
        {
            Panel3.Visible = false;
            btnShowNurseMedTechAccounts.Text = "Show Nurse/MedTech Accounts";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Panel4.Visible == false)
        {
            Panel4.Visible = true;
            btnShowEmployeeAccounts.Text = "Hide Employee Accounts";
        }
        else
        {
            Panel4.Visible = false;
            btnShowEmployeeAccounts.Text = "Show Employee Accounts";
        }
    }
}
