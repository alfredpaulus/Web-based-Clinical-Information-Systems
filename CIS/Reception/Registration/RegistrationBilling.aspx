<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISReception.master" AutoEventWireup="true" CodeFile="RegistrationBilling.aspx.cs" Inherits="CIS_Registration_RegistrationBilling" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ScriptManager>
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
                                    <td style="width: 15%">Transaction Date/Time:</td>
							        <td style="width: 15%"><asp:Label ID="lblDateTimeNow" runat="server" Text="01/01/2016 16:19"></asp:Label></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 15%">Transaction ID:</td>
							        <td style="width: 15%"><asp:Label ID="lblCurrentTransactionID" runat="server" Text="Consultation ID: 0123456789"></asp:Label></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <br /> 

                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td>
							        <td style="width: 25%">Patient ID:</td>
                                    <td style="width: 25%"><asp:Label ID="lblPatientID" runat="server" Text="00000000"></asp:Label></td>
                                    <td style="width: 40%"></td>
                                    <%--<td style="width: 25%">DOB:</td>
                                    <td style="width: 25%"><asp:Label ID="lblPatientDOB" runat="server" Text="01/01/1996"></asp:Label></td>--%>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td>
							        <td style="width: 25%">Patient Name: </td>
                                    <td style="width: 25%"><asp:Label ID="lblPatientName" runat="server" Text="Lorem I. Dolor"></asp:Label></td>
                                    <td style="width: 40%"></td>
                                    <%--<td style="width: 25%">Age:</td>
                                    <td style="width: 25%"><asp:Label ID="lblPatientAge" runat="server" Text="20"></asp:Label></td>--%>
                                  </tr>
                                </table>

                                <br/>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"></td>
                                    <td style="width: 50%"><asp:Label ID="lblMessage" runat="server" ForeColor="#FF3300"></asp:Label></td>
							        <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <br/>

                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td>
							        <td style="width: 05%">Item: </td>
                                    <td style="width: 30%"><asp:DropDownList ID="ddlItem" runat="server">
                                        <asp:ListItem Value="500.00">Consultation</asp:ListItem>
                                        <asp:ListItem Value="400.00">LabAudiometry</asp:ListItem>
                                        <asp:ListItem Value="800.00">LabBloodChem</asp:ListItem>
                                        <asp:ListItem Value="800.00">LabCTScan</asp:ListItem>
                                        <asp:ListItem Value="1200.00">LabCytopathology</asp:ListItem>
                                        <asp:ListItem Value="550.00">LabDental</asp:ListItem>
                                        <asp:ListItem Value="300.00">LabDrugTest</asp:ListItem>
                                        <asp:ListItem Value="150.50">LabFecalysis</asp:ListItem>
                                        <asp:ListItem Value="100.25">LabHaematology</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 20%"><asp:Button ID="btnAddItem" runat="server" Text="Add Item" OnClick="btnAddItem_Click" /></td>
                                    <td style="width: 35%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td>
							        <td style="width: 25%">Transactions:</td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 40%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td>
							        <td style="width: 80%"></td>
                                    <td style="width: 10%"></td>
                                  </tr>
                                </table>

                                <br />

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 15%"></td>
                                    <td style="width: 70%"><asp:GridView ID="gridviewTransaction" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" DataKeyNames="BillingID" DataSourceID="SqlDataSource1" OnPageIndexChanged="gridviewTransaction_PageIndexChanged" OnRowDeleted="gridviewTransaction_RowDeleted" OnRowDeleting="gridviewTransaction_RowDeleting">
                                        <Columns>
                                            <asp:BoundField DataField="BillingID" HeaderText="Billing ID" SortExpression="BillingID" />
                                            <asp:BoundField DataField="ServiceItem" HeaderText="Item" SortExpression="ServiceItem" />
                                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                        </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:FortMedCISConnectionString %>" 
                                            DeleteCommand="DELETE FROM [BillingTransactions] WHERE [BillingID] = @original_BillingID"
                                            InsertCommand="INSERT INTO [BillingTransactions] ([TransactionNo], [TransactionDateTime], [ServiceItem], [Price], [PatientID], [EmployeeID]) VALUES (@TransactionNo, @TransactionDateTime, @ServiceItem, @Price, @PatientID, @EmployeeID)" OldValuesParameterFormatString="original_{0}" 
                                            SelectCommand="SELECT * FROM [BillingTransactions] WHERE ([TransactionNo] = @TransactionNo)" 
                                            UpdateCommand="UPDATE [BillingTransactions] SET [TransactionNo] = @TransactionNo, [TransactionDateTime] = @TransactionDateTime, [ServiceItem] = @ServiceItem, [Price] = @Price, [PatientID] = @PatientID, [EmployeeID] = @EmployeeID WHERE [BillingID] = @original_BillingID AND [TransactionNo] = @original_TransactionNo AND (([TransactionDateTime] = @original_TransactionDateTime) OR ([TransactionDateTime] IS NULL AND @original_TransactionDateTime IS NULL)) AND (([ServiceItem] = @original_ServiceItem) OR ([ServiceItem] IS NULL AND @original_ServiceItem IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([PatientID] = @original_PatientID) OR ([PatientID] IS NULL AND @original_PatientID IS NULL)) AND (([EmployeeID] = @original_EmployeeID) OR ([EmployeeID] IS NULL AND @original_EmployeeID IS NULL))">
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
                                                <asp:SessionParameter Name="TransactionNo" SessionField="CurrentTransactionID" Type="Int32" />
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
							        <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td>
							        <td style="width: 25%"><b>Total:</b></td>
                                    <td style="width: 25%"><asp:Label ID="lblTotal" runat="server" Text="0.00" AssociatedControlID="btnAddItem"></asp:Label></td>
                                    <td style="width: 40%"></td>
                                  </tr>
                                </table>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">&nbsp;</td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"><asp:Button ID="btnMRDClear" runat="server" Text="Clear" BackColor="#999999" OnClick="btnMRDClear_Click" /></td>
							        <td style="width: 25%"><asp:Button ID="btnMRDSubmit" runat="server" Text="Submit" OnClick="btnMRDSubmit_Click" /></td>
                                  </tr>
                                </table>
                                
                    </div>
				</div>

</asp:Content>





<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                                  <tr style="text-align:center">
							        <td style="width: 25%">Patient ID:</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbRHPatientID" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">or</td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
							        <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Patient Name: </td>
                                    <td style="width: 25%"><asp:TextBox ID="TextBox1" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <br />
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"><asp:Button ID="Button2" runat="server" Text="Show Transactions" /></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
							        <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <br />
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Date | Time:</td>
                                    <td style="width: 25%"><asp:Label ID="Label1" runat="server" Text="00/00/0000 | 00:00" Font-Bold="True"></asp:Label></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Transactions: </td>
                                    <td style="width: 75%">
                                        <asp:GridView ID="GridView1" runat="server">
                                            <Columns>
                                                <asp:BoundField HeaderText="Description" />
                                                <asp:BoundField HeaderText="Amount" />
                                            </Columns>
                                        </asp:GridView>
                                    </td>
                                  </tr>
                                </table>
                                
                                <br />
                                <br />

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"><asp:Button ID="btnRHClear" runat="server" Text="Cancel" BackColor="#999999" /></td>
							        <td style="width: 25%"><asp:Button ID="btnRHSubmit" runat="server" Text="Ok" /></td>
                                  </tr>
                                </table>

                    </div>
				</div>

</asp:Content>
--%>
