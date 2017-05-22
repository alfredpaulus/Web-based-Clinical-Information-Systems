<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISLabReports.master" AutoEventWireup="true" CodeFile="LabReportsHome.aspx.cs" Inherits="CIS_Laboratories_LabReports_LabReportsHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        	<!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">Laboratory Reports</a></h2>
							</header>
                            <br/>
                        </article>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 03%"></td>
							        <td style="width: 20%">Patient's First or Last Name:</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbPatientName" runat="server" Width="250" Height="30"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <br/>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"><asp:Button ID="btnClear" runat="server" Text="Clear" BackColor="#999999" OnClick="btnClear_Click" /></td>
							        <td style="width: 25%"><asp:Button ID="btnSearchPatient" runat="server" Text="Search" OnClick="btnSearchPatient_Click" /></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <br/>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"></td>
							        <td style="width: 50%"><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 03%"></td>
							        <td style="width: 94%"><asp:GridView ID="gridviewPatient" runat="server" BorderStyle="Solid" AlternatingRowStyle-BorderStyle="Solid" AlternatingRowStyle-HorizontalAlign="Center" AlternatingRowStyle-VerticalAlign="Middle" CaptionAlign="Top" HeaderStyle-BorderStyle="Double" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HorizontalAlign="Center" RowStyle-BorderStyle="Solid" RowStyle-HorizontalAlign="Center" RowStyle-VerticalAlign="Middle" SelectedRowStyle-BorderStyle="Dashed" SelectedRowStyle-ForeColor="#33CC33" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gridviewPatient_SelectedIndexChanged" Caption="Select Patient"></asp:GridView></td>
                                    <td style="width: 03%"></td>
                                  </tr>
                                </table>

                                <br/>
                        
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 03%"></td>
                                    <td style="width: 25%">Laboratory Exam Type:</td>
							        <td style="width: 25%"><asp:DropDownList ID="ddlLabExamType" runat="server" OnSelectedIndexChanged="ddlLabExamType_SelectedIndexChanged" AutoPostBack="True" Enabled="False">
                                                                <%--<asp:ListItem Text="Vital Signs" Value="Vital Signs" Selected="True">Vital Signs</asp:ListItem>--%>
                                                                <asp:ListItem Text="--Select Laboratory Type--"  Selected="True"></asp:ListItem>
                                                                <asp:ListItem Text="Audiometry" Value="Audiometry">Audiometry</asp:ListItem>
                                                                <asp:ListItem Text="Blood Chemistry" Value="BloodChemistry">Blood Chemistry</asp:ListItem>
                                                                <asp:ListItem Text="CT Scan" Value="CT Scan">CT Scan</asp:ListItem>
                                                                <asp:ListItem Text="Cytopathology" Value="Cytopathology">Cytopathology</asp:ListItem>
                                                                <%--<asp:ListItem Text="Dental" Value="Dental" >Dental</asp:ListItem>--%>
                                                                <asp:ListItem Text="Drug Test" Value="DrugTest">Drug Test</asp:ListItem>
                                                                <asp:ListItem Text="Fecalysis" Value="Fecalysis">Fecalysis</asp:ListItem>
                                                                <asp:ListItem Text="Haematology" Value="Haematology">Haematology</asp:ListItem>
                                                                <asp:ListItem Text="Immunology" Value="Immunology">Immunology</asp:ListItem>
                                                                <asp:ListItem Text="Physical Exam" Value="PhysicalExam">Physical Exam</asp:ListItem>
                                                                <asp:ListItem Text="Psychology" Value="Psychology">Psychology</asp:ListItem>
                                                                <asp:ListItem Text="Ultrasound" Value="Ultrasound">Ultrasound</asp:ListItem>
                                                                <asp:ListItem Text="Urinalysis" Value="Urinalysis">Urinalysis</asp:ListItem>
                                                                <asp:ListItem Text="X-ray" Value="Xray">X-ray</asp:ListItem>
                                                           </asp:DropDownList></td>
                                    <td style="width: 47%"></td>
                                  </tr>
                                </table>

                                <br/>

                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 03%"></td>
							        <td style="width: 94%"><asp:GridView ID="gridviewLaboratory" runat="server" BorderStyle="Solid" AlternatingRowStyle-BorderStyle="Solid" AlternatingRowStyle-HorizontalAlign="Center" AlternatingRowStyle-VerticalAlign="Middle" CaptionAlign="Top" HeaderStyle-BorderStyle="Double" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HorizontalAlign="Center" RowStyle-BorderStyle="Solid" RowStyle-HorizontalAlign="Center" RowStyle-VerticalAlign="Middle" SelectedRowStyle-BorderStyle="Dashed" SelectedRowStyle-ForeColor="#33CC33" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gridviewLaboratory_SelectedIndexChanged" Caption="Select Laboratory Date/Time"></asp:GridView></td>
                                    <td style="width: 03%"></td>
                                  </tr>
                                </table>


                                <br/>
                                <br/>
                                <br/>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"><asp:Button ID="btnClear2" runat="server" Text="Clear" BackColor="#999999" OnClick="btnClear_Click" /></td>
							        <td style="width: 25%"><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/></td>
                                  </tr>
                                </table>
					
                    </div>
				</div>


</asp:Content>

