<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISReception.master" AutoEventWireup="true" CodeFile="RegistrationBillingTransactionHistory.aspx.cs" Inherits="CIS_Reception_Registration_RegistrationBillingTransactionHistory" %>

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
								<h2><a href="#">Patient's Transaction History</a></h2>
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
                                    <td style="width: 25%">Enter Patient Account No.:</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbPatientAccntNum" runat="server" OnTextChanged="tbPatientAccntNum_TextChanged" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 10%"></td>
                                    <td style="width: 35%"></td>
                                  </tr>
                            </table>
                            <table>
                                  <tr style="text-align:left">
							        <td style="width: 05%"></td>
                                    <td style="width: 90%">
                                        <asp:GridView ID="gridviewTransactionHistory" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="No Transaction History Found" HorizontalAlign="Center" AllowPaging="True" DataKeyNames="BillingID" PageSize="30">
                                            <Columns>
                                                <asp:BoundField DataField="BillingID" HeaderText="BillingID" SortExpression="BillingID" InsertVisible="False" ReadOnly="True" />
                                                <asp:BoundField DataField="TransactionNo" HeaderText="TransactionNo" SortExpression="TransactionNo" />
                                                <asp:BoundField DataField="TransactionDateTime" HeaderText="TransactionDateTime" SortExpression="TransactionDateTime" />
                                                <asp:BoundField DataField="ServiceItem" HeaderText="ServiceItem" SortExpression="ServiceItem" />
                                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                                <asp:BoundField DataField="PatientID" HeaderText="PatientID" SortExpression="PatientID" />
                                                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
                                            </Columns>
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:FortMedCISConnectionString %>" DeleteCommand="DELETE FROM [BillingTransactions] WHERE [BillingID] = @original_BillingID AND [TransactionNo] = @original_TransactionNo AND (([TransactionDateTime] = @original_TransactionDateTime) OR ([TransactionDateTime] IS NULL AND @original_TransactionDateTime IS NULL)) AND (([ServiceItem] = @original_ServiceItem) OR ([ServiceItem] IS NULL AND @original_ServiceItem IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([PatientID] = @original_PatientID) OR ([PatientID] IS NULL AND @original_PatientID IS NULL)) AND (([EmployeeID] = @original_EmployeeID) OR ([EmployeeID] IS NULL AND @original_EmployeeID IS NULL))" InsertCommand="INSERT INTO [BillingTransactions] ([TransactionNo], [TransactionDateTime], [ServiceItem], [Price], [PatientID], [EmployeeID]) VALUES (@TransactionNo, @TransactionDateTime, @ServiceItem, @Price, @PatientID, @EmployeeID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BillingTransactions] WHERE ([PatientID] = @PatientID) ORDER BY [BillingID] DESC" UpdateCommand="UPDATE [BillingTransactions] SET [TransactionNo] = @TransactionNo, [TransactionDateTime] = @TransactionDateTime, [ServiceItem] = @ServiceItem, [Price] = @Price, [PatientID] = @PatientID, [EmployeeID] = @EmployeeID WHERE [BillingID] = @original_BillingID AND [TransactionNo] = @original_TransactionNo AND (([TransactionDateTime] = @original_TransactionDateTime) OR ([TransactionDateTime] IS NULL AND @original_TransactionDateTime IS NULL)) AND (([ServiceItem] = @original_ServiceItem) OR ([ServiceItem] IS NULL AND @original_ServiceItem IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([PatientID] = @original_PatientID) OR ([PatientID] IS NULL AND @original_PatientID IS NULL)) AND (([EmployeeID] = @original_EmployeeID) OR ([EmployeeID] IS NULL AND @original_EmployeeID IS NULL))">
                                            <DeleteParameters>
                                                <asp:Parameter Name="original_BillingID" Type="Int32" />
                                                <asp:Parameter Name="original_TransactionNo" Type="Int32" />
                                                <asp:Parameter Name="original_TransactionDateTime" Type="DateTime" />
                                                <asp:Parameter Name="original_ServiceItem" Type="String" />
                                                <asp:Parameter Name="original_Price" Type="Double" />
                                                <asp:Parameter Name="original_PatientID" Type="Int32" />
                                                <asp:Parameter Name="original_EmployeeID" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="TransactionNo" Type="Int32" />
                                                <asp:Parameter Name="TransactionDateTime" Type="DateTime" />
                                                <asp:Parameter Name="ServiceItem" Type="String" />
                                                <asp:Parameter Name="Price" Type="Double" />
                                                <asp:Parameter Name="PatientID" Type="Int32" />
                                                <asp:Parameter Name="EmployeeID" Type="Int32" />
                                            </InsertParameters>
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="tbPatientAccntNum" Name="PatientID" PropertyName="Text" Type="Int32" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="TransactionNo" Type="Int32" />
                                                <asp:Parameter Name="TransactionDateTime" Type="DateTime" />
                                                <asp:Parameter Name="ServiceItem" Type="String" />
                                                <asp:Parameter Name="Price" Type="Double" />
                                                <asp:Parameter Name="PatientID" Type="Int32" />
                                                <asp:Parameter Name="EmployeeID" Type="Int32" />
                                                <asp:Parameter Name="original_BillingID" Type="Int32" />
                                                <asp:Parameter Name="original_TransactionNo" Type="Int32" />
                                                <asp:Parameter Name="original_TransactionDateTime" Type="DateTime" />
                                                <asp:Parameter Name="original_ServiceItem" Type="String" />
                                                <asp:Parameter Name="original_Price" Type="Double" />
                                                <asp:Parameter Name="original_PatientID" Type="Int32" />
                                                <asp:Parameter Name="original_EmployeeID" Type="Int32" />
                                            </UpdateParameters>
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


