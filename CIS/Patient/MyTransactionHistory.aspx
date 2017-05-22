<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLogin.master" AutoEventWireup="true" CodeFile="MyTransactionHistory.aspx.cs" Inherits="CIS_Patient_MyTransactionHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">My Transaction History</a></h2>
								<p></p>
							</header>

                            <table>
                                  <tr style="text-align:left">
							        <td style="width: 25%"></td>
                                    <td style="width: 15%"><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>

                            <br />
                            <br />

                            <table>
                                  <tr style="text-align:left">
							        <td style="width: 05%"></td>
                                    <td style="width: 90%">
                                        <asp:GridView ID="gridviewTransactionHistory" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="No Transaction History Found" HorizontalAlign="Center">
                                            <Columns>
                                                <asp:BoundField DataField="TransactionNo" HeaderText="TransactionNo" SortExpression="TransactionNo" />
                                                <asp:BoundField DataField="TransactionDateTime" HeaderText="TransactionDateTime" SortExpression="TransactionDateTime" />
                                                <asp:BoundField DataField="ServiceItem" HeaderText="ServiceItem" SortExpression="ServiceItem" />
                                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                            </Columns>
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FortMedCISConnectionString %>" SelectCommand="SELECT [TransactionNo], [TransactionDateTime], [ServiceItem], [Price], [PatientID], [EmployeeID] FROM [BillingTransactions] WHERE ([PatientID] = @PatientID) ORDER BY [TransactionNo] DESC">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="PatientID" SessionField="AccountNo" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                    <td style="width: 05%"></td>
                                  </tr>
                            </table>

              
						</article>
						<hr />
					</div>

				</div>
</asp:Content>

