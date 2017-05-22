<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLogin.master" AutoEventWireup="true" CodeFile="fmcislogin.aspx.cs" Inherits="fmcislogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    			<!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">Login to your FortMED CIS Account</a></h2>
								<%--<p>Online appointment scheduling is exclusive to registered FortMED clients only.</p>--%>
								<%--<p>Don't have your account? Ask your Username and Password from our Receptionist or call <br/>Makati: (02) 897-9111 to 19 | Santa Rosa: (049) 541-1981 or 84 | Cypress: 512-6124</p>--%>
							</header>
                            <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%"></td>
                                    <td style="width: 25%">Login as: </td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddLogInAs" Width="400" Font-Size="Medium" runat="server">
                                            <asp:ListItem Text="Doctor" Value="DOC"></asp:ListItem>
                                            <asp:ListItem Text="Laboratories" Value="NMT"></asp:ListItem>
                                            <asp:ListItem Text="Reception / Registration" Value="EMP"></asp:ListItem>
                                            <asp:ListItem Text="Admin" Value="ADM"></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>
							<table>
                                  <tr style="text-align:center">
							        <td style="width: 25%"></td>
                                    <td style="width: 25%">Account Number: </td>
                                    <td style="width: 25%"><asp:TextBox ID="tbFMCISLoginAccountNumber" runat="server" Width="400" Height="30px" MaxLength="20" BorderColor="#CCCCCC"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>
                            <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%"></td>
                                    <td style="width: 25%">Password: </td>
                                    <td style="width: 25%"><asp:TextBox ID="tbFMCISLoginPassword" runat="server" TextMode="Password" Width="400" Height="30px" MaxLength="20" BorderColor="#CCCCCC"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>
                            <table>
                                  <tr style="text-align:center">
                                    <td style="width: 33.33%"></td>
                                    <td style="width: 33.33%"><asp:Button ID="btnFMCISLogin" runat="server" Text="Login" /></td>
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

