<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Haematology_Report.aspx.cs" Inherits="View_Reports_NurseMedtech_View_Haematology_Report" %>

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
            <LocalReport ReportPath="Report_Designs\LabReportHaematology_Report.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource_Haematology" Name="DataSet_Haematology" />
                </DataSources>
            </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource_Haematology" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData_Haematology" TypeName="LabReportHaematologyTableAdapters.LabHaematologyTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_CaseNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PatientAccountNo" Type="Int32" />
                    <asp:Parameter Name="DatePerformed" Type="DateTime" />
                    <asp:Parameter Name="BloodType" Type="String" />
                    <asp:Parameter Name="HGB" Type="Double" />
                    <asp:Parameter Name="HCT" Type="Double" />
                    <asp:Parameter Name="RCT" Type="Double" />
                    <asp:Parameter Name="WBC" Type="Double" />
                    <asp:Parameter Name="PLT" Type="Double" />
                    <asp:Parameter Name="Segmenters" Type="Double" />
                    <asp:Parameter Name="Stabs" Type="Double" />
                    <asp:Parameter Name="Lymphocytes" Type="Double" />
                    <asp:Parameter Name="Eosinophils" Type="Double" />
                    <asp:Parameter Name="Monocytes" Type="Double" />
                    <asp:Parameter Name="Basophils" Type="Double" />
                    <asp:Parameter Name="ClottingTime" Type="Double" />
                    <asp:Parameter Name="BleedingTime" Type="Double" />
                    <asp:Parameter Name="ESR" Type="Double" />
                    <asp:Parameter Name="Blast" Type="Double" />
                    <asp:Parameter Name="RHType" Type="Double" />
                    <asp:Parameter Name="MixedCells" Type="Double" />
                    <asp:Parameter Name="MixedNo" Type="Double" />
                    <asp:Parameter Name="PTT" Type="Double" />
                    <asp:Parameter Name="PT" Type="Double" />
                    <asp:Parameter Name="Control_" Type="Double" />
                    <asp:Parameter Name="PercActivity" Type="Double" />
                    <asp:Parameter Name="INR" Type="Double" />
                    <asp:Parameter Name="MCV" Type="Double" />
                    <asp:Parameter Name="MCH" Type="Double" />
                    <asp:Parameter Name="MCHC" Type="Double" />
                    <asp:Parameter Name="RDW" Type="Double" />
                    <asp:Parameter Name="MalarialSmear" Type="Double" />
                    <asp:Parameter Name="Neutrophils" Type="Double" />
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
                    <asp:Parameter Name="BloodType" Type="String" />
                    <asp:Parameter Name="HGB" Type="Double" />
                    <asp:Parameter Name="HCT" Type="Double" />
                    <asp:Parameter Name="RCT" Type="Double" />
                    <asp:Parameter Name="WBC" Type="Double" />
                    <asp:Parameter Name="PLT" Type="Double" />
                    <asp:Parameter Name="Segmenters" Type="Double" />
                    <asp:Parameter Name="Stabs" Type="Double" />
                    <asp:Parameter Name="Lymphocytes" Type="Double" />
                    <asp:Parameter Name="Eosinophils" Type="Double" />
                    <asp:Parameter Name="Monocytes" Type="Double" />
                    <asp:Parameter Name="Basophils" Type="Double" />
                    <asp:Parameter Name="ClottingTime" Type="Double" />
                    <asp:Parameter Name="BleedingTime" Type="Double" />
                    <asp:Parameter Name="ESR" Type="Double" />
                    <asp:Parameter Name="Blast" Type="Double" />
                    <asp:Parameter Name="RHType" Type="Double" />
                    <asp:Parameter Name="MixedCells" Type="Double" />
                    <asp:Parameter Name="MixedNo" Type="Double" />
                    <asp:Parameter Name="PTT" Type="Double" />
                    <asp:Parameter Name="PT" Type="Double" />
                    <asp:Parameter Name="Control_" Type="Double" />
                    <asp:Parameter Name="PercActivity" Type="Double" />
                    <asp:Parameter Name="INR" Type="Double" />
                    <asp:Parameter Name="MCV" Type="Double" />
                    <asp:Parameter Name="MCH" Type="Double" />
                    <asp:Parameter Name="MCHC" Type="Double" />
                    <asp:Parameter Name="RDW" Type="Double" />
                    <asp:Parameter Name="MalarialSmear" Type="Double" />
                    <asp:Parameter Name="Neutrophils" Type="Double" />
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
