<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_PhysicalExam_Report.aspx.cs" Inherits="View_Reports_NurseMedtech_View_PhysicalExam_Report" %>

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
            <LocalReport ReportPath="Report_Designs\PhysicalExam_Report.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource_PhysicalExam" Name="DataSet_PhysicalExam" />
                </DataSources>
            </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource_PhysicalExam" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData_PhysicalExam" TypeName="LabReportPhysicalExamTableAdapters.LabPhysicalExamTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_CaseNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PatientAccountNo" Type="Int32" />
                    <asp:Parameter Name="DatePerformed" Type="DateTime" />
                    <asp:Parameter Name="PhysicalExamGeneralAppearance" Type="String" />
                    <asp:Parameter Name="PhysicalExamSkin" Type="String" />
                    <asp:Parameter Name="PhysicalExamHeadAndScalp" Type="String" />
                    <asp:Parameter Name="PhysicalExamEyes" Type="String" />
                    <asp:Parameter Name="PhysicalExamPupils" Type="String" />
                    <asp:Parameter Name="PhysicalExamEars" Type="String" />
                    <asp:Parameter Name="PhysicalExamNoseAndSinuses" Type="String" />
                    <asp:Parameter Name="PhysicalExamMouthThroat" Type="String" />
                    <asp:Parameter Name="PhysicalExamNeckThyroid" Type="String" />
                    <asp:Parameter Name="PhysicalExamChestBreastAxilla" Type="String" />
                    <asp:Parameter Name="PhysicalExamHeartCardiovascular" Type="String" />
                    <asp:Parameter Name="PhysicalExamLungsRespiratory" Type="String" />
                    <asp:Parameter Name="PhysicalExamAbdomen" Type="String" />
                    <asp:Parameter Name="PhysicalExamBackFlanks" Type="String" />
                    <asp:Parameter Name="PhysicalExamAnusRectum" Type="String" />
                    <asp:Parameter Name="PhysicalExamGenitoUrinarySystem" Type="String" />
                    <asp:Parameter Name="PhysicalExamInquinalsGenitals" Type="String" />
                    <asp:Parameter Name="PhysicalExamMusculoSkeletal" Type="String" />
                    <asp:Parameter Name="PhysicalExamExtremeties" Type="String" />
                    <asp:Parameter Name="PhysicalExamReflexes" Type="String" />
                    <asp:Parameter Name="PhysicalExamNeurologicalNervous" Type="String" />
                    <asp:Parameter Name="PhysicalExamENT" Type="String" />
                    <asp:Parameter Name="PhysicalExamFarVisionUncorrectedOS20" Type="String" />
                    <asp:Parameter Name="PhysicalExamFarVisionUncorrectedOD20" Type="String" />
                    <asp:Parameter Name="PhysicalExamFarVisionCorrectedOS20" Type="String" />
                    <asp:Parameter Name="PhysicalExamFarVisionCorrectedOD20" Type="String" />
                    <asp:Parameter Name="PhysicalExamNearVisionUncorrectedOSJ" Type="String" />
                    <asp:Parameter Name="PhysicalExamNearVisionUncorrectedODJ" Type="String" />
                    <asp:Parameter Name="PhysicalExamNearVisionCorrectedOSJ" Type="String" />
                    <asp:Parameter Name="PhysicalExamNearVisionCorrectedODJ" Type="String" />
                    <asp:Parameter Name="PhysicalExamIshiharaColor" Type="String" />
                    <asp:Parameter Name="PhysicalExamColorVision" Type="String" />
                    <asp:Parameter Name="PhysicalExamLeftAS" Type="String" />
                    <asp:Parameter Name="PhysicalExamRightAD" Type="String" />
                    <asp:Parameter Name="PhysicalExamSatisfactoryHearing" Type="String" />
                    <asp:Parameter Name="PhysicalExamHearingMettsStandardsSTCWCode" Type="String" />
                    <asp:Parameter Name="PhysicalExamVividness" Type="String" />
                    <asp:Parameter Name="PhysicalExamBodyBuilt" Type="String" />
                    <asp:Parameter Name="PhysicalExamItems" Type="String" />
                    <asp:Parameter Name="PhysicalExamVisualActivityStandard" Type="String" />
                    <asp:Parameter Name="PhysicalExamFitForLookoutDuties" Type="String" />
                    <asp:Parameter Name="PhysicalExamSatisfactorySight" Type="String" />
                    <asp:Parameter Name="PhysicalExamColorVisionStandard" Type="String" />
                    <asp:Parameter Name="PhysicalExamSatisfactoryPschologycalTest" Type="String" />
                    <asp:Parameter Name="Recommendations" Type="String" />
                    <asp:Parameter Name="ExamPhysician" Type="String" />
                    <asp:Parameter Name="MedicalDirector" Type="String" />
                    <asp:Parameter Name="NurseMedTechAccountNo" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblPatientId" DefaultValue="1" Name="CurrentLabReportsPatientID" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblCaseNum" DefaultValue="1" Name="CurrentLabReportsCaseNum" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PatientAccountNo" Type="Int32" />
                    <asp:Parameter Name="DatePerformed" Type="DateTime" />
                    <asp:Parameter Name="PhysicalExamGeneralAppearance" Type="String" />
                    <asp:Parameter Name="PhysicalExamSkin" Type="String" />
                    <asp:Parameter Name="PhysicalExamHeadAndScalp" Type="String" />
                    <asp:Parameter Name="PhysicalExamEyes" Type="String" />
                    <asp:Parameter Name="PhysicalExamPupils" Type="String" />
                    <asp:Parameter Name="PhysicalExamEars" Type="String" />
                    <asp:Parameter Name="PhysicalExamNoseAndSinuses" Type="String" />
                    <asp:Parameter Name="PhysicalExamMouthThroat" Type="String" />
                    <asp:Parameter Name="PhysicalExamNeckThyroid" Type="String" />
                    <asp:Parameter Name="PhysicalExamChestBreastAxilla" Type="String" />
                    <asp:Parameter Name="PhysicalExamHeartCardiovascular" Type="String" />
                    <asp:Parameter Name="PhysicalExamLungsRespiratory" Type="String" />
                    <asp:Parameter Name="PhysicalExamAbdomen" Type="String" />
                    <asp:Parameter Name="PhysicalExamBackFlanks" Type="String" />
                    <asp:Parameter Name="PhysicalExamAnusRectum" Type="String" />
                    <asp:Parameter Name="PhysicalExamGenitoUrinarySystem" Type="String" />
                    <asp:Parameter Name="PhysicalExamInquinalsGenitals" Type="String" />
                    <asp:Parameter Name="PhysicalExamMusculoSkeletal" Type="String" />
                    <asp:Parameter Name="PhysicalExamExtremeties" Type="String" />
                    <asp:Parameter Name="PhysicalExamReflexes" Type="String" />
                    <asp:Parameter Name="PhysicalExamNeurologicalNervous" Type="String" />
                    <asp:Parameter Name="PhysicalExamENT" Type="String" />
                    <asp:Parameter Name="PhysicalExamFarVisionUncorrectedOS20" Type="String" />
                    <asp:Parameter Name="PhysicalExamFarVisionUncorrectedOD20" Type="String" />
                    <asp:Parameter Name="PhysicalExamFarVisionCorrectedOS20" Type="String" />
                    <asp:Parameter Name="PhysicalExamFarVisionCorrectedOD20" Type="String" />
                    <asp:Parameter Name="PhysicalExamNearVisionUncorrectedOSJ" Type="String" />
                    <asp:Parameter Name="PhysicalExamNearVisionUncorrectedODJ" Type="String" />
                    <asp:Parameter Name="PhysicalExamNearVisionCorrectedOSJ" Type="String" />
                    <asp:Parameter Name="PhysicalExamNearVisionCorrectedODJ" Type="String" />
                    <asp:Parameter Name="PhysicalExamIshiharaColor" Type="String" />
                    <asp:Parameter Name="PhysicalExamColorVision" Type="String" />
                    <asp:Parameter Name="PhysicalExamLeftAS" Type="String" />
                    <asp:Parameter Name="PhysicalExamRightAD" Type="String" />
                    <asp:Parameter Name="PhysicalExamSatisfactoryHearing" Type="String" />
                    <asp:Parameter Name="PhysicalExamHearingMettsStandardsSTCWCode" Type="String" />
                    <asp:Parameter Name="PhysicalExamVividness" Type="String" />
                    <asp:Parameter Name="PhysicalExamBodyBuilt" Type="String" />
                    <asp:Parameter Name="PhysicalExamItems" Type="String" />
                    <asp:Parameter Name="PhysicalExamVisualActivityStandard" Type="String" />
                    <asp:Parameter Name="PhysicalExamFitForLookoutDuties" Type="String" />
                    <asp:Parameter Name="PhysicalExamSatisfactorySight" Type="String" />
                    <asp:Parameter Name="PhysicalExamColorVisionStandard" Type="String" />
                    <asp:Parameter Name="PhysicalExamSatisfactoryPschologycalTest" Type="String" />
                    <asp:Parameter Name="Recommendations" Type="String" />
                    <asp:Parameter Name="ExamPhysician" Type="String" />
                    <asp:Parameter Name="MedicalDirector" Type="String" />
                    <asp:Parameter Name="NurseMedTechAccountNo" Type="Int32" />
                    <asp:Parameter Name="Original_CaseNo" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </center>
    </div>
    </form>
</body>
</html>
