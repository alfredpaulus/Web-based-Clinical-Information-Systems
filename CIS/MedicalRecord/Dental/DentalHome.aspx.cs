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

public partial class CIS_Laboratories_LaboratoriesHome : System.Web.UI.Page
{
    protected void Page_PreLoad(object sender, EventArgs e)
    {
        //Security: This will check if the user was logged in and logged in as a Doctor, if not, it will redirect to another page
        if (Convert.ToInt32(Session["LoggedInDOCDepartment"]) != 3)
        {
            Response.Redirect("~/NotAuthorized.aspx");
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        //rbPatientName.Checked = true;
        //rbPatientID.Checked = false;
        //tbPatientName.Text = String.Empty;
        //tbPatientName.Enabled = true;
        tbPatientID.Text = String.Empty;
        //tbPatientID.Enabled = false;
        ddlExam.SelectedIndex = 0;
    }


    //protected void rbPatientName_CheckedChanged(object sender, EventArgs e)
    //{
    //    tbPatientName.Text = String.Empty;
    //    tbPatientName.Enabled = true;
    //    tbPatientID.Text = String.Empty;
    //    tbPatientID.Enabled = false;
    //}

    //protected void rbPatientID_CheckedChanged(object sender, EventArgs e)
    //{
    //    tbPatientName.Text = String.Empty;
    //    tbPatientName.Enabled = false;
    //    tbPatientID.Text = String.Empty;
    //    tbPatientID.Enabled = true;
    //}

    protected void btnContinue_Click(object sender, EventArgs e)
    {
        //if (rbPatientName.Checked && !rbPatientID.Checked)
        //{
        //}
        //else if (rbPatientID.Checked && !rbPatientName.Checked)
        //{
        //}
        //else
        //{
        //}

        if (tbPatientID.Text != null || ddlExam.Text != null)
        {

            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FortMedCISConnectionString"].ToString()))
            {
                SqlDataAdapter dataAdapter = new SqlDataAdapter(
                   "SELECT *, CONVERT(VARCHAR(11),DoB,101) AS Bdate, DATEDIFF(hour,DoB,GETDATE())/8766 AS Age FROM Patient " +
                   "WHERE AccountNo = @PatientAcctNo;",cn);

                SqlParameter PatientAcctNo = dataAdapter.SelectCommand.Parameters.Add("@PatientAcctNo", SqlDbType.VarChar, 15);
                PatientAcctNo.Value = tbPatientID.Text;

                cn.Open();
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet);

                if (dataSet.Tables[0].Rows.Count > 0)
                {
                    Session["DentalPatientID"] = tbPatientID.Text;
                    Session["DentalPatientDoB"] = dataSet.Tables[0].Rows[0]["Bdate"].ToString();
                    Session["DentalPatientName"] = dataSet.Tables[0].Rows[0]["Lname"].ToString() + ", " + dataSet.Tables[0].Rows[0]["Fname"].ToString() + " " + dataSet.Tables[0].Rows[0]["Mname"].ToString();
                    Session["DentalPatientAge"] = dataSet.Tables[0].Rows[0]["Age"].ToString();
                    Session["DentalPatientGender"] = dataSet.Tables[0].Rows[0]["Gender"].ToString();
                    Session["DentalDateTime"] = System.DateTime.Now.ToString();

                    //if (ddlExam.Text == "Vital Signs")
                    //{
                    //    cn.Close();
                    //    Response.Redirect("~/CIS/Laboratories/VitalSigns.aspx");
                    //}
                    //else if (ddlExam.Text == "Audiometry")
                    //{
                    //    cn.Close();
                    //    Response.Redirect("~/CIS/Laboratories/LaboratoriesAudiometry.aspx");
                    //}
                    //else if (ddlExam.Text == "Blood Chemistry")
                    //{
                    //    cn.Close();
                    //    Response.Redirect("~/CIS/Laboratories/LaboratoriesBloodChemistry.aspx");
                    //}
                    //else if (ddlExam.Text == "CT Scan")
                    //{
                    //    cn.Close();
                    //    Response.Redirect("~/CIS/Laboratories/LaboratoriesCTScan.aspx");
                    //}
                    //else if (ddlExam.Text == "Cytopathology")
                    //{
                    //    cn.Close();
                    //    Response.Redirect("~/CIS/Laboratories/LaboratoriesCytopathology.aspx");
                    //}

                    if (ddlExam.Text == "Dental")
                    {
                        cn.Close();
                        Response.Redirect("~/CIS/MedicalRecord/Dental/MedicalRecordDental.aspx");
                    }
                    //else if (ddlExam.Text == "Drug Test")
                    //{
                    //    cn.Close();
                    //    Response.Redirect("~/CIS/Laboratories/LaboratoriesDrugTest.aspx");
                    //}
                    //else if (ddlExam.Text == "Fecalysis")
                    //{
                    //    cn.Close();
                    //    Response.Redirect("~/CIS/Laboratories/LaboratoriesFecalysis.aspx");
                    //}
                    //else if (ddlExam.Text == "Haematology")
                    //{
                    //    cn.Close();
                    //    Response.Redirect("~/CIS/Laboratories/LaboratoriesHaematology.aspx");
                    //}
                    //else if (ddlExam.Text == "Immunology")
                    //{
                    //    cn.Close();
                    //    Response.Redirect("~/CIS/Laboratories/LaboratoriesImmunology.aspx");
                    //}
                    //else if (ddlExam.Text == "Physical Exam")
                    //{
                    //    cn.Close();
                    //    Response.Redirect("~/CIS/Laboratories/LaboratoriesPhysicalExam.aspx");
                    //}
                    //else if (ddlExam.Text == "Psychology")
                    //{
                    //    cn.Close();
                    //    Response.Redirect("~/CIS/Laboratories/LaboratoriesPsychology.aspx");
                    //}
                    //else if (ddlExam.Text == "Ultrasound")
                    //{
                    //    cn.Close();
                    //    Response.Redirect("~/CIS/Laboratories/LaboratoriesUltrasound.aspx");
                    //}
                    //else if (ddlExam.Text == "Urinalysis")
                    //{
                    //    cn.Close();
                    //    Response.Redirect("~/CIS/Laboratories/LaboratoriesUrinalysis.aspx");
                    //}
                    //else if (ddlExam.Text == "X-ray")
                    //{
                    //    cn.Close();
                    //    Response.Redirect("~/CIS/Laboratories/LaboratoriesXRay.aspx");
                    //}
                    else //err
                    {
                        Session["DentalPatientID"] = null;
                        Session["DentalPatientDoB"] = null;
                        Session["DentalPatientName"] = null;
                        Session["DentalPatientAge"] = null;
                        Session["DentalPatientGender"] = null;
                        lblMessage.Text = "There seems to be an error. Please contact admin";
                        cn.Close();
                    }
                }
                else
                {
                    Session["DentalPatientID"] = null;
                    Session["DentalPatientDoB"] = null;
                    Session["DentalPatientName"] = null;
                    Session["DentalPatientAge"] = null;
                    Session["DentalPatientGender"] = null;
                    lblMessage.Text = "Unable to find Account No. Check database connection.";
                    cn.Close();
                }

            }

        }
    }

}