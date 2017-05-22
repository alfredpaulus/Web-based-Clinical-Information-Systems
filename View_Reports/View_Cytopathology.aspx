<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Cytopathology.aspx.cs" Inherits="View_Reports_NurseMedtech_View_Cytopathology" %>

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
            <LocalReport ReportPath="Report_Designs\Cytopathology_Report.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource_Cytopathology" Name="DataSet_Cytopathology" />
                </DataSources>
            </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource_Cytopathology" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData_Cytopathology" TypeName="LabReportCytopathologyTableAdapters.LabCytopathologyTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_CaseNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="DatePerformed" Type="DateTime" />
                    <asp:Parameter Name="SpecimenAdequacySatisfactory" Type="Boolean" />
                    <asp:Parameter Name="SpecimenAdequacyLessThanOptimal" Type="Boolean" />
                    <asp:Parameter Name="SpecimenAdequacyUnsatisfactory" Type="Boolean" />
                    <asp:Parameter Name="SpecimenAdequacyUnsatisfactoryScantCellularity" Type="Boolean" />
                    <asp:Parameter Name="SpecimenAdequacyUnsatisfactoryPoorFixation" Type="Boolean" />
                    <asp:Parameter Name="SpecimenAdequacyUnsatisfactoryObscuringInflammation" Type="Boolean" />
                    <asp:Parameter Name="SpecimenAdequacyUnsatisfactoryObscuringBlood" Type="Boolean" />
                    <asp:Parameter Name="SpecimenAdequacyUnsatisfactoryExcessiveCytosis" Type="Boolean" />
                    <asp:Parameter Name="GeneralCategorizationWithinNormalLimits" Type="Boolean" />
                    <asp:Parameter Name="GeneralCategorizationBenignCellularChange" Type="Boolean" />
                    <asp:Parameter Name="GeneralCategorizationFurtherActionRecommended" Type="Boolean" />
                    <asp:Parameter Name="DescriptiveDiagnosisInfectionFungiConsistent" Type="Boolean" />
                    <asp:Parameter Name="DescriptiveDiagnosisInfectionTrichomonasVaginalis" Type="Boolean" />
                    <asp:Parameter Name="DescriptiveDiagnosisInfectionOther" Type="String" />
                    <asp:Parameter Name="DescriptiveDiagnosisReactiveInflammation" Type="Boolean" />
                    <asp:Parameter Name="DescriptiveDiagnosisReactiveEffectsOfIUD" Type="Boolean" />
                    <asp:Parameter Name="DescriptiveDiagnosisReactiveRadiationEffect" Type="Boolean" />
                    <asp:Parameter Name="DescriptiveDiagnosisReactiveChemotheraphyEffect" Type="Boolean" />
                    <asp:Parameter Name="DescriptiveDiagnosisReactiveSquamousMetaplasis" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousAtypia" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelial" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelialLowGrade" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelialLowGradeHPV" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelialLowGradeMildDysplasia" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelialHighGrade" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelialHighGradeModerateDysplasia" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelialHighGradeSevereDysplasia" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelialHighGradeCarcinomaInCitu" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesEndometrialCellsPresent" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesEndometrialCellsPresentOutOfPhase" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesEndometrialCellsPresentInPostmenopaused" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesEndometrialCellsPresentNoMenstrualHistory" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelialAtypicalGlanduralCellsUndetermined" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelialAdenocarcinoma" Type="Boolean" />
                    <asp:Parameter Name="NonEpithelialMalignantNeoplasm" Type="String" />
                    <asp:Parameter Name="HormonalEvaluationCompatible" Type="Boolean" />
                    <asp:Parameter Name="HormonalEvaluationIncompatible" Type="Boolean" />
                    <asp:Parameter Name="HormonalEvaluationEvaluationNoPossible" Type="Boolean" />
                    <asp:Parameter Name="HormonalEvaluationEvaluationNoPossibleCervicalSpecimen" Type="Boolean" />
                    <asp:Parameter Name="HormonalEvaluationEvaluationNoPossibleInflammation" Type="Boolean" />
                    <asp:Parameter Name="HormonalEvaluationEvaluationNoPossibleInsufficientHistory" Type="Boolean" />
                    <asp:Parameter Name="HormonalEvaluationOther" Type="String" />
                    <asp:Parameter Name="ReqPhysician" Type="String" />
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
                    <asp:Parameter Name="SpecimenAdequacySatisfactory" Type="Boolean" />
                    <asp:Parameter Name="SpecimenAdequacyLessThanOptimal" Type="Boolean" />
                    <asp:Parameter Name="SpecimenAdequacyUnsatisfactory" Type="Boolean" />
                    <asp:Parameter Name="SpecimenAdequacyUnsatisfactoryScantCellularity" Type="Boolean" />
                    <asp:Parameter Name="SpecimenAdequacyUnsatisfactoryPoorFixation" Type="Boolean" />
                    <asp:Parameter Name="SpecimenAdequacyUnsatisfactoryObscuringInflammation" Type="Boolean" />
                    <asp:Parameter Name="SpecimenAdequacyUnsatisfactoryObscuringBlood" Type="Boolean" />
                    <asp:Parameter Name="SpecimenAdequacyUnsatisfactoryExcessiveCytosis" Type="Boolean" />
                    <asp:Parameter Name="GeneralCategorizationWithinNormalLimits" Type="Boolean" />
                    <asp:Parameter Name="GeneralCategorizationBenignCellularChange" Type="Boolean" />
                    <asp:Parameter Name="GeneralCategorizationFurtherActionRecommended" Type="Boolean" />
                    <asp:Parameter Name="DescriptiveDiagnosisInfectionFungiConsistent" Type="Boolean" />
                    <asp:Parameter Name="DescriptiveDiagnosisInfectionTrichomonasVaginalis" Type="Boolean" />
                    <asp:Parameter Name="DescriptiveDiagnosisInfectionOther" Type="String" />
                    <asp:Parameter Name="DescriptiveDiagnosisReactiveInflammation" Type="Boolean" />
                    <asp:Parameter Name="DescriptiveDiagnosisReactiveEffectsOfIUD" Type="Boolean" />
                    <asp:Parameter Name="DescriptiveDiagnosisReactiveRadiationEffect" Type="Boolean" />
                    <asp:Parameter Name="DescriptiveDiagnosisReactiveChemotheraphyEffect" Type="Boolean" />
                    <asp:Parameter Name="DescriptiveDiagnosisReactiveSquamousMetaplasis" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousAtypia" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelial" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelialLowGrade" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelialLowGradeHPV" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelialLowGradeMildDysplasia" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelialHighGrade" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelialHighGradeModerateDysplasia" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelialHighGradeSevereDysplasia" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelialHighGradeCarcinomaInCitu" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesEndometrialCellsPresent" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesEndometrialCellsPresentOutOfPhase" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesEndometrialCellsPresentInPostmenopaused" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesEndometrialCellsPresentNoMenstrualHistory" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelialAtypicalGlanduralCellsUndetermined" Type="Boolean" />
                    <asp:Parameter Name="EpithelialCellAbnormalitiesSquamousIntraepithelialAdenocarcinoma" Type="Boolean" />
                    <asp:Parameter Name="NonEpithelialMalignantNeoplasm" Type="String" />
                    <asp:Parameter Name="HormonalEvaluationCompatible" Type="Boolean" />
                    <asp:Parameter Name="HormonalEvaluationIncompatible" Type="Boolean" />
                    <asp:Parameter Name="HormonalEvaluationEvaluationNoPossible" Type="Boolean" />
                    <asp:Parameter Name="HormonalEvaluationEvaluationNoPossibleCervicalSpecimen" Type="Boolean" />
                    <asp:Parameter Name="HormonalEvaluationEvaluationNoPossibleInflammation" Type="Boolean" />
                    <asp:Parameter Name="HormonalEvaluationEvaluationNoPossibleInsufficientHistory" Type="Boolean" />
                    <asp:Parameter Name="HormonalEvaluationOther" Type="String" />
                    <asp:Parameter Name="ReqPhysician" Type="String" />
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
