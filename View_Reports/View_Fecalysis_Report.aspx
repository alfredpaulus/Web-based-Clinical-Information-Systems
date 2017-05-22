<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Fecalysis_Report.aspx.cs" Inherits="View_Reports_NurseMedtech_View_Fecalysis_Report" %>

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
            <LocalReport ReportPath="Report_Designs\Fecalysis_Report.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource_Fecalysis" Name="DataSet_LabFecalysis" />
                </DataSources>
            </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource_Fecalysis" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData_LabFecalysisUpdated" TypeName="LabReportFecalysisTableAdapters.LabFecalysisTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_CaseNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="DatePerformed" Type="DateTime" />
                    <asp:Parameter Name="PhysicalCharacteristicsColor" Type="String" />
                    <asp:Parameter Name="PhysicalCharacteristicsConsistency" Type="String" />
                    <asp:Parameter Name="ChemicalTestOccultBlood" Type="String" />
                    <asp:Parameter Name="ChemicalTestBilePigmen" Type="String" />
                    <asp:Parameter Name="MicroscopicFindingsRedBloodCells" Type="String" />
                    <asp:Parameter Name="MicroscopicFindingsPussCells" Type="String" />
                    <asp:Parameter Name="MicroscopicFindingsOthers" Type="String" />
                    <asp:Parameter Name="MicroscopicFindingsAscaris" Type="String" />
                    <asp:Parameter Name="MicroscopicFindingsTrichuris" Type="String" />
                    <asp:Parameter Name="MicroscopicFindingsHookworm" Type="String" />
                    <asp:Parameter Name="MicroscopicFindingsEntamoebaHystolityca" Type="String" />
                    <asp:Parameter Name="MicroscopicFindingsCysts" Type="String" />
                    <asp:Parameter Name="MicroscopicFindingsTrophoziotes" Type="String" />
                    <asp:Parameter Name="Remarks" Type="String" />
                    <asp:Parameter Name="Leukocytes" Type="String" />
                    <asp:Parameter Name="Erythrocytes" Type="String" />
                    <asp:Parameter Name="FatGlobules" Type="String" />
                    <asp:Parameter Name="StarchGranules" Type="String" />
                    <asp:Parameter Name="Bacteria" Type="String" />
                    <asp:Parameter Name="ReqPhysican" Type="String" />
                    <asp:Parameter Name="Pathologist" Type="String" />
                    <asp:Parameter Name="PatientAccountNo" Type="Int32" />
                    <asp:Parameter Name="NurseMedTechAccountNo" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblPatientId" DefaultValue="1" Name="CurrentLabReportsPatientID" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblCaseNum" DefaultValue="1" Name="CurrentLabReportsCaseNum" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DatePerformed" Type="DateTime" />
                    <asp:Parameter Name="PhysicalCharacteristicsColor" Type="String" />
                    <asp:Parameter Name="PhysicalCharacteristicsConsistency" Type="String" />
                    <asp:Parameter Name="ChemicalTestOccultBlood" Type="String" />
                    <asp:Parameter Name="ChemicalTestBilePigmen" Type="String" />
                    <asp:Parameter Name="MicroscopicFindingsRedBloodCells" Type="String" />
                    <asp:Parameter Name="MicroscopicFindingsPussCells" Type="String" />
                    <asp:Parameter Name="MicroscopicFindingsOthers" Type="String" />
                    <asp:Parameter Name="MicroscopicFindingsAscaris" Type="String" />
                    <asp:Parameter Name="MicroscopicFindingsTrichuris" Type="String" />
                    <asp:Parameter Name="MicroscopicFindingsHookworm" Type="String" />
                    <asp:Parameter Name="MicroscopicFindingsEntamoebaHystolityca" Type="String" />
                    <asp:Parameter Name="MicroscopicFindingsCysts" Type="String" />
                    <asp:Parameter Name="MicroscopicFindingsTrophoziotes" Type="String" />
                    <asp:Parameter Name="Remarks" Type="String" />
                    <asp:Parameter Name="Leukocytes" Type="String" />
                    <asp:Parameter Name="Erythrocytes" Type="String" />
                    <asp:Parameter Name="FatGlobules" Type="String" />
                    <asp:Parameter Name="StarchGranules" Type="String" />
                    <asp:Parameter Name="Bacteria" Type="String" />
                    <asp:Parameter Name="ReqPhysican" Type="String" />
                    <asp:Parameter Name="Pathologist" Type="String" />
                    <asp:Parameter Name="PatientAccountNo" Type="Int32" />
                    <asp:Parameter Name="NurseMedTechAccountNo" Type="Int32" />
                    <asp:Parameter Name="Original_CaseNo" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </center>
    </div>
    </form>
</body>
</html>
