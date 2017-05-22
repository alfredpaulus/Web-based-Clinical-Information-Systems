<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISReception.master" AutoEventWireup="true" CodeFile="ReceptionManageAppointments.aspx.cs" Inherits="CIS_Reception_ReceptionManageAppointments" %>

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
								<h2><a href="#">Manage Appointments</a></h2>
							</header>
                            <br/>
                            <br/>
                            <h3>Create an appointment</h3>
                            <br/>
                            <br/>
                            <table>
                                  <tr style="text-align:left">
							        <td style="width: 05%"></td>
							        <td style="width: 15%">Patient Account No.:</td>
                                    <td style="width: 05%"></td>
                                    <td style="width: 25%"><asp:TextBox runat="server" ID="tbPatientAccountNo" Width="300" Font-Size="Medium" Height="30px" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 20%"></td>
							        <td style="width: 05%"></td>
                                  </tr>
                            </table>
                            <table>
                                  <tr style="text-align:left">
							        <td style="width: 05%"></td>
							        <td style="width: 15%">Appointment Date:</td>
                                    <td style="width: 05%"></td>
                                    <td style="width: 25%"><asp:TextBox runat="server" ID="tbAppointmentDate" TextMode="Date" Width="300" Font-Size="Medium" Height="30px"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 20%"></td>
							        <td style="width: 05%"></td>
                                  </tr>
                            </table>
                            <table>
                                  <tr style="text-align:left">
							        <td style="width: 05%"></td>
							        <td style="width: 15%">Appointment Time:</td>
                                    <td style="width: 05%"></td>
                                    <td style="width: 25%"><asp:TextBox runat="server" ID="tbAppointmentTime" TextMode="Time" Width="300" Font-Size="Medium" Height="30px"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 20%"></td>
							        <td style="width: 05%"></td>
                                  </tr>
                            </table>
                            <%--<table>
                                  <tr style="text-align:left">
							        <td style="width: 05%"></td>
							        <td style="width: 15%">Subspecialty:</td>
                                    <td style="width: 05%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddlDepartment" Width="300" Font-Size="Medium" runat="server">
                                            <asp:ListItem Text="ALLERGOLOGY" Value="ALLERGOLOGY"></asp:ListItem>
                                            <asp:ListItem Text="CARDIOLOGY" Value="CARDIOLOGY"></asp:ListItem>
                                            <asp:ListItem Text="COSMETIC SURGERY" Value="COSMETICSURGERY"></asp:ListItem>
                                            <asp:ListItem Text="DENTAL" Value="DENTAL"></asp:ListItem>
                                            <asp:ListItem Text="DERMATOLOGY" Value="DERMATOLOGY"></asp:ListItem>
                                            <asp:ListItem Text="ENT" Value="ENT"></asp:ListItem>
                                            <asp:ListItem Text="GASTROENTEROLOGY" Value="GASTROENTEROLOGY"></asp:ListItem>
                                            <asp:ListItem Text="GENERAL SURGERY" Value="GENERALSURGERY"></asp:ListItem>
                                            <asp:ListItem Text="INTERNAL MEDICINE" Value="INTERNALMEDICINE"></asp:ListItem>
                                            <asp:ListItem Text="NEUROLOGY" Value="NEUROLOGY"></asp:ListItem>
                                            <asp:ListItem Text="NEPHROLOGY" Value="NEPHROLOGY"></asp:ListItem>
                                            <asp:ListItem Text="OBSTETRICS/GYNECOLOGY" Value="OBSTETRICS"></asp:ListItem>
                                            <asp:ListItem Text="OPTHALMOLOGY" Value="OPTHALMOLOGY"></asp:ListItem>
                                            <asp:ListItem Text="ORTHOPEDICS" Value="ORTHOPEDICS"></asp:ListItem>
                                            <asp:ListItem Text="ORTHODONTICS" Value="ORTHODONTICS"></asp:ListItem>
                                            <asp:ListItem Text="PEDIATRICS" Value="PEDIATRICS"></asp:ListItem>
                                            <asp:ListItem Text="PERIPHERAL VASCULAR SURGERY" Value="PERIPHERALVASCULARSURGERY"></asp:ListItem>
                                            <asp:ListItem Text="PLASTIC SURGERY" Value="PLASTICSURGERY"></asp:ListItem>
                                            <asp:ListItem Text="PRIMARY CARE" Value="PRIMARYCARE"></asp:ListItem>
                                            <asp:ListItem Text="PULMONOLOGY" Value="PULMONOLOGY"></asp:ListItem>
                                            <asp:ListItem Text="RADIOLOGY" Value="RADIOLOGY"></asp:ListItem>
                                            <asp:ListItem Text="REHAB-MEDICINE" Value="REHABMEDICINE"></asp:ListItem>
                                            <asp:ListItem Text="UROLOGY" Value="UROLOGY"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 20%"></td>
							        <td style="width: 05%"></td>
                                  </tr>
                            </table>--%>
                            <table>
                                  <tr style="text-align:left">
							        <td style="width: 05%"></td>
							        <td style="width: 15%">Doctor Account No.:</td>
                                    <td style="width: 05%"></td>
                                    <td style="width: 25%"><asp:TextBox runat="server" ID="tbAppointmentDoctor" Width="300" Font-Size="Medium" Height="30px" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 20%"></td>
							        <td style="width: 05%"></td>
                                  </tr>
                            </table>
                            <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"><asp:Button ID="btnClear" runat="server" Text="Clear" BackColor="#999999" /></td>
							        <td style="width: 25%"><asp:Button ID="btnSubmit" runat="server" Text="Submit" /></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>
                            <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"></td>
							        <td style="width: 25%"><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>

                            <hr />

                            <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"><asp:Button ID="btnRefresh" runat="server" Text="Refresh" /></td>
							        <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>

                            <br/>

                            <table>
                                  <tr style="text-align:left">
							        <td style="width: 05%"></td>
                                    <td style="width: 25%"><asp:Button ID="btnShowAppointmentScheduleRequests" runat="server" Text="Show Appointment Schedule Requests" /></td>
                                    <td style="width: 10%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>
                            <asp:Panel ID="Panel1" runat="server" Visible="False">
                                <asp:GridView ID="gridviewAppointmentScheduleRequests" runat="server" HeaderStyle-BorderStyle="Solid" autogeneratecolumns="true" AllowSorting="True" AutoGenerateDeleteButton="True" HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" HeaderStyle-BackColor="#99FF99" ItemStyle-HorizontalAlign="Center" BorderColor="#999999" BorderStyle="Solid" BorderWidth=".5" RowStyle-BorderStyle="Solid" RowStyle-BorderWidth="1" RowStyle-BorderColor="#999999" ></asp:GridView>
                            </asp:Panel>

                            <hr/>

                            <table>
                                  <tr style="text-align:left">
							        <td style="width: 05%"></td>
                                    <td style="width: 25%"><asp:Button ID="btnShowApprovedAppointments" runat="server" Text="Show Approved Appointments" /></td>
                                    <td style="width: 10%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>
                            <asp:Panel ID="Panel2" runat="server" Visible="False">
                               <asp:GridView ID="gridviewApprovedAppointments" runat="server" HeaderStyle-BorderStyle="Solid" autogeneratecolumns="true" AllowSorting="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" HeaderStyle-BackColor="#99FF99" ItemStyle-HorizontalAlign="Center" BorderColor="#999999" BorderStyle="Solid" BorderWidth=".5" RowStyle-BorderStyle="Solid" RowStyle-BorderWidth="1" RowStyle-BorderColor="#999999" ></asp:GridView>
                            </asp:Panel>
              
						</article>
						<hr />
					</div>

				</div>
</asp:Content>




