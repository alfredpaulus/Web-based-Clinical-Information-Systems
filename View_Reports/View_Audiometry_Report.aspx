<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Audiometry_Report.aspx.cs" Inherits="View_Reports_NurseMedtech_View_Audiometry_Report" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-weight: 700">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <br />
       <center><b> FORT MED CLINICAL REPORTS</b></center><br />
        <br />
        <asp:Label ID="lblPatientId" runat="server" Text="."></asp:Label>
        <asp:Label ID="lblCaseNum" runat="server" Text="."></asp:Label>
        <center><rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="696px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="700px">
            <LocalReport ReportPath="Report_Designs\Audiometry_Report.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet_Audiometry" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer></center>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LabReportAudiometryTableAdapters.LabAudiometryTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_CaseNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="DatePerformed" Type="DateTime" />
                <asp:Parameter Name="AirRightEar250Hz" Type="Int32" />
                <asp:Parameter Name="AirRightEar500Hz" Type="Int32" />
                <asp:Parameter Name="AirRightEar750Hz" Type="Int32" />
                <asp:Parameter Name="AirRightEar1000Hz" Type="Int32" />
                <asp:Parameter Name="AirRightEar1500Hz" Type="Int32" />
                <asp:Parameter Name="AirRightEar2000Hz" Type="Int32" />
                <asp:Parameter Name="AirRightEar3000Hz" Type="Int32" />
                <asp:Parameter Name="AirRightEar4000Hz" Type="Int32" />
                <asp:Parameter Name="AirRightEar6000Hz" Type="Int32" />
                <asp:Parameter Name="AirRightEar8000Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar250Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar500Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar750Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar1000Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar1500Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar2000Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar3000Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar4000Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar6000Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar8000Hz" Type="Int32" />
                <asp:Parameter Name="Hearing" Type="String" />
                <asp:Parameter Name="Remarks" Type="String" />
                <asp:Parameter Name="RequestDoctor" Type="String" />
                <asp:Parameter Name="Audiologist" Type="String" />
                <asp:Parameter Name="PatientAccountNo" Type="Int32" />
                <asp:Parameter Name="NurseMedTechAccountNo" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="lblPatientId" DefaultValue="1" Name="CurrentLabReportsPatientID" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lblCaseNum" DefaultValue="1" Name="CurrentLabReportsCaseNum" PropertyName="Text" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="DatePerformed" Type="DateTime" />
                <asp:Parameter Name="AirRightEar250Hz" Type="Int32" />
                <asp:Parameter Name="AirRightEar500Hz" Type="Int32" />
                <asp:Parameter Name="AirRightEar750Hz" Type="Int32" />
                <asp:Parameter Name="AirRightEar1000Hz" Type="Int32" />
                <asp:Parameter Name="AirRightEar1500Hz" Type="Int32" />
                <asp:Parameter Name="AirRightEar2000Hz" Type="Int32" />
                <asp:Parameter Name="AirRightEar3000Hz" Type="Int32" />
                <asp:Parameter Name="AirRightEar4000Hz" Type="Int32" />
                <asp:Parameter Name="AirRightEar6000Hz" Type="Int32" />
                <asp:Parameter Name="AirRightEar8000Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar250Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar500Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar750Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar1000Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar1500Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar2000Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar3000Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar4000Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar6000Hz" Type="Int32" />
                <asp:Parameter Name="AirLeftEar8000Hz" Type="Int32" />
                <asp:Parameter Name="Hearing" Type="String" />
                <asp:Parameter Name="Remarks" Type="String" />
                <asp:Parameter Name="RequestDoctor" Type="String" />
                <asp:Parameter Name="Audiologist" Type="String" />
                <asp:Parameter Name="PatientAccountNo" Type="Int32" />
                <asp:Parameter Name="NurseMedTechAccountNo" Type="Int32" />
                <asp:Parameter Name="Original_CaseNo" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </div>
    </form>
</body>
</html>
