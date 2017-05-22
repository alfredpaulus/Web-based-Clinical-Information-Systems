<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISLaboratories.master" AutoEventWireup="true" CodeFile="LaboratoriesLaboratoryReports.aspx.cs" Inherits="CIS_Laboratories_LaboratoriesLaboratoryReports" %>

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
							        <td style="width: 25%"><asp:Button ID="btnSearchPatient" runat="server" Text="Search Patient" OnClick="btnSearchPatient_Click" /></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <br/>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"></td>
							        <td style="width: 50%"><asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label></td>
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

                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td>
							        <td style="width: 10%">Laboratory:</td>
                                    <td style="width: 25%"><asp:DropDownList ID="ddlLaboratoryType" runat="server" Enabled="False">
                                                                <asp:ListItem Text="Vital Signs" Value="Vital Signs" Selected="True">Vital Signs</asp:ListItem>
                                                                <asp:ListItem Text="Audiometry" Value="Audiometry">Audiometry</asp:ListItem>
                                                                <asp:ListItem Text="Blood Chemistry" Value="Blood Chemistry">Blood Chemistry</asp:ListItem>
                                                                <asp:ListItem Text="CT Scan" Value="CTScan">CT Scan</asp:ListItem>
                                                                <asp:ListItem Text="Cytopathology" Value="Cytopathology">Cytopathology</asp:ListItem>
                                                                <asp:ListItem Text="Dental" Value="Dental" >Dental</asp:ListItem>
                                                                <asp:ListItem Text="Drug Test" Value="Drug Test">Drug Test</asp:ListItem>
                                                                <asp:ListItem Text="Fecalysis" Value="Fecalysis">Fecalysis</asp:ListItem>
                                                                <asp:ListItem Text="Haematology" Value="Haematology">Haematology</asp:ListItem>
                                                                <asp:ListItem Text="Immunology" Value="Immunology">Immunology</asp:ListItem>
                                                                <asp:ListItem Text="Physical Exam" Value="Physical Exam">Physical Exam</asp:ListItem>
                                                                <asp:ListItem Text="Psychology" Value="Psychology">Psychology</asp:ListItem>
                                                                <asp:ListItem Text="Ultrasound" Value="Ultrasound">Ultrasound</asp:ListItem>
                                                                <asp:ListItem Text="Urinalysis" Value="Urinalysis">Urinalysis</asp:ListItem>
                                                                <asp:ListItem Text="X-ray" Value="X-ray">X-ray</asp:ListItem>
                                                           </asp:DropDownList></td>
                                    <td style="width: 05%"></td>
                                    <td style="width: 20%"><asp:Button ID="btnSearchRecord" runat="server" Text="Search for Lab Record" OnClick="btnSearchRecord_Click" BackColor="Black" Enabled="False"/></td>
                                    <td style="width: 35%"></td>
                                  </tr>
                                </table>

                                <hr />

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 03%"></td>
							        <td style="width: 94%"><asp:Label ID="lblLaboratory" runat="server" Text="Vital Signs" Font-Size="X-Large"></asp:Label></td>
                                    <td style="width: 03%"></td>
                                  </tr>
                                </table>

                                <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto">
                                    <asp:GridView ID="gridviewLaboratory" runat="server" BorderStyle="Solid" AlternatingRowStyle-BorderStyle="Solid" AlternatingRowStyle-HorizontalAlign="Center" AlternatingRowStyle-VerticalAlign="Middle" HeaderStyle-BorderStyle="Double" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HorizontalAlign="Center" RowStyle-BorderStyle="Solid" RowStyle-HorizontalAlign="Center" RowStyle-VerticalAlign="Middle" SelectedRowStyle-BorderStyle="Dashed" SelectedRowStyle-ForeColor="#33CC33" AutoGenerateColumns="True" CellSpacing="10" HeaderStyle-ForeColor="#669900" EmptyDataText="No records found." PageSize="5" HeaderStyle-Width="5" HeaderStyle-Wrap="False">
                                        <AlternatingRowStyle BorderStyle="Solid" HorizontalAlign="Center" VerticalAlign="Middle" />
                                        <HeaderStyle BorderStyle="Double" BorderWidth="5px" ForeColor="#669900" HorizontalAlign="Center" VerticalAlign="Middle" />
                                        <RowStyle BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                        <SelectedRowStyle BorderStyle="Dashed" ForeColor="#33CC33" />
                                    </asp:GridView>
                                </asp:Panel>
                                
					
                    </div>
				</div>


</asp:Content>

