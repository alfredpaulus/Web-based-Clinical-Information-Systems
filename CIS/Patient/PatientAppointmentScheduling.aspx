<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLogin.master" AutoEventWireup="true" CodeFile="PatientAppointmentScheduling.aspx.cs" Inherits="CIS_Patient_PatientAppointmentScheduling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script>
         function isNumberKeyWhole(evt) {
             var charCode = (evt.which) ? evt.which : evt.keyCode;
             if (charCode > 31 && (charCode < 48 || charCode > 57))
                 return false;
             return true;
         }
   </script>

<!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">Online Appointment Scheduling</a></h2>
								<p>Create an appointment online or call <br/>Makati: (02) 897-9111 to 19 | Santa Rosa: (049) 541-1981 or 84 | Cypress: 512-6124</p>
							</header>

                            <br/>
                                <table>
                                  <tr style="text-align:left">
							        <td style="width: 25%"></td>
                                    <td style="width: 15%"><asp:Label ID="lblMessage" runat="server" Text="" Font-Size="Larger" Font-Bold="True" ForeColor="#FF3300"></asp:Label></td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                        <br/>

                            <table>
                                  <tr style="text-align:left">
							        <td style="width: 25%"></td>
                                    <td style="width: 25%"><asp:Button ID="btnCreateAppointment" runat="server" Text="Create an appointment" /></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>

                            <asp:Panel ID="Panel1" runat="server" Visible="False">
                                <table>
                                  <tr style="text-align:left">
							        <td style="width: 25%"></td>
                                    <td style="width: 15%">Date:</td>
                                    <td style="width: 35%"><asp:TextBox ID="tbAppointmentDate" TextMode="Date" runat="server" ></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
							        <td style="width: 25%"></td>
                                    <td style="width: 15%">Time:</td>
                                    <td style="width: 35%"><asp:TextBox ID="tbAppointmentTime" runat="server" TextMode="Time"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
							        <td style="width: 25%"></td>
                                    <td style="width: 15%">Symptoms:</td>
                                    <td style="width: 35%"><asp:TextBox ID="tbAppointmentSymptoms" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
							        <td style="width: 25%"></td>
                                    <td style="width: 15%">Remarks:</td>
                                    <td style="width: 35%"><asp:TextBox ID="tbAppointmentRemarks" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
							        <td style="width: 25%"></td>
                                    <td style="width: 15%">Active Contact No:</td>
                                    <td style="width: 35%"><asp:TextBox ID="tbActiveContactNo" Width="300" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
							        <td style="width: 25%"></td>
                                    <td style="width: 15%"><asp:Button ID="btnSubmit" runat="server" Text="Submit" /></td>
                                    <td style="width: 15%"><asp:Button ID="btnClear" runat="server" Text="Clear" BackColor="#999999" /></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>


                            </asp:Panel>

                            <hr/>
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
              
						</article>
						<hr />
					</div>

				</div>
</asp:Content>




