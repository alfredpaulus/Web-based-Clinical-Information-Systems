<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISReception.master" AutoEventWireup="true" CodeFile="ReceptionHome.aspx.cs" Inherits="CIS_ReceptionHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        	<!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">Reception</a></h2>
							</header>
                        </article>
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 03%"></td>
                                    <%--<td style="width: 02%; text-align: right"><asp:RadioButton ID="rbPatientName" runat="server" GroupName="rbPatientSearch" OnCheckedChanged="rbPatientName_CheckedChanged" AutoPostBack="True" Checked="True" /></td>--%>
							        <td style="width: 20%">Patient's First or Last Name:</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbPatientName" runat="server" Width="250" Height="30"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"><asp:Button ID="btnClear" runat="server" Text="Clear" BackColor="#999999" OnClick="btnClear_Click" /></td>
							        <td style="width: 25%"><asp:Button ID="btnSearchPatient" runat="server" Text="Search" OnClick="btnSearchPatient_Click" /></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"></td>
							        <td style="width: 50%"><asp:Label ID="lblMessage" runat="server" Text="" Font-Size="X-Large"></asp:Label></td>
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

                            </ContentTemplate>
                        </asp:UpdatePanel>

                                <br/>
                                <br/>
                                <br/>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 33.33%"><asp:Label ID="lblRHQueueCard" runat="server" Text="Queue Card:" Font-Size="Larger"></asp:Label></td>
                                    <td style="width: 33.33%"><asp:Button ID="btnRHYellowQueueCard" runat="server" Text="Yellow Queue Card" BackColor="#FFCC00" OnClick="btnRHYellowQueueCard_Click" /></td>
							        <td style="width: 33.33%"><asp:Button ID="btnRHRedQueueCard" runat="server" Text="Red Queue Card" BackColor="#CC3300" OnClick="btnRHRedQueueCard_Click" /></td>
                                  </tr>
                                </table>

                                <hr/>   

                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 50%"><asp:Button ID="btnRHNewPatient" runat="server" Text="New Patient" BackColor="#009933" Height="50" OnClick="btnRHNewPatient_Click" /></td>
                                    <td style="width: 50%"><asp:Button ID="btnRHCheckPatientRecord" runat="server" Text="Check Patient Record" Height="50" BackColor="#009933" OnClick="btnRHCheckPatientRecord_Click" /></td>
                                  </tr>
                                </table>
                                
                    </div>
				</div>


</asp:Content>

