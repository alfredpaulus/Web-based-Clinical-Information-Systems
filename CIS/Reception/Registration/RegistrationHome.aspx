<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISReception.master" AutoEventWireup="true" CodeFile="RegistrationHome.aspx.cs" Inherits="CIS_Registration_RegistrationHome" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">Registration</a></h2>
							</header>
                            <br /> 
                            <br /> 
                        </article>
                        
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"></td>
							        <td style="width: 50%"><asp:Label ID="lblMessage" runat="server" Text="" Font-Size="X-Large"></asp:Label></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <br />

                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Now Serving:</td>
                                    <td style="width: 25%"><asp:Label ID="lblServingNo" runat="server" Text="00" ForeColor="#FFCC00" Font-Size="35px" Font-Bold="True" BorderWidth="1px" BorderStyle="Solid"></asp:Label></td>
                                    <td style="width: 25%"><asp:Button ID="btnRHNext" runat="server" Text="Next" BackColor="#999999" OnClick="btnRHNext_Click" />
                                        <ajaxToolkit:ConfirmButtonExtender ID="btnRHNext_ConfirmButtonExtender" runat="server" BehaviorID="btnRHNext_ConfirmButtonExtender" ConfirmText="Are you sure you want to call the next patient? Unsubmitted registration form will be considered as cancelled." TargetControlID="btnRHNext">
                                        </ajaxToolkit:ConfirmButtonExtender></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <br /> 
                                <br /> 

                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>


                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Patient ID:</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbRHPatientID" Width="300" Font-Size="Medium" Height="30px" runat="server" AutoPostBack="False" ReadOnly="True"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Patient Name: </td>
                                    <td style="width: 25%"><asp:TextBox ID="tbRHPatientName" Width="300" Font-Size="Medium" Height="30px" runat="server" Enabled="True" AutoPostBack="False" ReadOnly="True"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Notes: </td>
                                    <td style="width: 50%"><asp:TextBox ID="tbRHNotes" Width="300" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Nurse: </td>
                                    <td style="width: 25%"><asp:DropDownList ID="ddlNurse" Width="300px" Font-Size="Medium" runat="server" DataSourceID="SqlDataSource1" DataTextField="RNMTName" DataValueField="AccountNo" AutoPostBack="True"></asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FMCISConnectionString2 %>" SelectCommand="SELECT [AccountNo], [RNMTName], [NM] FROM [NurseMedTech] WHERE ([NM] = @NM)">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="N" Name="NM" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                      </td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Department: </td>
                                    <td style="width: 25%"><asp:DropDownList ID="ddlDepartment" Width="300px" Font-Size="Medium" runat="server" DataSourceID="SqlDataSource2" DataTextField="DepartmentName" DataValueField="DepartmentID" AutoPostBack="True"></asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FMCISConnectionString2 %>" SelectCommand="SELECT [DepartmentID], [DepartmentName] FROM [Departments]"></asp:SqlDataSource>
                                      </td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                
                                <table>
                                  <tr style="text-align:center">
                                    <%--<td style="width: 50%"><asp:GridView ID="gridviewAvailableDoctors" runat="server" Caption="Currently Available Doctors" CaptionAlign="Top" RowHeaderColumn="ASDDFFSDD" BackColor="#99FF99" EmptyDataText="No  Available Doctors Today" Font-Bold="True" GridLines="None" Enabled="False"></asp:GridView></td>--%>
                                    <%--<td style="width: 50%"><asp:GridView ID="gridviewNotAvailableDoctors" runat="server" Caption="Currently NOT Available Doctors" CaptionAlign="Top" RowHeaderColumn="ASDDFFSDD" BackColor="#FF9999" Font-Bold="True" GridLines="None" Enabled="False"></asp:GridView></td>--%>
                                    <td style="width: 50%"><asp:Label ID="lblDocClinicTime" runat="server" Text="Clinic Time"></asp:Label></td>
                                  </tr>
                                </table>

                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Doctor: </td>
                                    <td style="width: 25%"><asp:DropDownList ID="ddlDoctor" Width="300px" Font-Size="Medium" runat="server" DataSourceID="SqlDataSource3" DataTextField="MDName" DataValueField="AccountNo" AutoPostBack="True" OnDataBound="ddlDoctor_DataBound" OnSelectedIndexChanged="ddlDoctor_SelectedIndexChanged"></asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FMCISConnectionString2 %>" SelectCommand="SELECT [MDName], [AccountNo] FROM [Doctor] WHERE ([Department] = @Department)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="ddlDepartment" DefaultValue="1" Name="Department" PropertyName="SelectedValue" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                      </td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                            </ContentTemplate>
                        </asp:UpdatePanel>

                                <br />
                                <br />
                                <br />

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"><asp:Button ID="btnRHSubmit" runat="server" Text="Submit" OnClick="btnRHSubmit_Click" /></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
							        <td style="width: 25%"></td>
                                  </tr>
                                </table>

                    </div>
				</div>

</asp:Content>

