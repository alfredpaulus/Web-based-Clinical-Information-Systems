using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class CIS_Reception_ReceptionQueue : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
        {

            SqlDataAdapter dataAdapter = new SqlDataAdapter(
               "SELECT TOP 4 PatientQueueNo, QueueType FROM PatientQueue " +
               "WHERE Registered = 'O' ORDER BY QueueID DESC;", cn); //Registered=(O)n-going

            cn.Open();
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);

            if (dataSet.Tables[0].Rows.Count > 0)
            {
                int count = dataSet.Tables[0].Rows.Count;

                var labelControls = new List<Control>();
                labelControls.Add(lblServingCtr1);
                labelControls.Add(lblServingCtr2);
                labelControls.Add(lblServingCtr3);
                labelControls.Add(lblServingCtr4);

                for (int x = 0; x <= count-1; x++)
                {
                    if (dataSet.Tables[0].Rows[x]["QueueType"].ToString() == "R")
                    {
                        ((System.Web.UI.WebControls.Label)(labelControls[x])).ForeColor = System.Drawing.ColorTranslator.FromHtml("#CC3300");
                    }
                    else
                    {
                        ((System.Web.UI.WebControls.Label)(labelControls[x])).ForeColor = System.Drawing.ColorTranslator.FromHtml("#FFCC00");
                    }
                    ((System.Web.UI.WebControls.Label)(labelControls[x])).Text = dataSet.Tables[0].Rows[x]["PatientQueueNo"].ToString();
                }

                cn.Close();
            }

            else
            {
                cn.Close();
            }
        }
    }
}