using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Reports_NurseMedtech_View_DrugTest_Report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string getCurrentPatiendId = Session["CurrentLabReportsPatientID"].ToString();
        string getCurrentCaseNum = Session["CurrentLabReportsCaseNum"].ToString();
        lblPatientId.Text = getCurrentPatiendId.ToString();
        lblCaseNum.Text = getCurrentCaseNum.ToString();
        lblPatientId.Visible = false;
        lblCaseNum.Visible = false;
    }
}