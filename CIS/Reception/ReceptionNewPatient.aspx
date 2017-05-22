<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISReception.master" AutoEventWireup="true" CodeFile="ReceptionNewPatient.aspx.cs" Inherits="CIS_Reception_ReceptionNewPatient" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:ScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ScriptManager>

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
								<h2><a href="#">New Patient Profile Form</a></h2>
							</header>
                            <p>&nbsp</p> 
                            <p>&nbsp</p> 
                        </article>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 10%"></td>
                                    <td style="width: 80%"><asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label></td>
                                    <td style="width: 10%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">First Name: *</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbRNPFname" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 25%">City: </td>
                                    <td style="width: 25%"><asp:TextBox ID="tbRNPCity" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Last Name: *</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbRNPLname" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 25%">ZIP: </td>
                                    <td style="width: 25%"><asp:TextBox ID="tbRNPZip" Width="300" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Middle Name: *</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbRNPMname" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox> </td>
                                    <td style="width: 25%">Tel No:</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbRNPTelNum" Width="300" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Gender: *</td>
                                    <td style="width: 25%">
                                        <asp:Panel ID="panelRNPGender" runat="server">
                                            <asp:RadioButton ID="rbRNPMale" runat="server" Text="Male" GroupName="gnRNPGender" Width="100" Height="30px" Font-Size="Medium" /> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <asp:RadioButton ID="rbRNPFemale" runat="server" Text="Female" GroupName="gnRNPGender" Width="100" Height="30px" Font-Size="Medium" />
                                        </asp:Panel></td>
                                    <td style="width: 25%">Mobile No:</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbRNPMobileNum" Width="300" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Birthdate: *</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbRNPBday" runat="server" Width="300" Font-Size="Medium" Height="30px" TextMode="Date"></asp:TextBox></td>
                                    <td style="width: 25%">Company: </td>
                                    <td style="width: 25%"><asp:TextBox ID="tbRNPCompany" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Civil Status:</td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddlRNPCStatus" Width="300" Font-Size="Medium" runat="server">
                                            <asp:ListItem Text="Single" Value="Single" Selected="True">Single</asp:ListItem>
                                            <asp:ListItem Text="Married" Value="Married">Married</asp:ListItem>
                                            <asp:ListItem Text="Divorced" Value="Divorced">Divorced</asp:ListItem>
                                            <asp:ListItem Text="Widowed" Value="Widowed">Widowed</asp:ListItem>
                                        </asp:DropDownList> </td>
                                    <td style="width: 25%">Occupation: </td>
                                    <td style="width: 25%"><asp:TextBox ID="tbRNPOccupation" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Nationality: </td>
                                    <td style="width: 25%"><asp:TextBox ID="tbRNPNationality" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 25%">Religion: </td>
                                    <td style="width: 25%"><asp:TextBox ID="tbRNPReligion" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Address: </td>
                                    <td style="width: 25%"><asp:TextBox ID="tbRNPAddress" Width="300" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                    <td style="width: 25%">Remarks: </td>
                                    <td style="width: 25%"><asp:TextBox ID="tbRNPRemarks" Width="300" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                  </tr>
                                </table>
                                
                                <p>&nbsp</p>
                                <p>&nbsp</p>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"><asp:Button ID="btnRNPCancel" runat="server" Text="Cancel" BackColor="#999999" OnClick="btnRNPCancel_Click" />
                                        <ajaxToolkit:ConfirmButtonExtender ID="btnRNPCancel_ConfirmButtonExtender" runat="server" BehaviorID="btnRNPCancel_ConfirmButtonExtender" ConfirmText="Are you sure you want to cancel?" TargetControlID="btnRNPCancel">
                                        </ajaxToolkit:ConfirmButtonExtender>
                                      </td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"><asp:Button ID="btnRNPClear" runat="server" Text="Clear" BackColor="#999999" OnClick="btnRNPClear_Click" /></td>
							        <td style="width: 25%"><asp:Button ID="btnRNPSubmit" runat="server" Text="Submit" OnClick="btnRNPSubmit_Click" /></td>
                                  </tr>
                                </table>

                    </div>
				</div>


</asp:Content>


