using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CIS_Reception_Registration_RegistrationBillingTransactionHistory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void tbPatientAccntNum_TextChanged(object sender, EventArgs e)
    {
        gridviewTransactionHistory.DataBind();
    }
}