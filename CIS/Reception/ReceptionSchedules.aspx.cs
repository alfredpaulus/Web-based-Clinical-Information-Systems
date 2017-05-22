using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

public partial class CIS_Reception_ReceptionSchedules : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string pdfPath = Server.MapPath("~/otherfiles/fortmedmakatispecialistsched.pdf");
        WebClient client = new WebClient();
        Byte[] buffer = client.DownloadData(pdfPath);
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-length", buffer.Length.ToString());
        Response.BinaryWrite(buffer);
    }
}