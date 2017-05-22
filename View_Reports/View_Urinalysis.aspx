<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Urinalysis.aspx.cs" Inherits="View_Reports_NurseMedtech_View_Urinalysis" %>

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
            <LocalReport ReportPath="Report_Designs\Urinalysis_Report.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource_Urinalysis" Name="DataSet_LabUrinalysis" />
                </DataSources>
            </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource_Urinalysis" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData_Urinalysis" TypeName="LabReportUrinalysisTableAdapters.LabUrinalysisTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_CaseNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PatientAccountNo" Type="Int32" />
                    <asp:Parameter Name="DatePerformed" Type="DateTime" />
                    <asp:Parameter Name="PhysicalExaminationColor" Type="String" />
                    <asp:Parameter Name="PhysicalExaminationTransparency" Type="String" />
                    <asp:Parameter Name="PhysicalExaminationReaction" Type="String" />
                    <asp:Parameter Name="PhysicalExaminationSpecificGravity" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationPusCells" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationRBC" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationEpithelialCells" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationMucusThreads" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationBacteria" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationYeastCells" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationAmorphousUrates" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationAmorphous" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationCalciumOxalates" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationTriplePhosphate" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationUricAcid" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationOthers" Type="String" />
                    <asp:Parameter Name="ChemicalExaminationProtein" Type="String" />
                    <asp:Parameter Name="ChemicalExaminationSugar" Type="String" />
                    <asp:Parameter Name="ChemicalExaminationKetone" Type="String" />
                    <asp:Parameter Name="ChemicalExaminationBlood" Type="String" />
                    <asp:Parameter Name="ChemicalExaminationPus" Type="String" />
                    <asp:Parameter Name="ChemicalExaminationRBC" Type="String" />
                    <asp:Parameter Name="ChemicalExaminationNitrites" Type="String" />
                    <asp:Parameter Name="ChemicalExaminationBilirubin" Type="String" />
                    <asp:Parameter Name="ChemicalExaminationOthers" Type="String" />
                    <asp:Parameter Name="OtherExaminationPregnancyTest" Type="String" />
                    <asp:Parameter Name="OtherExaminationSpecimen" Type="String" />
                    <asp:Parameter Name="OtherExaminationMethod" Type="String" />
                    <asp:Parameter Name="OtherExaminationRemarks" Type="String" />
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
                    <asp:Parameter Name="PhysicalExaminationColor" Type="String" />
                    <asp:Parameter Name="PhysicalExaminationTransparency" Type="String" />
                    <asp:Parameter Name="PhysicalExaminationReaction" Type="String" />
                    <asp:Parameter Name="PhysicalExaminationSpecificGravity" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationPusCells" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationRBC" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationEpithelialCells" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationMucusThreads" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationBacteria" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationYeastCells" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationAmorphousUrates" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationAmorphous" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationCalciumOxalates" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationTriplePhosphate" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationUricAcid" Type="String" />
                    <asp:Parameter Name="MicroscopicExaminationOthers" Type="String" />
                    <asp:Parameter Name="ChemicalExaminationProtein" Type="String" />
                    <asp:Parameter Name="ChemicalExaminationSugar" Type="String" />
                    <asp:Parameter Name="ChemicalExaminationKetone" Type="String" />
                    <asp:Parameter Name="ChemicalExaminationBlood" Type="String" />
                    <asp:Parameter Name="ChemicalExaminationPus" Type="String" />
                    <asp:Parameter Name="ChemicalExaminationRBC" Type="String" />
                    <asp:Parameter Name="ChemicalExaminationNitrites" Type="String" />
                    <asp:Parameter Name="ChemicalExaminationBilirubin" Type="String" />
                    <asp:Parameter Name="ChemicalExaminationOthers" Type="String" />
                    <asp:Parameter Name="OtherExaminationPregnancyTest" Type="String" />
                    <asp:Parameter Name="OtherExaminationSpecimen" Type="String" />
                    <asp:Parameter Name="OtherExaminationMethod" Type="String" />
                    <asp:Parameter Name="OtherExaminationRemarks" Type="String" />
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
