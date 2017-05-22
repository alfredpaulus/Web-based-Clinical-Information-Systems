<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLogin.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    			<!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">Login to your FortMED Account</a></h2>
								<p>Online appointment scheduling is exclusive to registered FortMED clients only.</p>
								<p>Don't have your account? Ask your Username and Password from our Receptionist or call <br/>Makati: (02) 897-9111 to 19 | Santa Rosa: (049) 541-1981 or 84 | Cypress: 512-6124</p>
							</header>
							<table>
                                  <tr style="text-align:center">
							        <td style="width: 25%"></td>
                                    <td style="width: 15%">Username: </td>
                                    <td style="width: 35%"><asp:TextBox ID="tbLoginUsername" runat="server" Width="400" Font-Size="Medium" Height="30px"  MaxLength="20"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>
                            <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%"></td>
                                    <td style="width: 15%">Password: </td>
                                    <td style="width: 35%"><asp:TextBox ID="tbLoginPassword" runat="server" TextMode="Password" Width="400" Font-Size="Medium" Height="30px"  MaxLength="20"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>
                            <table>
                                  <tr style="text-align:center">
                                    <td style="width: 33.33%"></td>
                                    <td style="width: 33.33%"><asp:Button ID="btnLogin" runat="server" Text="Login" /></td>
                                    <td style="width: 33.33%"></td>
                                  </tr>
                            </table>
                            <br/>
                            <table>
                                  <tr style="text-align:center">
                                    <td style="width: 33.33%"></td>
                                    <td style="width: 33.33%"><asp:Label ID="lblMessage" runat="server" Text="" Font-Bold="True" ForeColor="Red" Font-Size="Larger"></asp:Label></td>
                                    <td style="width: 33.33%"></td>
                                  </tr>
                            </table>
							
						</article>
						<hr />
					</div>

				</div>
</asp:Content>

