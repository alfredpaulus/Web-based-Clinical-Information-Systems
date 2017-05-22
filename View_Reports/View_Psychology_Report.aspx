<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Psychology_Report.aspx.cs" Inherits="View_Reports_NurseMedtech_View_Psychology_Report" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <br />
       <center><b>FORT MED CLINICAL REPORTS</b></center><br />
        <br />
        <asp:Label ID="lblPatientId" runat="server" Text="."></asp:Label>
        <asp:Label ID="lblCaseNum" runat="server" Text="."></asp:Label>
        <center><rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="800px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="800px">
            <LocalReport ReportPath="Report_Designs\Psychology_Report.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource_Psychology" Name="DataSet_Psychology" />
                </DataSources>
            </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource_Psychology" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData_Pschology" TypeName="LabReportPsychologyTableAdapters.LabPsychologyTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_CaseNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PatientAccountNo" Type="Int32" />
                    <asp:Parameter Name="DatePerformed" Type="DateTime" />
                    <asp:Parameter Name="Others" Type="String" />
                    <asp:Parameter Name="IntellectualLevel" Type="String" />
                    <asp:Parameter Name="Persevering" Type="Int32" />
                    <asp:Parameter Name="SelfDisciplined" Type="Int32" />
                    <asp:Parameter Name="Enthusiastic" Type="Int32" />
                    <asp:Parameter Name="Venturesome" Type="Int32" />
                    <asp:Parameter Name="Obedience" Type="Int32" />
                    <asp:Parameter Name="CanWithstandIsolationAndBoredome" Type="Int32" />
                    <asp:Parameter Name="CanWithstandExtremeNoise" Type="Int32" />
                    <asp:Parameter Name="FacesReality" Type="Int32" />
                    <asp:Parameter Name="Confidence" Type="Int32" />
                    <asp:Parameter Name="TolerantToStress" Type="Int32" />
                    <asp:Parameter Name="Relaxed" Type="Int32" />
                    <asp:Parameter Name="Realistic" Type="Int32" />
                    <asp:Parameter Name="FreeOfJealousy" Type="Int32" />
                    <asp:Parameter Name="Adaptable" Type="Int32" />
                    <asp:Parameter Name="PracticalMinded" Type="Int32" />
                    <asp:Parameter Name="Assertive" Type="Int32" />
                    <asp:Parameter Name="Independent" Type="Int32" />
                    <asp:Parameter Name="Resourceful" Type="Int32" />
                    <asp:Parameter Name="GoalOriented" Type="Int32" />
                    <asp:Parameter Name="Psychologist" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblPatientId" DefaultValue="1" Name="CurrentLabReportsPatientID" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblCaseNum" DefaultValue="1" Name="CurrentLabReportsCaseNum" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PatientAccountNo" Type="Int32" />
                    <asp:Parameter Name="DatePerformed" Type="DateTime" />
                    <asp:Parameter Name="Others" Type="String" />
                    <asp:Parameter Name="IntellectualLevel" Type="String" />
                    <asp:Parameter Name="Persevering" Type="Int32" />
                    <asp:Parameter Name="SelfDisciplined" Type="Int32" />
                    <asp:Parameter Name="Enthusiastic" Type="Int32" />
                    <asp:Parameter Name="Venturesome" Type="Int32" />
                    <asp:Parameter Name="Obedience" Type="Int32" />
                    <asp:Parameter Name="CanWithstandIsolationAndBoredome" Type="Int32" />
                    <asp:Parameter Name="CanWithstandExtremeNoise" Type="Int32" />
                    <asp:Parameter Name="FacesReality" Type="Int32" />
                    <asp:Parameter Name="Confidence" Type="Int32" />
                    <asp:Parameter Name="TolerantToStress" Type="Int32" />
                    <asp:Parameter Name="Relaxed" Type="Int32" />
                    <asp:Parameter Name="Realistic" Type="Int32" />
                    <asp:Parameter Name="FreeOfJealousy" Type="Int32" />
                    <asp:Parameter Name="Adaptable" Type="Int32" />
                    <asp:Parameter Name="PracticalMinded" Type="Int32" />
                    <asp:Parameter Name="Assertive" Type="Int32" />
                    <asp:Parameter Name="Independent" Type="Int32" />
                    <asp:Parameter Name="Resourceful" Type="Int32" />
                    <asp:Parameter Name="GoalOriented" Type="Int32" />
                    <asp:Parameter Name="Psychologist" Type="String" />
                    <asp:Parameter Name="Original_CaseNo" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </center>
    </div>
    </form>
</body>
</html>
