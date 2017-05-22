<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISLaboratories.master" AutoEventWireup="true" CodeFile="LaboratoriesImmunology.aspx.cs" Inherits="CIS_Laboratories_LaboratoriesImmunology  " %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script>
function isNumberKey(evt)
       {
          var charCode = (evt.which) ? evt.which : evt.keyCode;
          if (charCode != 46 && charCode > 31 
            && (charCode < 48 || charCode > 57))
             return false;

          return true;
       }
</script>
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
								<h2><a href="#">Laboratory Exam - Immunology</a></h2>
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
							        <td style="width: 25%">Patient Name: </td>
                                    <td style="width: 25%"><asp:Label ID="lblPatientName" runat="server" Text="Lorem I. Dolor"></asp:Label></td>
                                    <td style="width: 25%">Date Performed:</td>
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


                                <h3 style="text-align:center">Hepatitis</h3>
                                <br/>
                                <br/>
                                <table>
                                  <tr><!--style="text-align:center"-->
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"><asp:Label ID="Label7" runat="server" Text="Patient Count" Font-Bold="True" Font-Size="Smaller"></asp:Label></td>
                                    <td style="width: 25%"><asp:Label ID="Label9" runat="server" Text="Cut Off Value" Font-Size="Smaller" Font-Bold="True"></asp:Label></td>
                                    <td style="width: 25%"><asp:Label ID="Label10" runat="server" Text="Remarks" Font-Size="Smaller" Font-Bold="True"></asp:Label></td>
                                  </tr>
                                </table>

                                <table>
                                  <tr style="text-align:center; ">
                                    <td style="width: 25%">HBsAG:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtHBsAGPatientCount" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtHBsAGCutOff" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtHBsAGRemarks" Width="250" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Anti-HBS:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtAntiHBSPatientCount" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtAntiHBSCutOff" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtAntiHBSRemarks" Width="250" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Anti-HBC-IgC:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtAntiHBCIgCPatientCount" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtAntiHBCIgCCutOff" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtAntiHBCIgCRemarks" Width="250" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Anti-HBe:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtAntiHBePersonCount" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtAntiHBeCutOff" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtAntiHBeRemarks" Width="250" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Anti-HAV IgM:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtAntiHAVPersonCount" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtAntiHAVCutOff" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtAntiHAVRemarks" Width="250" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Findings:</td>
                                    <td style="width: 75%"><asp:TextBox ID="txtFindingsImmunology" Width="850" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                  </tr>
                                </table>

                                <hr/>

                                <h3 style="text-align:center">Thyroid</h3>
                                <br/>
                                <br/>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%; text-align:left"><asp:Label ID="Label11" runat="server" Text="Result" Font-Bold="True" Font-Size="Smaller"></asp:Label></td>
                                    <td style="width: 25%"><asp:Label ID="Label12" runat="server" Text="Normal Values" Font-Size="Smaller" Font-Bold="True"></asp:Label></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">T3:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtThyT3" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">ng/ml</td>
                                    <td style="width: 25%">0.58-1.59 ng/ml</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">T4:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtThyT4" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">ugl/dl</td>
                                    <td style="width: 25%">4.87-11.72 ugl/dl(F) | 4.4-10.8 ugl/dl(M)</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">TSH:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtThyTSH" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">ulU/ml</td>
                                    <td style="width: 25%">0.35-4.94 ulU/ml</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">FT3:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtThyFT3" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">pg/ml</td>
                                    <td style="width: 25%">1.71-3.71 pg/ml</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">FT4:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtThyFT4" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">ng/dl</td>
                                    <td style="width: 25%">0.7-1.48 ng/dl</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <hr/>

                                <h3 style="text-align:center">Tumor</h3>
                                <br/>
                                <br/>
                                <table>
                                  <tr><!-- style="text-align:center"-->
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"><asp:Label ID="Label13" runat="server" Text="Result" Font-Bold="True" Font-Size="Smaller"></asp:Label></td>
                                    <td style="width: 25%"><asp:Label ID="Label14" runat="server" Text="Normal Values" Font-Size="Smaller" Font-Bold="True"></asp:Label></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">AFP(Liver):</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtAFPResult" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtAFPNormal" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">CEA(Colon):</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtCEAResult" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtCEANormal" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">CA 125(Ovary):</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtCA125Result" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtCA125Normal" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">PSA:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtPSAResult" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtPSANormal" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">CA 15-3(Breast):</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtCA153Result" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtCA153Normal" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">CA 19-9(Pancreas):</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtCA199Result" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtCA199Normal" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">B-HCG:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtBHCGResult" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtBHCGNormal" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">CA 72-4(Colorectal):</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtCA724Result" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtCA724Normal" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <hr/>

                                <h3 style="text-align:center">HIV Test</h3>
                                <br/>
                                <br/>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Exam Date:</td>
                                    <td style="width: 25%; text-align:center"><asp:TextBox ID="txtHIVExamDate" Width="300" Font-Size="Medium" Height="30px" runat="server" TextMode="Date"></asp:TextBox></td>
                                    <td style="width: 25%">Physician License No.:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtPhysicianLicenseHIV" Width="300" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Other Test Used:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtOtherTestHIV" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 25%">HIV Proficiency Cert. No.(Med Tech):</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtHIVProfCert" Width="300" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%">Expiry Date:</td>
                                    <td style="width: 25%; text-align:center"><asp:TextBox ID="txtExpiryDateImmu" Width="300" Font-Size="Medium" Height="30px" runat="server" TextMode="Date"></asp:TextBox></td>
                                  </tr>
                                </table>

                                <p>&nbsp</p>
                                <p>&nbsp</p>

                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Req. Physician: </td>
                                    <td style="width: 25%"><asp:TextBox ID="tbReqPhysician" Width="100" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Pathologist: </td>
                                    <td style="width: 25%"><asp:TextBox ID="tbPathologist" Width="100" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
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







