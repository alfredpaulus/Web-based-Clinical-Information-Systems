﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_PreLoad(object sender, EventArgs e)
    {
        //Security: This will check if the user was logged in and logged in as Admin, if not, it will redirect to another page
        if (Session["LoggedIn"] == null || Session["LoggedInAs"].ToString() != "ADM")
        {
            Response.Redirect("~/NotAuthorized.aspx");
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        lbtnLogout.Click += new EventHandler(this.lbtnLogout_Click);
        lbtnLogin.Click += new EventHandler(this.lbtnLogin_Click);

        if (Session["LoggedIn"] == null || Session["LoggedInAs"].ToString() != "ADM")
        {
            Response.Redirect("~/NotAuthorized.aspx");
        }
        else
        {
            lbtnLogin.Text = Session["Username"].ToString();
            lbtnLogout.Visible = true;
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
