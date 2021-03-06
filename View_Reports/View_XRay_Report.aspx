﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_XRay_Report.aspx.cs" Inherits="View_Reports_NurseMedtech_View_XRay_Report" %>

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
            <LocalReport ReportPath="Report_Designs\XrayReport.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource_XRay" Name="DataSet_Xray" />
                </DataSources>
            </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource_XRay" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData_Xray" TypeName="LabReportXrayTableAdapters.LabXrayTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_CaseNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PatientAccountNo" Type="Int32" />
                    <asp:Parameter Name="DatePerformed" Type="DateTime" />
                    <asp:Parameter Name="PlateNo" Type="Int32" />
                    <asp:Parameter Name="ClinicDiag" Type="String" />
                    <asp:Parameter Name="Code" Type="Int32" />
                    <asp:Parameter Name="Examination" Type="String" />
                    <asp:Parameter Name="ChestPA" Type="Boolean" />
                    <asp:Parameter Name="Extremities" Type="Boolean" />
                    <asp:Parameter Name="APLV" Type="Boolean" />
                    <asp:Parameter Name="SpotView" Type="Boolean" />
                    <asp:Parameter Name="LateralView" Type="Boolean" />
                    <asp:Parameter Name="Others" Type="Boolean" />
                    <asp:Parameter Name="Image1" Type="Object" />
                    <asp:Parameter Name="Image2" Type="Object" />
                    <asp:Parameter Name="Image3" Type="Object" />
                    <asp:Parameter Name="Result" Type="String" />
                    <asp:Parameter Name="Impression" Type="String" />
                    <asp:Parameter Name="Remarks" Type="String" />
                    <asp:Parameter Name="ReqPhysician" Type="String" />
                    <asp:Parameter Name="Radiologist" Type="String" />
                    <asp:Parameter Name="NurseMedTechAccountNo" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblPatientId" DefaultValue="1" Name="CurrentLabReportsPatientID" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblCaseNum" DefaultValue="1" Name="CurrentLabReportsCaseNum" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PatientAccountNo" Type="Int32" />
                    <asp:Parameter Name="DatePerformed" Type="DateTime" />
                    <asp:Parameter Name="PlateNo" Type="Int32" />
                    <asp:Parameter Name="ClinicDiag" Type="String" />
                    <asp:Parameter Name="Code" Type="Int32" />
                    <asp:Parameter Name="Examination" Type="String" />
                    <asp:Parameter Name="ChestPA" Type="Boolean" />
                    <asp:Parameter Name="Extremities" Type="Boolean" />
                    <asp:Parameter Name="APLV" Type="Boolean" />
                    <asp:Parameter Name="SpotView" Type="Boolean" />
                    <asp:Parameter Name="LateralView" Type="Boolean" />
                    <asp:Parameter Name="Others" Type="Boolean" />
                    <asp:Parameter Name="Image1" Type="Object" />
                    <asp:Parameter Name="Image2" Type="Object" />
                    <asp:Parameter Name="Image3" Type="Object" />
                    <asp:Parameter Name="Result" Type="String" />
                    <asp:Parameter Name="Impression" Type="String" />
                    <asp:Parameter Name="Remarks" Type="String" />
                    <asp:Parameter Name="ReqPhysician" Type="String" />
                    <asp:Parameter Name="Radiologist" Type="String" />
                    <asp:Parameter Name="NurseMedTechAccountNo" Type="Int32" />
                    <asp:Parameter Name="Original_CaseNo" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </center>
    </div>
    </form>
</body>
</html>
