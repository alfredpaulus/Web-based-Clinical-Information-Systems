﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageCISMedicalRecord : System.Web.UI.MasterPage
{
    protected void Page_PreLoad(object sender, EventArgs e)
    {
        //Security: This will check if the user was logged in and logged in as a Doctor, if not, it will redirect to another page
        if (Session["LoggedIn"] == null || Session["LoggedInAs"].ToString() != "DOC")
        {
            Response.Redirect("~/NotAuthorized.aspx");
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoggedIn"] == null || Session["LoggedInAs"].ToString() != "DOC")
        {
            Response.Redirect("~/NotAuthorized.aspx");
        }
        else
        {
            lbtnLogin.Text = Session["Username"].ToString();
            lbtnLogout.Visible = true;
        }

        lbtnLogout.Click += new EventHandler(this.lbtnLogout_Click);
        lbtnLogin.Click += new EventHandler(this.lbtnLogin_Click);

        if (Convert.ToInt32(Session["LoggedInDOCDepartment"]) == 3) // 3 = Dentist in tbl.Departments (Check database)
        {
            lbtnDental.Visible = true;
        }
        else
        {
            lbtnDental.Visible = false;
        }
    }

    private void lbtnLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }

    private void lbtnLogout_Click(object sender, EventArgs e)
    {
        Session["LoggedIn"] = null;
        Session["Username"] = null;
        Session["LoggedInAs"] = null;
        Session["AccountNo"] = null;
        lbtnLogin.Text = "Login";
        lbtnLogin.PostBackUrl = "~/Login.aspx";
        lbtnLogout.Visible = false;
        Response.Redirect("/Default.aspx");
    }

}
