<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISMedicalRecord.master" AutoEventWireup="true" CodeFile="MedicalRecordHome.aspx.cs" Inherits="CIS_MedicalRecord_MedicalRecordHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">New Consultation</a></h2>
							</header>
                            <br />
                            <br />
                        </article>

                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td>
							        <td style="width: 15%">Consultation No:</td>
                                    <td style="width: 25%"><asp:Label ID="lblConsultationID" runat="server" Text=""></asp:Label></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 05%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td>
							        <td style="width: 15%">Patient Account No:</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbPatientAccountNumber" runat="server" Width="300" Height="30px" MaxLength="25"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 05%"></td>
                                  </tr>
                                </table>
                                
                                <br />
                                <br />

                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"><asp:Button ID="btnMRHClear" runat="server" Text="Clear" BackColor="#999999" OnClick="btnMRHClear_Click" /></td>
							        <td style="width: 25%"><asp:Button ID="btnMRHSubmit" runat="server" Text="Submit" OnClick="btnMRHSubmit_Click" /></td>
                                    <td style="width: 05%"></td>
                                  </tr>
                                </table>
                                
                                <br />
                                
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td>
							        <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <table>
                                    <tr style="text-align:center">
							            <td style="width: 25%"></td>
                                        <td style="width: 50%"><h3>Confirmed Appointments:</h3></td>
                                        <td style="width: 25%"></td>
                                    </tr>
                                </table>
                                <table>
                                    <tr style="text-align:left">
							            <td style="width: 15%"></td>
                                        <td style="width: 70%"><asp:GridView ID="gridviewAppointments" runat="server" HeaderStyle-BorderStyle="Solid" EmptyDataText="No Appointments" >
                                            <HeaderStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                            <RowStyle BorderStyle="Solid" HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:GridView></td>
                                        <td style="width: 15%"></td>
                                    </tr>
                                </table>

                    </div>
				</div>

</asp:Content>

