<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISMedicalRecord.master" AutoEventWireup="true" CodeFile="MedicalRecordDoctor.aspx.cs" Inherits="CIS_MedicalRecord_MedicalRecordDoctor" %>

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
								<h2><a href="#">Consultation</a></h2>
							</header>
                            <p>&nbsp</p> 
                            <p>&nbsp</p> 
                        </article>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"></td>
                                    <td style="width: 50%"><asp:Label ID="lblMessage" runat="server" ForeColor="#FF3300"></asp:Label></td>
							        <td style="width: 25%"></td>
                                  </tr>
                                </table>
                        
                                <br />

                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">
                                        <asp:Label ID="lblDateTimeNow" runat="server" Text="01/01/2016 16:19" Font-Size="Large"></asp:Label> &nbsp &nbsp &nbsp
                                        <asp:Label ID="lblCurrentConsultationID" runat="server" Text="Consultation ID: 0123456789" Font-Size="Large"></asp:Label>
							        </td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <p>&nbsp</p>
                                <p>&nbsp</p>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Patient ID:</td>
                                    <td style="width: 25%"><asp:Label ID="lblPatientID" runat="server" Text="00000000"></asp:Label></td>
                                    <td style="width: 25%">DOB:</td>
                                    <td style="width: 25%"><asp:Label ID="lblPatientDOB" runat="server" Text="01/01/1996"></asp:Label></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Patient Name: </td>
                                    <td style="width: 25%"><asp:Label ID="lblPatientName" runat="server" Text="Lorem I. Dolor"></asp:Label></td>
                                    <td style="width: 25%">Age:</td>
                                    <td style="width: 25%"><asp:Label ID="lblPatientAge" runat="server" Text="20"></asp:Label></td>
                                  </tr>
                                </table>

                                <br/>

                                <%--<table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td>
							        <td style="width: 25%"><asp:Button ID="btnShowPatientVitalSigns" runat="server" Text="Show Patient Current Vital Signs" OnClick="btnShowPatientVitalSigns_Click" /></td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 05%"></td>
                                  </tr>
                                </table>
                                <asp:Panel ID="Panel1" runat="server" Visible="False">
                                    <table>--%>
       
                                <br/>

                                <%--<table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td>
							        <td style="width: 15%"></td>
                                    <td style="width: 15%"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 35%"></td>
                                  </tr>
                                </table>--%>
                                <asp:Button ID="btnPastConsultation" runat="server" Text="Past Consultation" />
<br />
<br />
                                <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" ScrollBars="Auto">
                                    <asp:GridView ID="gridviewPastConsultation" runat="server" EmptyDataText="No Past Consultation Record" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" PageSize="5" HorizontalAlign="Center" HeaderStyle-Wrap="True" CellSpacing="5" GridLines="Horizontal" ForeColor="Black">
                                        <Columns>
                                            <asp:BoundField DataField="ConsultationDateTime" HeaderText="Date Time" SortExpression="ConsultationDateTime" />
                                            <asp:BoundField DataField="ChiefComplaint" HeaderText="Chief Complaint" SortExpression="ChiefComplaint" />
                                            <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
                                            <asp:BoundField DataField="ExaminationAdvice" HeaderText="Examination Advice" SortExpression="ExaminationAdvice" />
                                            <asp:BoundField DataField="ExaminationResults" HeaderText="Examination Results" SortExpression="ExaminationResults" />
                                            <asp:BoundField DataField="DiagnosisType" HeaderText="Diagnosis Type" SortExpression="DiagnosisType" />
                                            <asp:BoundField DataField="DiagnosisResults" HeaderText="Diagnosis Results" SortExpression="DiagnosisResults" />
                                            <asp:BoundField DataField="TreatmentPlan" HeaderText="Treatment Plan" SortExpression="TreatmentPlan" />
                                            <asp:BoundField DataField="Prescription" HeaderText="Prescription" SortExpression="Prescription" />
                                            <asp:BoundField DataField="CaseSummary" HeaderText="Case Summary" SortExpression="CaseSummary" />
                                            <asp:BoundField DataField="ReferredTo" HeaderText="Referred To" SortExpression="ReferredTo" />
                                        </Columns>
                                        <HeaderStyle BackColor="#006600" BorderStyle="Double" ForeColor="White" Wrap="True" />
                                        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FortMedCISConnectionString %>" SelectCommand="SELECT [ConsultationDateTime], [ChiefComplaint], [Remarks], [ExaminationAdvice], [ExaminationResults], [DiagnosisType], [DiagnosisResults], [TreatmentPlan], [Prescription], [CaseSummary], [ReferredTo] FROM [MedicalRecordConsultation] WHERE ([PatientAccountNo] = @PatientAccountNo) ORDER BY [ConsultationDateTime] DESC">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="PatientAccountNo" SessionField="CurrentConsultationPatientID" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </asp:Panel>
                                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" TargetControlID="Panel1" CollapseControlID="btnPastConsultation" ExpandControlID="btnPastConsultation" ExpandedText="Hide Past Consultations" CollapsedText="Show Past Consultations" Collapsed="True" TextLabelID="Label1" />

                                <br />
<hr/>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Chief Complaint:</td>
                                    <td style="width: 75%"><asp:TextBox ID="tbChiefComplaint" Width="800" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Examination Advice:</td>
                                    <td style="width: 75%"><asp:TextBox ID="tbExamAdvice" Width="800" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Examination Results:</td>
                                    <td style="width: 75%"><asp:TextBox ID="tbExamResult" Width="800" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Diagnosis Type:</td>
                                    <td style="width: 75%"><asp:TextBox ID="tbDiagnosisType" Width="800" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Diagnosis Results:</td>
                                    <td style="width: 75%"><asp:TextBox ID="tbDiagnosisResult" Width="800" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Treatment Plan:</td>
                                    <td style="width: 75%"><asp:TextBox ID="tbTreatmentPlan" Width="800" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Prescription:</td>
                                    <td style="width: 75%"><asp:TextBox ID="tbPrescription" Width="800" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Case Summary:</td>
                                    <td style="width: 75%"><asp:TextBox ID="tbCaseSummary" Width="800" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Referred To:</td>
                                    <td style="width: 75%"><asp:TextBox ID="tbReferredto" Width="800" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Remarks:</td>
                                    <td style="width: 75%"><asp:TextBox ID="tbRemarks" Width="800" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                  </tr>
                                </table>

                                
                                <p>&nbsp</p>
                                <p>&nbsp</p>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"><asp:Button ID="btnMRDCancel" runat="server" Text="Cancel" BackColor="#999999" OnClick="btnMRDCancel_Click" />
                                        <ajaxToolkit:ConfirmButtonExtender ID="btnMRDCancel_ConfirmButtonExtender" runat="server" BehaviorID="btnMRDCancel_ConfirmButtonExtender" ConfirmText="Are you sure you want to cancel the current consultation?" TargetControlID="btnMRDCancel">
                                        </ajaxToolkit:ConfirmButtonExtender>
                                      </td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"><asp:Button ID="btnMRDClear" runat="server" Text="Clear" BackColor="#999999" /></td>
							        <td style="width: 25%"><asp:Button ID="btnMRDSubmit" runat="server" Text="Submit" /></td>
                                  </tr>
                                </table>
                                
                    </div>
				</div>

</asp:Content>











