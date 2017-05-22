<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Ultrasound_Report.aspx.cs" Inherits="View_Reports_NurseMedtech_View_Ultrasound_Report" %>

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
            <LocalReport ReportPath="Report_Designs\LabUltrasound_Report.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource_Ultrasound" Name="DataSet_UltrasoundUpdated" />
                </DataSources>
            </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource_Ultrasound" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData_Ultrasound" TypeName="LabReportUltrasoundTableAdapters.LabUltrasoundTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_CaseNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PatientAccountNo" Type="Int32" />
                    <asp:Parameter Name="DatePerformed" Type="DateTime" />
                    <asp:Parameter Name="UltrasoundFindingsFatalNumber" Type="String" />
                    <asp:Parameter Name="UltrasoundFindingsPlacentalLocationGrade" Type="String" />
                    <asp:Parameter Name="UltrasoundFindingsFatalMovement" Type="String" />
                    <asp:Parameter Name="UltrasoundFindingsFSex" Type="String" />
                    <asp:Parameter Name="UltrasoundFindingsFatalLie" Type="String" />
                    <asp:Parameter Name="UltrasoundFindingsAmnioticFluid" Type="String" />
                    <asp:Parameter Name="UltrasoundFindingsCardiacActivity" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksCRL" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksCRLWeeks" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksBPD" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksBPDWeeks" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksEFBW" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksAverageGestationalAge" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksEDC" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksFL" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksFLWeeks" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksAC" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksACWeeks" Type="String" />
                    <asp:Parameter Name="Findings" Type="String" />
                    <asp:Parameter Name="Sonologist" Type="String" />
                    <asp:Parameter Name="NurseMedTechAccountNo" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblPatientId" DefaultValue="1" Name="CurrentLabReportsPatientID" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblCaseNum" DefaultValue="1" Name="CurrentLabReportsCaseNum" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PatientAccountNo" Type="Int32" />
                    <asp:Parameter Name="DatePerformed" Type="DateTime" />
                    <asp:Parameter Name="UltrasoundFindingsFatalNumber" Type="String" />
                    <asp:Parameter Name="UltrasoundFindingsPlacentalLocationGrade" Type="String" />
                    <asp:Parameter Name="UltrasoundFindingsFatalMovement" Type="String" />
                    <asp:Parameter Name="UltrasoundFindingsFSex" Type="String" />
                    <asp:Parameter Name="UltrasoundFindingsFatalLie" Type="String" />
                    <asp:Parameter Name="UltrasoundFindingsAmnioticFluid" Type="String" />
                    <asp:Parameter Name="UltrasoundFindingsCardiacActivity" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksCRL" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksCRLWeeks" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksBPD" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksBPDWeeks" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksEFBW" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksAverageGestationalAge" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksEDC" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksFL" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksFLWeeks" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksAC" Type="String" />
                    <asp:Parameter Name="UltrasoundMeasurementLmpWeeksACWeeks" Type="String" />
                    <asp:Parameter Name="Findings" Type="String" />
                    <asp:Parameter Name="Sonologist" Type="String" />
                    <asp:Parameter Name="NurseMedTechAccountNo" Type="Int32" />
                    <asp:Parameter Name="Original_CaseNo" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </center>
    </div>
    </form>
</body>
</html>
