<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISAdmin.master" AutoEventWireup="true" CodeFile="AdminManageAccounts.aspx.cs" Inherits="CIS_Admin_AdminManageAccounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Main -->
    <div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">Manage Accounts</a></h2>
							</header>

                            <br/>
                            <br/>

                            
                            <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"></td>
							        <td style="width: 25%"><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>

                            <br />

                            <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"><asp:Button ID="btnRefresh" runat="server" Text="Refresh" /></td>
							        <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>

                            <br/>

                            <h3>Manage Patient Accounts</h3>
                            <table>
                                  <tr style="text-align:left">
							        <td style="width: 05%"></td>
                                    <td style="width: 25%"><asp:Button ID="btnShowPatientAccounts" runat="server" Text="Show Appointment Schedule Requests" /></td>
                                    <td style="width: 10%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>
                            <asp:Panel ID="Panel1" runat="server" Visible="False" ScrollBars="Vertical">
                                <asp:GridView ID="gridviewPatientAccounts" runat="server" HeaderStyle-BorderStyle="Solid" autogeneratecolumns="False" AllowSorting="True" HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" HeaderStyle-BackColor="#99FF99" ItemStyle-HorizontalAlign="Center" BorderColor="#999999" BorderStyle="Solid" BorderWidth="5px" RowStyle-BorderStyle="Solid" RowStyle-BorderWidth="15" RowStyle-BorderColor="#999999" AllowPaging="True" AutoGenerateEditButton="True" CellPadding="10" CellSpacing="5" DataKeyNames="AccountNo" DataSourceID="DataSourcePatientTable" EmptyDataText="No Data Records Found" Font-Size="Medium" HorizontalAlign="Center" PageSize="7" >
                                    <Columns>
                                        <asp:BoundField DataField="AccountNo" HeaderText="AccountNo" InsertVisible="False" ReadOnly="True" SortExpression="AccountNo" />
                                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                        <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
                                        <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                                        <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                        <asp:BoundField DataField="CivilStatus" HeaderText="CivilStatus" SortExpression="CivilStatus" />
                                        <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
                                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                        <asp:BoundField DataField="TelNo" HeaderText="TelNo" SortExpression="TelNo" />
                                        <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                                        <asp:BoundField DataField="Occupation" HeaderText="Occupation" SortExpression="Occupation" />
                                        <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
                                    </Columns>
                                    <EditRowStyle BackColor="#0099FF" BorderStyle="Solid" Font-Size="Small" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <HeaderStyle BackColor="#99FF99" BorderStyle="Solid" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <RowStyle BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px"  HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="DataSourcePatientTable" runat="server" ConnectionString="<%$ ConnectionStrings:FortMedCISConnectionString %>" DeleteCommand="DELETE FROM [Patient] WHERE [AccountNo] = @original_AccountNo" InsertCommand="INSERT INTO [Patient] ([Username], [Pass], [Fname], [Lname], [Gender], [CivilStatus], [Nationality], [City], [TelNo], [MobileNo], [Occupation], [Remarks]) VALUES (@Username, @Pass, @Fname, @Lname, @Gender, @CivilStatus, @Nationality, @City, @TelNo, @MobileNo, @Occupation, @Remarks)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [AccountNo], [Username], [Pass], [Fname], [Lname], [Gender], [CivilStatus], [Nationality], [City], [TelNo], [MobileNo], [Occupation], [Remarks] FROM [Patient]" UpdateCommand="UPDATE [Patient] SET [Username] = @Username, [Pass] = @Pass, [Fname] = @Fname, [Lname] = @Lname, [Gender] = @Gender, [CivilStatus] = @CivilStatus, [Nationality] = @Nationality, [City] = @City, [TelNo] = @TelNo, [MobileNo] = @MobileNo, [Occupation] = @Occupation, [Remarks] = @Remarks WHERE [AccountNo] = @original_AccountNo" ProviderName="System.Data.SqlClient">
                                    <DeleteParameters>
                                        <asp:Parameter Name="original_AccountNo" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="Username" Type="String" />
                                        <asp:Parameter Name="Pass" Type="String" />
                                        <asp:Parameter Name="Fname" Type="String" />
                                        <asp:Parameter Name="Lname" Type="String" />
                                        <asp:Parameter Name="Gender" Type="String" />
                                        <asp:Parameter Name="CivilStatus" Type="String" />
                                        <asp:Parameter Name="Nationality" Type="String" />
                                        <asp:Parameter Name="City" Type="String" />
                                        <asp:Parameter Name="TelNo" Type="String" />
                                        <asp:Parameter Name="MobileNo" Type="String" />
                                        <asp:Parameter Name="Occupation" Type="String" />
                                        <asp:Parameter Name="Remarks" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="Username" Type="String" />
                                        <asp:Parameter Name="Pass" Type="String" />
                                        <asp:Parameter Name="Fname" Type="String" />
                                        <asp:Parameter Name="Lname" Type="String" />
                                        <asp:Parameter Name="Gender" Type="String" />
                                        <asp:Parameter Name="CivilStatus" Type="String" />
                                        <asp:Parameter Name="Nationality" Type="String" />
                                        <asp:Parameter Name="City" Type="String" />
                                        <asp:Parameter Name="TelNo" Type="String" />
                                        <asp:Parameter Name="MobileNo" Type="String" />
                                        <asp:Parameter Name="Occupation" Type="String" />
                                        <asp:Parameter Name="Remarks" Type="String" />
                                        <asp:Parameter Name="original_AccountNo" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </asp:Panel>

                            <hr/>

                            <h3>Manage Doctor Accounts</h3>
                            <table>
                                  <tr style="text-align:left">
							        <td style="width: 05%"></td>
                                    <td style="width: 25%"><asp:Button ID="btnShowDoctorsAccounts" runat="server" Text="Show Approved Appointments" /></td>
                                    <td style="width: 10%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>
                            <asp:Panel ID="Panel2" runat="server" Visible="False">
                               <asp:GridView ID="gridview3" runat="server" HeaderStyle-BorderStyle="Solid" autogeneratecolumns="False" AllowSorting="True" HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" HeaderStyle-BackColor="#99FF99" ItemStyle-HorizontalAlign="Center" BorderColor="#999999" BorderStyle="Solid" BorderWidth="0px" RowStyle-BorderStyle="Solid" RowStyle-BorderWidth="1" RowStyle-BorderColor="#999999" AllowPaging="True" AutoGenerateEditButton="True" CellPadding="10" CellSpacing="5" DataKeyNames="AccountNo" DataSourceID="DataSourceDoctorTable" EmptyDataText="No Data Records Found" Font-Size="Medium" HorizontalAlign="Center" PageSize="7" ShowFooter="True" >
                                    <Columns>
                                        <asp:BoundField DataField="AccountNo" HeaderText="AccountNo" InsertVisible="False" ReadOnly="True" SortExpression="AccountNo" />
                                        <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
                                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                                        <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                                        <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                                        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                        <asp:BoundField DataField="PRCLicenseNo" HeaderText="PRCLicenseNo" SortExpression="PRCLicenseNo" />
                                        <asp:BoundField DataField="MDName" HeaderText="MDName" SortExpression="MDName" />
                                    </Columns>
                                    <EditRowStyle BackColor="#0099FF" BorderStyle="Dashed" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <HeaderStyle BackColor="#99FF99" BorderStyle="Solid" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <RowStyle BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="DataSourceDoctorTable" runat="server" ConnectionString="<%$ ConnectionStrings:FortMedCISConnectionString %>" DeleteCommand="DELETE FROM [Doctor] WHERE [AccountNo] = @original_AccountNo" InsertCommand="INSERT INTO [Doctor] ([Pass], [Department], [Fname], [Lname], [ContactNo], [Email], [PRCLicenseNo], [MDName]) VALUES (@Pass, @Department, @Fname, @Lname, @ContactNo, @Email, @PRCLicenseNo, @MDName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [AccountNo], [Pass], [Department], [Fname], [Lname], [ContactNo], [Email], [PRCLicenseNo], [MDName] FROM [Doctor]" UpdateCommand="UPDATE [Doctor] SET [Pass] = @Pass, [Department] = @Department, [Fname] = @Fname, [Lname] = @Lname, [ContactNo] = @ContactNo, [Email] = @Email, [PRCLicenseNo] = @PRCLicenseNo, [MDName] = @MDName WHERE [AccountNo] = @original_AccountNo" ProviderName="System.Data.SqlClient">
                                    <DeleteParameters>
                                        <asp:Parameter Name="original_AccountNo" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="Pass" Type="String" />
                                        <asp:Parameter Name="Department" Type="String" />
                                        <asp:Parameter Name="Fname" Type="String" />
                                        <asp:Parameter Name="Lname" Type="String" />
                                        <asp:Parameter Name="ContactNo" Type="String" />
                                        <asp:Parameter Name="Email" Type="String" />
                                        <asp:Parameter Name="PRCLicenseNo" Type="String" />
                                        <asp:Parameter Name="MDName" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="Pass" Type="String" />
                                        <asp:Parameter Name="Department" Type="String" />
                                        <asp:Parameter Name="Fname" Type="String" />
                                        <asp:Parameter Name="Lname" Type="String" />
                                        <asp:Parameter Name="ContactNo" Type="String" />
                                        <asp:Parameter Name="Email" Type="String" />
                                        <asp:Parameter Name="PRCLicenseNo" Type="String" />
                                        <asp:Parameter Name="MDName" Type="String" />
                                        <asp:Parameter Name="original_AccountNo" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </asp:Panel>

                            <hr/>

                            <h3>Manage NurseMedTech Accounts</h3>
                            <table>
                                  <tr style="text-align:left">
							        <td style="width: 05%"></td>
                                    <td style="width: 25%"><asp:Button ID="btnShowNurseMedTechAccounts" runat="server" Text="Show Nurse/MedTech Accounts" /></td>
                                    <td style="width: 10%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>
                            <asp:Panel ID="Panel3" runat="server" Visible="False">
                               <asp:GridView ID="gridview1" runat="server" HeaderStyle-BorderStyle="Solid" autogeneratecolumns="False" AllowSorting="True" HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" HeaderStyle-BackColor="#99FF99" ItemStyle-HorizontalAlign="Center" BorderColor="#999999" BorderStyle="Solid" BorderWidth="0px" RowStyle-BorderStyle="Solid" RowStyle-BorderWidth="1" RowStyle-BorderColor="#999999" AllowPaging="True" AutoGenerateEditButton="True" CellPadding="10" CellSpacing="5" DataKeyNames="AccountNo" DataSourceID="DataSourceMedTechNurseTable" EmptyDataText="No Data Records Found" Font-Size="Medium" HorizontalAlign="Center" PageSize="7" >
                                    <Columns>
                                        <asp:BoundField DataField="AccountNo" HeaderText="AccountNo" InsertVisible="False" ReadOnly="True" SortExpression="AccountNo" />
                                        <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
                                        <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                                        <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                        <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
                                        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                        <asp:BoundField DataField="PRCLicenseNo" HeaderText="PRCLicenseNo" SortExpression="PRCLicenseNo" />
                                    </Columns>
                                    <EditRowStyle BackColor="#0099FF" BorderStyle="Dashed" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <HeaderStyle BackColor="#99FF99" BorderStyle="Solid" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <RowStyle BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="DataSourceMedTechNurseTable" runat="server" ConnectionString="<%$ ConnectionStrings:FortMedCISConnectionString %>" DeleteCommand="DELETE FROM [NurseMedTech] WHERE [AccountNo] = @original_AccountNo" InsertCommand="INSERT INTO [NurseMedTech] ([Pass], [Fname], [Lname], [Gender], [Address1], [ContactNo], [Email], [PRCLicenseNo]) VALUES (@Pass, @Fname, @Lname, @Gender, @Address1, @ContactNo, @Email, @PRCLicenseNo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [AccountNo], [Pass], [Fname], [Lname], [Gender], [Address1], [ContactNo], [Email], [PRCLicenseNo] FROM [NurseMedTech]" UpdateCommand="UPDATE [NurseMedTech] SET [Pass] = @Pass, [Fname] = @Fname, [Lname] = @Lname, [Gender] = @Gender, [Address1] = @Address1, [ContactNo] = @ContactNo, [Email] = @Email, [PRCLicenseNo] = @PRCLicenseNo WHERE [AccountNo] = @original_AccountNo">
                                    <DeleteParameters>
                                        <asp:Parameter Name="original_AccountNo" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="Pass" Type="String" />
                                        <asp:Parameter Name="Fname" Type="String" />
                                        <asp:Parameter Name="Lname" Type="String" />
                                        <asp:Parameter Name="Gender" Type="String" />
                                        <asp:Parameter Name="Address1" Type="String" />
                                        <asp:Parameter Name="ContactNo" Type="String" />
                                        <asp:Parameter Name="Email" Type="String" />
                                        <asp:Parameter Name="PRCLicenseNo" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="Pass" Type="String" />
                                        <asp:Parameter Name="Fname" Type="String" />
                                        <asp:Parameter Name="Lname" Type="String" />
                                        <asp:Parameter Name="Gender" Type="String" />
                                        <asp:Parameter Name="Address1" Type="String" />
                                        <asp:Parameter Name="ContactNo" Type="String" />
                                        <asp:Parameter Name="Email" Type="String" />
                                        <asp:Parameter Name="PRCLicenseNo" Type="String" />
                                        <asp:Parameter Name="original_AccountNo" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </asp:Panel>

                            <hr/>

                            <h3>Manage Employee Accounts</h3>
                            <table>
                                  <tr style="text-align:left">
							        <td style="width: 05%"></td>
                                    <td style="width: 25%"><asp:Button ID="btnShowEmployeeAccounts" runat="server" Text="Show Employee Accounts" /></td>
                                    <td style="width: 10%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>
                            <asp:Panel ID="Panel4" runat="server" Visible="False">
                                
                               <asp:GridView ID="gridview2" runat="server" HeaderStyle-BorderStyle="Solid" autogeneratecolumns="False" AllowSorting="True" HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" HeaderStyle-BackColor="#99FF99" ItemStyle-HorizontalAlign="Center" BorderColor="#999999" BorderStyle="Solid" BorderWidth="0px" RowStyle-BorderStyle="Solid" RowStyle-BorderWidth="1" RowStyle-BorderColor="#999999" AllowPaging="True" AutoGenerateEditButton="True" CellPadding="10" CellSpacing="5" DataKeyNames="AccountNo" DataSourceID="DataSourceEmployeeTable" EmptyDataText="No Data Records Found" Font-Size="Medium" HorizontalAlign="Center" PageSize="7" >
                                    <Columns>
                                        <asp:BoundField DataField="AccountNo" HeaderText="AccountNo" InsertVisible="False" ReadOnly="True" SortExpression="AccountNo" />
                                        <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
                                        <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                                        <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                                        <asp:BoundField DataField="DoB" HeaderText="DoB" SortExpression="DoB" />
                                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                        <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
                                        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                        <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                                    </Columns>
                                    <EditRowStyle BackColor="#0099FF" BorderStyle="Dashed" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <HeaderStyle BackColor="#99FF99" BorderStyle="Solid" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <RowStyle BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                </asp:GridView>
                            </asp:Panel>
              <asp:SqlDataSource ID="DataSourceEmployeeTable" runat="server" ConnectionString="<%$ ConnectionStrings:FortMedCISConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [AccountNo] = @AccountNo" InsertCommand="INSERT INTO [Employee] ([Pass], [Fname], [Lname], [DoB], [Gender], [Address1], [ContactNo], [Email], [Position]) VALUES (@Pass, @Fname, @Lname, @DoB, @Gender, @Address1, @ContactNo, @Email, @Position)" SelectCommand="SELECT [AccountNo], [Pass], [Fname], [Lname], [DoB], [Gender], [Address1], [ContactNo], [Email], [Position] FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [Pass] = @Pass, [Fname] = @Fname, [Lname] = @Lname, [DoB] = @DoB, [Gender] = @Gender, [Address1] = @Address1, [ContactNo] = @ContactNo, [Email] = @Email, [Position] = @Position WHERE [AccountNo] = @AccountNo">
                  <DeleteParameters>
                      <asp:Parameter Name="AccountNo" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="Pass" Type="String" />
                      <asp:Parameter Name="Fname" Type="String" />
                      <asp:Parameter Name="Lname" Type="String" />
                      <asp:Parameter DbType="Date" Name="DoB" />
                      <asp:Parameter Name="Gender" Type="String" />
                      <asp:Parameter Name="Address1" Type="String" />
                      <asp:Parameter Name="ContactNo" Type="String" />
                      <asp:Parameter Name="Email" Type="String" />
                      <asp:Parameter Name="Position" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="Pass" Type="String" />
                      <asp:Parameter Name="Fname" Type="String" />
                      <asp:Parameter Name="Lname" Type="String" />
                      <asp:Parameter DbType="Date" Name="DoB" />
                      <asp:Parameter Name="Gender" Type="String" />
                      <asp:Parameter Name="Address1" Type="String" />
                      <asp:Parameter Name="ContactNo" Type="String" />
                      <asp:Parameter Name="Email" Type="String" />
                      <asp:Parameter Name="Position" Type="String" />
                      <asp:Parameter Name="AccountNo" Type="Int32" />
                  </UpdateParameters>
                            </asp:SqlDataSource>
						</article>
						<hr />
					</div>

				</div>
</asp:Content>




