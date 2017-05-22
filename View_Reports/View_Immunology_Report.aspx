<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Immunology_Report.aspx.cs" Inherits="View_Reports_NurseMedtech_View_Immunology_Report" %>

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
            <LocalReport ReportPath="Report_Designs\Immunology_Report.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource_Immunology" Name="DataSet_Immunology" />
                </DataSources>
            </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource_Immunology" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData_Immunology" TypeName="LabReportImmunologyTableAdapters.LabImmunologyTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_CaseNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PatientAccountNo" Type="Int32" />
                    <asp:Parameter Name="DatePerformed" Type="DateTime" />
                    <asp:Parameter Name="HepatitisHBsAGPatientCount" Type="Double" />
                    <asp:Parameter Name="HepatitisHBsAGCutOffValue" Type="Double" />
                    <asp:Parameter Name="HepatitisHBsAGRemarks" Type="String" />
                    <asp:Parameter Name="HepatitisAntiHBSPatientCount" Type="Double" />
                    <asp:Parameter Name="HepatitisAntiHBSCutOffValue" Type="Double" />
                    <asp:Parameter Name="HepatitisAntiHBSRemarks" Type="String" />
                    <asp:Parameter Name="HepatitisAntiHBCIgCPatientCount" Type="Double" />
                    <asp:Parameter Name="HepatitisAntiHBCIgCCutOffValue" Type="Double" />
                    <asp:Parameter Name="HepatitisAntiHBCIgCRemarks" Type="String" />
                    <asp:Parameter Name="HepatitisAntiHBePatientCount" Type="Double" />
                    <asp:Parameter Name="HepatitisAntiHBeCutOffValue" Type="Double" />
                    <asp:Parameter Name="HepatitisAntiHBeRemarks" Type="String" />
                    <asp:Parameter Name="HepatitisAntiHAVIgMPatientCount" Type="Double" />
                    <asp:Parameter Name="HepatitisAntiHAVIgCutOffValue" Type="Double" />
                    <asp:Parameter Name="HepatitisAntiHAVIgRemarks" Type="String" />
                    <asp:Parameter Name="Findings" Type="String" />
                    <asp:Parameter Name="ThyroidT3" Type="Double" />
                    <asp:Parameter Name="ThyroidT4" Type="Double" />
                    <asp:Parameter Name="ThyroidTSH" Type="Double" />
                    <asp:Parameter Name="ThyroidFT3" Type="Double" />
                    <asp:Parameter Name="ThyroidFT4" Type="Double" />
                    <asp:Parameter Name="TumorAFPLiverResult" Type="String" />
                    <asp:Parameter Name="TumorAFPLiverNormalValues" Type="String" />
                    <asp:Parameter Name="TumorCEAColonResult" Type="String" />
                    <asp:Parameter Name="TumorCEAColonNormalValues" Type="String" />
                    <asp:Parameter Name="TumorCA125OvaryResult" Type="String" />
                    <asp:Parameter Name="TumorCA125OvaryNormalValues" Type="String" />
                    <asp:Parameter Name="TumorPSAResult" Type="String" />
                    <asp:Parameter Name="TumorPSANormalValues" Type="String" />
                    <asp:Parameter Name="TumorCA153BreastResult" Type="String" />
                    <asp:Parameter Name="TumorCA153BreastNormalValues" Type="String" />
                    <asp:Parameter Name="TumorCA199PancreasResult" Type="String" />
                    <asp:Parameter Name="TumorCA199PancreasNormalValues" Type="String" />
                    <asp:Parameter Name="TumorBHCGResult" Type="String" />
                    <asp:Parameter Name="TumorBHCGNormalValues" Type="String" />
                    <asp:Parameter Name="TumorCA724ColorectalResult" Type="String" />
                    <asp:Parameter Name="TumorCA724ColorectalNormalValues" Type="String" />
                    <asp:Parameter Name="HIVTestExamDate" Type="DateTime" />
                    <asp:Parameter Name="OtherTestUsed" Type="String" />
                    <asp:Parameter Name="PhysicianLicenseNo" Type="Int32" />
                    <asp:Parameter Name="HIVProficiencyCertNoMedTech" Type="Int32" />
                    <asp:Parameter Name="ExpiryDate" Type="DateTime" />
                    <asp:Parameter Name="ReqPhysician" Type="String" />
                    <asp:Parameter Name="Pathologist" Type="String" />
                    <asp:Parameter Name="NurseMedTechAccountNo" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblPatientId" DefaultValue="1" Name="CurrentLabReportsPatientID" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblCaseNum" DefaultValue="1" Name="CurrentLabReportsCaseNum" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PatientAccountNo" Type="Int32" />
                    <asp:Parameter Name="DatePerformed" Type="DateTime" />
                    <asp:Parameter Name="HepatitisHBsAGPatientCount" Type="Double" />
                    <asp:Parameter Name="HepatitisHBsAGCutOffValue" Type="Double" />
                    <asp:Parameter Name="HepatitisHBsAGRemarks" Type="String" />
                    <asp:Parameter Name="HepatitisAntiHBSPatientCount" Type="Double" />
                    <asp:Parameter Name="HepatitisAntiHBSCutOffValue" Type="Double" />
                    <asp:Parameter Name="HepatitisAntiHBSRemarks" Type="String" />
                    <asp:Parameter Name="HepatitisAntiHBCIgCPatientCount" Type="Double" />
                    <asp:Parameter Name="HepatitisAntiHBCIgCCutOffValue" Type="Double" />
                    <asp:Parameter Name="HepatitisAntiHBCIgCRemarks" Type="String" />
                    <asp:Parameter Name="HepatitisAntiHBePatientCount" Type="Double" />
                    <asp:Parameter Name="HepatitisAntiHBeCutOffValue" Type="Double" />
                    <asp:Parameter Name="HepatitisAntiHBeRemarks" Type="String" />
                    <asp:Parameter Name="HepatitisAntiHAVIgMPatientCount" Type="Double" />
                    <asp:Parameter Name="HepatitisAntiHAVIgCutOffValue" Type="Double" />
                    <asp:Parameter Name="HepatitisAntiHAVIgRemarks" Type="String" />
                    <asp:Parameter Name="Findings" Type="String" />
                    <asp:Parameter Name="ThyroidT3" Type="Double" />
                    <asp:Parameter Name="ThyroidT4" Type="Double" />
                    <asp:Parameter Name="ThyroidTSH" Type="Double" />
                    <asp:Parameter Name="ThyroidFT3" Type="Double" />
                    <asp:Parameter Name="ThyroidFT4" Type="Double" />
                    <asp:Parameter Name="TumorAFPLiverResult" Type="String" />
                    <asp:Parameter Name="TumorAFPLiverNormalValues" Type="String" />
                    <asp:Parameter Name="TumorCEAColonResult" Type="String" />
                    <asp:Parameter Name="TumorCEAColonNormalValues" Type="String" />
                    <asp:Parameter Name="TumorCA125OvaryResult" Type="String" />
                    <asp:Parameter Name="TumorCA125OvaryNormalValues" Type="String" />
                    <asp:Parameter Name="TumorPSAResult" Type="String" />
                    <asp:Parameter Name="TumorPSANormalValues" Type="String" />
                    <asp:Parameter Name="TumorCA153BreastResult" Type="String" />
                    <asp:Parameter Name="TumorCA153BreastNormalValues" Type="String" />
                    <asp:Parameter Name="TumorCA199PancreasResult" Type="String" />
                    <asp:Parameter Name="TumorCA199PancreasNormalValues" Type="String" />
                    <asp:Parameter Name="TumorBHCGResult" Type="String" />
                    <asp:Parameter Name="TumorBHCGNormalValues" Type="String" />
                    <asp:Parameter Name="TumorCA724ColorectalResult" Type="String" />
                    <asp:Parameter Name="TumorCA724ColorectalNormalValues" Type="String" />
                    <asp:Parameter Name="HIVTestExamDate" Type="DateTime" />
                    <asp:Parameter Name="OtherTestUsed" Type="String" />
                    <asp:Parameter Name="PhysicianLicenseNo" Type="Int32" />
                    <asp:Parameter Name="HIVProficiencyCertNoMedTech" Type="Int32" />
                    <asp:Parameter Name="ExpiryDate" Type="DateTime" />
                    <asp:Parameter Name="ReqPhysician" Type="String" />
                    <asp:Parameter Name="Pathologist" Type="String" />
                    <asp:Parameter Name="NurseMedTechAccountNo" Type="Int32" />
                    <asp:Parameter Name="Original_CaseNo" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </center>
    </div>
    </form>
</body>
</html>
