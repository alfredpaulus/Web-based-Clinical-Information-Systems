<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISReception.master" AutoEventWireup="true" CodeFile="ReceptionQueue.aspx.cs" Inherits="CIS_Reception_ReceptionQueue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        	<!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">Now Serving</a></h2>
							</header>
                            <br/>
                        </article>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"></td>
							        <td style="width: 50%"><asp:Label ID="lblMessage" runat="server" Text="" Font-Size="X-Large"></asp:Label></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>

                                <table>
                                    <tr style="text-align:left">
                                        <td style="width: 12.50%"></td>
                                        <td style="width: 15%"><asp:Label ID="lblServingCtr1" runat="server" Text="0" ForeColor="#FFCC00" Font-Size="80px" Font-Bold="True" BorderWidth="1px" BorderStyle="Solid"></asp:Label></td>
							            <td style="width: 05%"></td>
                                        <td style="width: 15%"><asp:Label ID="lblServingCtr2" runat="server" Text="0" ForeColor="#FFCC00" Font-Size="80px" Font-Bold="True" BorderWidth="1px" BorderStyle="Solid"></asp:Label></td>
                                        <td style="width: 05%"></td>
                                        <td style="width: 15%"><asp:Label ID="lblServingCtr3" runat="server" Text="0" ForeColor="#FFCC00" Font-Size="80px" Font-Bold="True" BorderWidth="1px" BorderStyle="Solid"></asp:Label></td>
                                        <td style="width: 05%"></td>
                                        <td style="width: 15%"><asp:Label ID="lblServingCtr4" runat="server" Text="0" ForeColor="#FFCC00" Font-Size="80px" Font-Bold="True" BorderWidth="1px" BorderStyle="Solid"></asp:Label></td>
                                        <td style="width: 12.50%"></td>
                                    </tr>
                                </table>
                                
                            </ContentTemplate>
                        </asp:UpdatePanel>

                        <br/>
                        <br/>

                        <table>
                            <tr style="text-align:center">
                                <td style="width: 05%"></td>
                                <td style="width: 90%"><iframe width="560" height="349" src="https://www.youtube.com/embed/aCUbvOwwfWM?list=PLVbjJraPz4BD5oVHKuAzVbUwP0DM81EMi&autoplay=1&vq=medium" frameborder="0" allowfullscreen></iframe></td>
                                <td style="width: 05%"></td>
                            </tr>
                        </table>
                        
                    </div>
				</div>


</asp:Content>

