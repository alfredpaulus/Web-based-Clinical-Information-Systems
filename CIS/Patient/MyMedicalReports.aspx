<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLogin.master" AutoEventWireup="true" CodeFile="MyMedicalReports.aspx.cs" Inherits="CIS_Patient_MyMedicalReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">My Medical Reports</a></h2>
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
                                    <td style="width: 25%"><asp:Button ID="btnShowPrescriptions" runat="server" Text="Show Doctor's Prescription" OnClick="btnShowPrescriptions_Click" /></td>
                                    <td style="width: 45%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>
                            <asp:Panel ID="Panel1" runat="server" Visible="False">
                                <table>
                                  <tr style="text-align:left">
							        <td style="width: 05%"></td>
                                    <td style="width: 90%"><asp:GridView ID="grdviewPrescriptions" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" EmptyDataText="No data to show" HorizontalAlign="Center" ShowHeaderWhenEmpty="True">
                                        <Columns>
                                            <asp:BoundField DataField="ConsultationDateTime" HeaderText="Date/Time" SortExpression="ConsultationDateTime" >
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Prescription" HeaderText="Prescription" SortExpression="Prescription">
                                            </asp:BoundField>
                                            <asp:BoundField DataField="ChiefComplaint" HeaderText="Chief Complaint" SortExpression="ChiefComplaint" >
                                            </asp:BoundField>
                                            <asp:BoundField DataField="MDName" HeaderText="M.D. Name" SortExpression="MDName" />
                                        </Columns>
                                        <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                                        <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                                        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FMCISConnectionString2 %>" SelectCommand="SELECT e1.ConsultationDateTime, e1.Prescription, e1.ChiefComplaint, e2.MDName 
FROM MedicalRecordConsultation e1 INNER JOIN Doctor e2 ON e1.DoctorAccountNo=e2.AccountNo WHERE ([PatientAccountNo] = @PatientAccountNo) ORDER BY [ConsultationDateTime] DESC">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="PatientAccountNo" SessionField="AccountNo" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                      </td>
                                    <td style="width: 05%"></td>
                                  </tr>
                                </table>
                            </asp:Panel>

                            <%--<hr/>--%>

                            <%--discontinued--%>
                            <%--<table>
                                  <tr style="text-align:left">
							        <td style="width: 25%"></td>
                                    <td style="width: 25%"><asp:Button ID="btnShowLaboratoryResults" runat="server" Text="Show Laboratory Results" OnClick="btnShowLaboratoryResults_Click" /></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                            </table>
                            <asp:Panel ID="Panel2" runat="server" Visible="False">
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 25%"></td>
							        <td style="width: 10%">Laboratory:</td>
                                    <td style="width: 25%"><asp:DropDownList ID="ddlExam" runat="server">
                                                                <asp:ListItem Text="Vital Signs" Value="Vital Signs" Selected="True">Vital Signs</asp:ListItem>
                                                                <asp:ListItem Text="Audiometry" Value="Audiometry">Audiometry</asp:ListItem>
                                                                <asp:ListItem Text="Blood Chemistry" Value="Blood Chemistry">Blood Chemistry</asp:ListItem>
                                                                <asp:ListItem Text="CT Scan" Value="CTScan">CT Scan</asp:ListItem>
                                                                <asp:ListItem Text="Cytopathology" Value="Cytopathology">Cytopathology</asp:ListItem>
                                                                <asp:ListItem Text="Dental" Value="Dental" >Dental</asp:ListItem>
                                                                <asp:ListItem Text="Drug Test" Value="Drug Test">Drug Test</asp:ListItem>
                                                                <asp:ListItem Text="Fecalysis" Value="Fecalysis">Fecalysis</asp:ListItem>
                                                                <asp:ListItem Text="Haematology" Value="Haematology">Haematology</asp:ListItem>
                                                                <asp:ListItem Text="Immunology" Value="Immunology">Immunology</asp:ListItem>
                                                                <asp:ListItem Text="Physical Exam" Value="Physical Exam">Physical Exam</asp:ListItem>
                                                                <asp:ListItem Text="Psychology" Value="Psychology">Psychology</asp:ListItem>
                                                                <asp:ListItem Text="Ultrasound" Value="Ultrasound">Ultrasound</asp:ListItem>
                                                                <asp:ListItem Text="Urinalysis" Value="Urinalysis">Urinalysis</asp:ListItem>
                                                                <asp:ListItem Text="X-ray" Value="X-ray">X-ray</asp:ListItem>
                                                           </asp:DropDownList></td>
                                    <td style="width: 40%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
							        <td style="width: 05%"></td>
                                    <td style="width: 90%"><asp:GridView ID="grdviewLaboratoryResults" runat="server"></asp:GridView></td>
                                    <td style="width: 05%"></td>
                                  </tr>
                                </table>
                            </asp:Panel>--%>
              
						</article>
						<hr />
					</div>

				</div>
</asp:Content>

