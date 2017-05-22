<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_DrugTest_Report.aspx.cs" Inherits="View_Reports_NurseMedtech_View_DrugTest_Report" %>

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
       <center> <b>FORT MED CLINICAL REPORTS</b></center><br />
        <br />
        <asp:Label ID="lblPatientId" runat="server" Text="."></asp:Label>
        <asp:Label ID="lblCaseNum" runat="server" Text="."></asp:Label>
        <center><rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="800px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="800px">
            <LocalReport ReportPath="Report_Designs\DrugTest_Report.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource_DrugTest" Name="DataSet_DrugTest" />
                </DataSources>
            </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource_DrugTest" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData_DrugTest" TypeName="LabReportDrugTestTableAdapters.LabDrugTestTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_CaseNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="DatePerformed" Type="DateTime" />
                    <asp:Parameter Name="Purpose" Type="String" />
                    <asp:Parameter Name="TestMethod" Type="String" />
                    <asp:Parameter Name="TestResult" Type="String" />
                    <asp:Parameter Name="DrugMetabolite1" Type="String" />
                    <asp:Parameter Name="DrugMetabolite2" Type="String" />
                    <asp:Parameter Name="DrugMetabolite3" Type="String" />
                    <asp:Parameter Name="DrugMetabolite4" Type="String" />
                    <asp:Parameter Name="DrugMetabolite5" Type="String" />
                    <asp:Parameter Name="DrugMetabolite6" Type="String" />
                    <asp:Parameter Name="DrugMetabolite7" Type="String" />
                    <asp:Parameter Name="DrugMetabolite8" Type="String" />
                    <asp:Parameter Name="DrugMetabolite9" Type="String" />
                    <asp:Parameter Name="DrugMetabolite10" Type="String" />
                    <asp:Parameter Name="Result1" Type="String" />
                    <asp:Parameter Name="Result2" Type="String" />
                    <asp:Parameter Name="Result3" Type="String" />
                    <asp:Parameter Name="Result4" Type="String" />
                    <asp:Parameter Name="Result5" Type="String" />
                    <asp:Parameter Name="Result6" Type="String" />
                    <asp:Parameter Name="Result7" Type="String" />
                    <asp:Parameter Name="Result8" Type="String" />
                    <asp:Parameter Name="Result9" Type="String" />
                    <asp:Parameter Name="Result10" Type="String" />
                    <asp:Parameter Name="Analyst" Type="String" />
                    <asp:Parameter Name="HeadOfLaboratory" Type="String" />
                    <asp:Parameter Name="PatientAccountNo" Type="Int32" />
                    <asp:Parameter Name="NurseMedTechAccountNo" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblPatientId" DefaultValue="1" Name="CurrentLabReportsPatientID" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblCaseNum" DefaultValue="1" Name="CurrentLabReportsCaseNum" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DatePerformed" Type="DateTime" />
                    <asp:Parameter Name="Purpose" Type="String" />
                    <asp:Parameter Name="TestMethod" Type="String" />
                    <asp:Parameter Name="TestResult" Type="String" />
                    <asp:Parameter Name="DrugMetabolite1" Type="String" />
                    <asp:Parameter Name="DrugMetabolite2" Type="String" />
                    <asp:Parameter Name="DrugMetabolite3" Type="String" />
                    <asp:Parameter Name="DrugMetabolite4" Type="String" />
                    <asp:Parameter Name="DrugMetabolite5" Type="String" />
                    <asp:Parameter Name="DrugMetabolite6" Type="String" />
                    <asp:Parameter Name="DrugMetabolite7" Type="String" />
                    <asp:Parameter Name="DrugMetabolite8" Type="String" />
                    <asp:Parameter Name="DrugMetabolite9" Type="String" />
                    <asp:Parameter Name="DrugMetabolite10" Type="String" />
                    <asp:Parameter Name="Result1" Type="String" />
                    <asp:Parameter Name="Result2" Type="String" />
                    <asp:Parameter Name="Result3" Type="String" />
                    <asp:Parameter Name="Result4" Type="String" />
                    <asp:Parameter Name="Result5" Type="String" />
                    <asp:Parameter Name="Result6" Type="String" />
                    <asp:Parameter Name="Result7" Type="String" />
                    <asp:Parameter Name="Result8" Type="String" />
                    <asp:Parameter Name="Result9" Type="String" />
                    <asp:Parameter Name="Result10" Type="String" />
                    <asp:Parameter Name="Analyst" Type="String" />
                    <asp:Parameter Name="HeadOfLaboratory" Type="String" />
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
