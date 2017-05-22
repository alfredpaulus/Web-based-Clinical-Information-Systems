using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbtnLogout.Click += new EventHandler(this.lbtnLogout_Click);
        lbtnLogin.Click += new EventHandler(this.lbtnLogin_Click);
        lbtnAppointments.Click += new EventHandler(this.lbtnAppointments_Click);
        lbtnMedicalReports.Click += new EventHandler(this.lbtnMedicalReports_Click);

        if (Session["LoggedIn"] != null)
        {
            if (Session["LoggedInAs"] != null)
            {
                if (Session["LoggedInAs"].ToString() == "PAT")
                {
                    lbtnAppointments.Visible = true;
                    lbtnLogin.Text = Session["Username"].ToString();
                    lbtnLogin.PostBackUrl = "~/#";
                    lbtnLogout.Visible = true;
                    lbtnMedicalReports.Visible = true;
                    lbtnMedicalReports.Text = "My Medical Reports";
                    lbtnMyTransactionHistory.Visible = true;
                }

                else if(Session["LoggedInAs"].ToString() == "DOC")
                {
                    lbtnAppointments.Visible = false;
                    lbtnLogin.Text = Session["Username"].ToString();
                    lbtnLogin.PostBackUrl = "~/#";
                    lbtnLogout.Visible = true;
                    lbtnMedicalReports.Visible = true;
                    lbtnMedicalReports.Text = "Back to Doctor's Page";
                }

                else if (Session["LoggedInAs"].ToString() == "NMT")
                {
                    lbtnAppointments.Visible = false;
                    lbtnLogin.Text = Session["Username"].ToString();
                    lbtnLogin.PostBackUrl = "~/#";
                    lbtnLogout.Visible = true;
                    lbtnMedicalReports.Visible = true;
                    lbtnMedicalReports.Text = "Back to Laboratory's homepage";
                }
                else if (Session["LoggedInAs"].ToString() == "EMP")
                {
                    lbtnAppointments.Visible = false;
                    lbtnLogin.Text = Session["Username"].ToString();
                    lbtnLogin.PostBackUrl = "~/#";
                    lbtnLogout.Visible = true;
                    lbtnMedicalReports.Visible = true;
                    lbtnMedicalReports.Text = "Back to Reception's homepage";
                }
                else if (Session["LoggedInAs"].ToString() == "ADM")
                {
                    lbtnAppointments.Visible = false;
                    lbtnLogin.Text = Session["Username"].ToString();
                    lbtnLogin.PostBackUrl = "~/#";
                    lbtnLogout.Visible = true;
                    lbtnMedicalReports.Visible = true;
                    lbtnMedicalReports.Text = "Back to Admin's homepage";
                }
                else //assumepatient
                {
                    lbtnAppointments.Visible = true;
                    lbtnLogin.Text = Session["Username"].ToString();
                    lbtnLogin.PostBackUrl = "~/#";
                    lbtnLogout.Visible = true;
                    lbtnMedicalReports.Visible = true;
                    lbtnMedicalReports.Text = "My Medical Reports";
                    lbtnMyTransactionHistory.Visible = true;
                }
            }

            else //if logged in as == null; assume not logged in
            {
                lbtnAppointments.Visible = false;
                lbtnLogin.Text = "Login";
                lbtnLogin.PostBackUrl = "~/Login.aspx";
                lbtnLogout.Visible = false;
                lbtnMedicalReports.Visible = false;
                lbtnMyTransactionHistory.Visible = false;
            }    
        }

        else //if not logged in
        {
            lbtnAppointments.Visible = false;
            lbtnLogin.Text = "Login";
            lbtnLogin.PostBackUrl = "~/Login.aspx";
            lbtnLogout.Visible = false;
            lbtnMedicalReports.Visible = false;
            lbtnMyTransactionHistory.Visible = false;
        }
        
    }

    private void lbtnMedicalReports_Click(object sender, EventArgs e)
    {
        if (Session["LoggedInAs"].ToString() == "PAT")
        {
            Response.Redirect("~/CIS/Patient/MyMedicalReports.aspx");
        }

        else if (Session["LoggedInAs"].ToString() == "DOC")
        {
            Response.Redirect("~/CIS/MedicalRecord/MedicalRecordDoctor.aspx");
        }

        else if (Session["LoggedInAs"].ToString() == "NMT")
        {
            Response.Redirect("~/CIS/Laboratories/LaboratoriesHome.aspx");
        }
        else if (Session["LoggedInAs"].ToString() == "EMP")
        {
            Response.Redirect("~/CIS/Reception/ReceptionHome.aspx");
        }
        else if (Session["LoggedInAs"].ToString() == "ADM")
        {
            Response.Redirect("~/CIS/Admin/AdminManageAccounts.aspx");
        }
        else //assume patient
        {
            Response.Redirect("/CIS/Patient/PatientAppointmentScheduling.aspx");
        }
    }

    private void lbtnAppointments_Click(object sender, EventArgs e)
    {
        Response.Redirect("/CIS/Patient/PatientAppointmentScheduling.aspx");
    }

    private void lbtnLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Login.aspx");
    }

    private void lbtnLogout_Click(Object sender, EventArgs e)
    {
        Session["LoggedIn"] = null;
        Session["Username"] = null;
        Session["LoggedInAs"] = null;
        Session["AccountNo"] = null;
        lbtnAppointments.Visible = false;
        lbtnLogin.Text = "Login";
        lbtnLogin.PostBackUrl = "~/Login.aspx";
        lbtnLogout.Visible = false;
        lbtnMedicalReports.Visible = false;
        Response.Redirect("/Default.aspx");

    }

    protected void lbtnMyTransactionHistory_Click(object sender, EventArgs e)
    {
        Response.Redirect("/CIS/Patient/MyTransactionHistory.aspx");
    }
}
