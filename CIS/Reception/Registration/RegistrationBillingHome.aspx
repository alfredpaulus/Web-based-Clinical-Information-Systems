<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISReception.master" AutoEventWireup="true" CodeFile="RegistrationBillingHome.aspx.cs" Inherits="CIS_Reception_Registration_RegistrationBillingHome" %>

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
								<h2><a href="#">Billing</a></h2>
							</header>
                            <br />
                            <br />
                        </article>

                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td>
							        <td style="width: 15%">Transaction No:</td>
                                    <td style="width: 25%"><asp:Label ID="lblTransactionID" runat="server" Text=""></asp:Label></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 05%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td>
							        <td style="width: 15%">Patient Account No:</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbPatientAccountNumber" runat="server" Width="300" Height="30px" MaxLength="25" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 05%"></td>
                                  </tr>
                                </table>
                                
                                <br />
                                <br />
                                
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"><asp:Label ID="lblMessage" runat="server" Text="" Font-Size="Larger"></asp:Label></td>
							        <td style="width: 25%"></td>
                                  </tr>
                                </table>

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
                                
                                

                    </div>
				</div>

</asp:Content>


