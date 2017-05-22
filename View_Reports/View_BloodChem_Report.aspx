<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_BloodChem_Report.aspx.cs" Inherits="View_Reports_NurseMedtech_View_BloodChem_Report" %>

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
       <center><b> FORT MED CLINICAL REPORTS</b></center><br />
        <br />
        <asp:Label ID="lblPatientId" runat="server" Text="."></asp:Label>
        <asp:Label ID="lblCaseNum" runat="server" Text="."></asp:Label>
        <center><rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="800px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="800px">
            <LocalReport ReportPath="Report_Designs\BloodChem_Report.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource_BloodChem" Name="DataSet_BloodChem" />
                </DataSources>
            </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource_BloodChem" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBloodChem" TypeName="LabReportBloodChemTableAdapters.LabBloodChemistryTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_CaseNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="DatePerformed" Type="DateTime" />
                    <asp:Parameter Name="FBS" Type="Double" />
                    <asp:Parameter Name="BUN" Type="Double" />
                    <asp:Parameter Name="Creatine" Type="Double" />
                    <asp:Parameter Name="BUA" Type="Double" />
                    <asp:Parameter Name="Cholesterol" Type="Double" />
                    <asp:Parameter Name="Triglycerides" Type="Double" />
                    <asp:Parameter Name="HDL" Type="Double" />
                    <asp:Parameter Name="LDL" Type="Double" />
                    <asp:Parameter Name="VLDL" Type="Double" />
                    <asp:Parameter Name="SGOT" Type="Double" />
                    <asp:Parameter Name="SGPT" Type="Double" />
                    <asp:Parameter Name="AlkalainePhosphatase" Type="Double" />
                    <asp:Parameter Name="TotalBilirubin" Type="Double" />
                    <asp:Parameter Name="DirectBilirubin" Type="Double" />
                    <asp:Parameter Name="IndirectBilirubin" Type="Double" />
                    <asp:Parameter Name="Albumim" Type="Double" />
                    <asp:Parameter Name="Globulin" Type="Double" />
                    <asp:Parameter Name="AGRatio" Type="Double" />
                    <asp:Parameter Name="Sodium" Type="Double" />
                    <asp:Parameter Name="Potassium" Type="Double" />
                    <asp:Parameter Name="Chloride" Type="Double" />
                    <asp:Parameter Name="Calcium" Type="Double" />
                    <asp:Parameter Name="HbA1C" Type="Double" />
                    <asp:Parameter Name="RandomBloodSugar" Type="Double" />
                    <asp:Parameter Name="AcidPhosphatase" Type="Double" />
                    <asp:Parameter Name="Lipase" Type="Double" />
                    <asp:Parameter Name="GGTP" Type="Double" />
                    <asp:Parameter Name="CPKMB" Type="Double" />
                    <asp:Parameter Name="CO2" Type="Double" />
                    <asp:Parameter Name="Fructosamine" Type="Double" />
                    <asp:Parameter Name="PPBS2hr" Type="Double" />
                    <asp:Parameter Name="OGCT" Type="Double" />
                    <asp:Parameter Name="LDH" Type="Double" />
                    <asp:Parameter Name="CPKTotal" Type="Double" />
                    <asp:Parameter Name="Magnesium" Type="Double" />
                    <asp:Parameter Name="Phosporous" Type="Double" />
                    <asp:Parameter Name="Amylase" Type="Double" />
                    <asp:Parameter Name="Iron" Type="Double" />
                    <asp:Parameter Name="OGTTFBS" Type="Double" />
                    <asp:Parameter Name="OGTT1hr" Type="Double" />
                    <asp:Parameter Name="OGTT2hr" Type="Double" />
                    <asp:Parameter Name="OGTT3hr" Type="Double" />
                    <asp:Parameter Name="Others" Type="String" />
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
                    <asp:Parameter Name="FBS" Type="Double" />
                    <asp:Parameter Name="BUN" Type="Double" />
                    <asp:Parameter Name="Creatine" Type="Double" />
                    <asp:Parameter Name="BUA" Type="Double" />
                    <asp:Parameter Name="Cholesterol" Type="Double" />
                    <asp:Parameter Name="Triglycerides" Type="Double" />
                    <asp:Parameter Name="HDL" Type="Double" />
                    <asp:Parameter Name="LDL" Type="Double" />
                    <asp:Parameter Name="VLDL" Type="Double" />
                    <asp:Parameter Name="SGOT" Type="Double" />
                    <asp:Parameter Name="SGPT" Type="Double" />
                    <asp:Parameter Name="AlkalainePhosphatase" Type="Double" />
                    <asp:Parameter Name="TotalBilirubin" Type="Double" />
                    <asp:Parameter Name="DirectBilirubin" Type="Double" />
                    <asp:Parameter Name="IndirectBilirubin" Type="Double" />
                    <asp:Parameter Name="Albumim" Type="Double" />
                    <asp:Parameter Name="Globulin" Type="Double" />
                    <asp:Parameter Name="AGRatio" Type="Double" />
                    <asp:Parameter Name="Sodium" Type="Double" />
                    <asp:Parameter Name="Potassium" Type="Double" />
                    <asp:Parameter Name="Chloride" Type="Double" />
                    <asp:Parameter Name="Calcium" Type="Double" />
                    <asp:Parameter Name="HbA1C" Type="Double" />
                    <asp:Parameter Name="RandomBloodSugar" Type="Double" />
                    <asp:Parameter Name="AcidPhosphatase" Type="Double" />
                    <asp:Parameter Name="Lipase" Type="Double" />
                    <asp:Parameter Name="GGTP" Type="Double" />
                    <asp:Parameter Name="CPKMB" Type="Double" />
                    <asp:Parameter Name="CO2" Type="Double" />
                    <asp:Parameter Name="Fructosamine" Type="Double" />
                    <asp:Parameter Name="PPBS2hr" Type="Double" />
                    <asp:Parameter Name="OGCT" Type="Double" />
                    <asp:Parameter Name="LDH" Type="Double" />
                    <asp:Parameter Name="CPKTotal" Type="Double" />
                    <asp:Parameter Name="Magnesium" Type="Double" />
                    <asp:Parameter Name="Phosporous" Type="Double" />
                    <asp:Parameter Name="Amylase" Type="Double" />
                    <asp:Parameter Name="Iron" Type="Double" />
                    <asp:Parameter Name="OGTTFBS" Type="Double" />
                    <asp:Parameter Name="OGTT1hr" Type="Double" />
                    <asp:Parameter Name="OGTT2hr" Type="Double" />
                    <asp:Parameter Name="OGTT3hr" Type="Double" />
                    <asp:Parameter Name="Others" Type="String" />
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
