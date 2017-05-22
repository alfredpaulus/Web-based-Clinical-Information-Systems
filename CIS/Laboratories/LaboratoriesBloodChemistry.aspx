<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISLaboratories.master" AutoEventWireup="true" CodeFile="LaboratoriesBloodChemistry.aspx.cs" Inherits="CIS_Laboratories_LaboratoriesBloodChemistry" %>

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

            <!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">Laboratory Exam - Blood Chemistry</a></h2>
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
                                <br />
                                <br />
                                <br />
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%; text-align:left"><asp:Label ID="Label7" runat="server" Text="Result" Font-Bold="True" Font-Size="Smaller"></asp:Label></td>
                                    <td style="width: 25%"><asp:Label ID="Label9" runat="server" Text="Normal Values" Font-Size="Smaller" Font-Bold="True"></asp:Label></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">FBS:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtFbs" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">mmol/L</td>
                                    <td style="width: 25%">3.34-6.12 mmol/L</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">BUN:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtBun" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">mmol/L</td>
                                    <td style="width: 25%">1.7-8.3 mmol/L</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Creatine:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtCreatine" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">umol/L</td>
                                    <td style="width: 25%">44.2-106.08 umol/L (Female) 64-124 umol/L(Male)</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">BUA:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtBua" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">umol/L</td>
                                    <td style="width: 25%">142-339 umol/L (Female) 202-416 (Male)</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Cholesterol:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtCholestarol" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">mmol/L</td>
                                    <td style="width: 25%">3.1-5.17 mmol/L</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Triglycerides:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtTriglycerides" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">mmol/L</td>
                                    <td style="width: 25%">0.41-1.88 mmol/L</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">HDL:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtHdl" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">mmol/L</td>
                                    <td style="width: 25%">0.78-1.82 mmol/L</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">LDL:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtLdl" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">mmol/L</td>
                                    <td style="width: 25%">0-3.9 mmol/L</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">VLDL:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtVldl" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">mmol/L</td>
                                    <td style="width: 25%">0.00-1.04 mmol/L</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">SGOT:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtSgot" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">U/L</td>
                                    <td style="width: 25%">0-31 U/L (Female) 0-38 U/L (Male)</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">SGPT:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtSgpt" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">U/L</td>
                                    <td style="width: 25%">0-31 U/L (Female) 0-40 U/L (Male)</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Alkalaine Phosphatase:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtAlkaline" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">U/L</td>
                                    <td style="width: 25%">98-279 U/L</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Total Bilirubin:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtBilirubin" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">umol/L</td>
                                    <td style="width: 25%">3.42-20.52 umol/L</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Direct Bilirubin:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtDirectBiliburin" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">umol/L</td>
                                    <td style="width: 25%">0-5.1 umol/L</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Indirect Bilirubin:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtIndirectBilirubin" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">g/l</td>
                                    <td style="width: 25%">66-83 g/l</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Albumim:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtAlbumim" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">g/L</td>
                                    <td style="width: 25%">38-51 g/L</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <hr/>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Globulin:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtGlobulin" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">g/l</td>
                                    <td style="width: 25%">28-38 g/l</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">A/G Ratio:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtAgRatio" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%">1.1-2.2 : 1</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Sodium:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtSodium" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">mmol/L</td>
                                    <td style="width: 25%">135-145 mmol/L</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Potassium:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtPotassium" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">mmol/L</td>
                                    <td style="width: 25%">3.5-5.3 mmol/L</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Chloride:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtChloride" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">mmol/L</td>
                                    <td style="width: 25%">96-109 mmol/L</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Calcium:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtCalcium" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">mg/dl</td>
                                    <td style="width: 25%">8.4-10.6 mg/dl</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">HbA1C:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtHbA" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">%</td>
                                    <td style="width: 25%">4.0-5.6%</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Random Blood Sugar:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtRandomBloodSugar" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">mmol/L</td>
                                    <td style="width: 25%">7.0-10.0 mmol/L</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <hr/>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Acid Phosphatase:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtAcidPhos" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Lipase:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtLipase" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">GGTP:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtGgtp" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">CPK MB:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtCpkMB" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">CO2:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtCo2" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Fructosamine:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtFructosamine" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">2hr PPBS:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txt2hrPpbs" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">OGCT:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtOgct" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">LDH:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtLdh" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">CPK Total:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtCpkTotal" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Magnesium:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtMagnesium" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Phosporous:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtPhosporous" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Amylase:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtAmylase" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Iron:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtIron" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <hr/>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">OGTT</td>
                                    <td style="width: 10%"></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">FBS:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtFbsOGTT" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%">3.9-6.1</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">1 Hr:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txt1hrOGGT" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%">5.0-8.9</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">2 Hr:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txt2hrOGGT" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%">4.2-6.9</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">3 Hr:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txt3hrOGGT" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%">3.9-6.1</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <hr/>

                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Others: </td>
                                    <td style="width: 50%"><asp:TextBox ID="txtOthersOGGT" runat="server" Width="500" Font-Size="Medium" Height="30px" TextMode="MultiLine"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <br />
                                <br />
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





