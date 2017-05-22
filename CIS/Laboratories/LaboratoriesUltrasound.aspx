<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISLaboratories.master" AutoEventWireup="true" CodeFile="LaboratoriesUltrasound.aspx.cs" Inherits="CIS_Laboratories_LaboratoriesUltrasound" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 25%;
            height: 37px;
        }
    </style>
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
								<h2><a href="#">Laboratory Exam - Ultrasound</a></h2>
							</header>
                            <br />
                            <br /> 
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
							        <td style="width: 25%">Case No:</td>
                                    <td style="width: 25%"><asp:Label ID="lblCaseNum" runat="server" Text="0123456789"></asp:Label></td>
                                    <td style="width: 25%">Age:</td>
                                    <td style="width: 25%"><asp:Label ID="lblAge" runat="server" Text="20"></asp:Label></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Patient ID:</td>
                                    <td style="width: 25%"><asp:Label ID="lblPatientId" runat="server" Text="00000000"></asp:Label></td>
                                    <td style="width: 25%">Gender:</td>
                                    <td style="width: 25%"><asp:Label ID="lblGender" runat="server" Text="Female"></asp:Label></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td class="auto-style1">Patient Name: </td>
                                    <td class="auto-style1"><asp:Label ID="lblPatientName" runat="server" Text="Lorem I. Dolor"></asp:Label></td>
                                    <td class="auto-style1">Date Performed:</td>
                                       <td style="width: 25%"><asp:Label ID="txtDatePerformed" runat="server" Width="300"  Height="30"></asp:Label></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Date Of Birth: </td>
                                    <td style="width: 25%"><asp:Label ID="lblDateOfBirth" runat="server" Text="01/01/1996"></asp:Label></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <p>&nbsp</p>
                                <p>&nbsp</p>
                                <p>&nbsp</p>


                                <table>
                                  <tr style="text-align:left">
                                      <%--<td style="width: 33.33%"><h3>SPECIMEN ADEQUACY</h3></td>
                                    <td style="width: 33.33%"></td>
                                    <td style="width: 33.33%"><h3>EPITHELIAL CELL ABNORMALITIES</h3></td>--%>
                                    <td style="width: 5%"></td>
                                    <td style="width: 25%"><h3>Ultrasound Findings</h3></td>
                                    <td style="width: 30%"></td>
                                    <td style="width: 25%"><h3></h3></td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Fatal Number:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtFatalNumberUltrasoundFindings" Width="300" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Fatal Lie/Presentation:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtFatalLieUltrasoundFindings" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Placental Location Grade:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtPlacentalLocationGradeUltrasoundFindings" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Amniotic Fluid:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtAmnioticFluidUltrasoundFindings" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Fatal Movement:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtFatalMovementUltrasoundFindings" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Cardiac Activity:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtCardiacActivityUltrasoundFindings" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">FSex:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtFSexUltrasoundFindings" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>

                                <hr/>
                                <table>
                                  <tr style="text-align:left">
                                      <%--<td style="width: 33.33%"><h3>SPECIMEN ADEQUACY</h3></td>
                                    <td style="width: 33.33%"></td>
                                    <td style="width: 33.33%"><h3>EPITHELIAL CELL ABNORMALITIES</h3></td>--%>
                                    <td style="width: 5%"></td>
                                    <td style="width: 25%"><h3>Ultrasound Measurement Lmp Weeks</h3></td>
                                    <td style="width: 30%"></td>
                                    <td style="width: 25%"><h3></h3></td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>

                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">CRL:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtCRLUltrasoundMeasurements" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">FL:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtFLUltrasoundMeasurements" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">CRL Weeks:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtCRLWeeksUltrasoundMeasurements" Width="300" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">FL Weeks:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtFLWeeksUltrasoundMeasurements" Width="300" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">BPD:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtBPDUltrasoundMeasurements" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">AC:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtACUltrasoundMeasurements" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">BPD Weeks:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtBPDWeeksUltrasoundMeasurements" Width="300" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">AC Weeks:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtACWeeksUltrasoundMeasurements" Width="300" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">EFBW:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtEFBWUltrasoundMeasurements" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Average Gestational Age:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtAverageGestationalAgeUltrasoundMeasurements" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">EDC:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtEDCUltrasoundMeasurements" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>

                                <br/>
                                <br/>
                                <br/>   

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Findings:</td>
                                    <td style="width: 75%"><asp:TextBox ID="txtFindingsUltrasound" Width="850" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                  </tr>
                                </table>
                                
                        
                                <br />
                                <br />

                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Sonologist: </td>
                                    <td style="width: 25%"><asp:TextBox ID="tbSonologist" Width="100" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <br />
                                <br />

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"><asp:Button ID="btnRHCancel" runat="server" Text="Cancel" BackColor="#999999" OnClick="btnCancel_Click" /></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"><asp:Button ID="btnRHClear" runat="server" Text="Clear" BackColor="#999999" OnClick="btnClear_Click" /></td>
							        <td style="width: 25%"><asp:Button ID="btnRHSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /></td>
                                  </tr>
                                </table>

                    </div>
				</div>

</asp:Content>

