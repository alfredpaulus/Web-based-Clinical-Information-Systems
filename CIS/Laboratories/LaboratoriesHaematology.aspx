<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISLaboratories.master" AutoEventWireup="true" CodeFile="LaboratoriesHaematology.aspx.cs" Inherits="CIS_Laboratories_LaboratoriesHaematology" %>

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
								<h2><a href="#">Laboratory Exam - Haematology</a></h2>
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
                        
                                <p>&nbsp</p>
                                <p>&nbsp</p>
                                <p>&nbsp</p>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 33.33%"></td>
                                    <td style="width: 33.33%">COMPONENT/QUALITY(S.I Unit)</td>
                                    <td style="width: 33.33%"></td>
                                  </tr>
                                </table>
                                <p>&nbsp</p>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Blood Type:</td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddBloodTypeHae" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem Text="A" Value="A" Selected="True">A</asp:ListItem>
                                            <asp:ListItem Text="B" Value="B">B</asp:ListItem>
                                            <asp:ListItem Text="AB" Value="AB">AB</asp:ListItem>
                                            <asp:ListItem Text="O" Value="O">O</asp:ListItem>
                                        </asp:DropDownList>

                                    </td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <p>&nbsp</p>
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
                                    <td style="width: 25%">HGB:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtHGB" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">gL</td>
                                    <td style="width: 25%">F:108-142 gL   M:129-159 gL</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">HCT:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtHCT" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">%</td>
                                    <td style="width: 25%">0.37%-0.53%</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">RCT:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtRCT" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">uL</td>
                                    <td style="width: 25%">F: 3.60-4.69 x 10 6/uL    M: 4.06-5.58 x 10 3/uL</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">WBC:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtWBC" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">uL</td>
                                    <td style="width: 25%">3.70 - 10.1 x 10 3/uL</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">PLT:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtPLT" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">uL</td>
                                    <td style="width: 25%">155-366 x 10 3/uL</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Segmenters:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtSegmenters" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">%</td>
                                    <td style="width: 25%">39.3-73.7%</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Stabs:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtStabs" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%">0.03-0.06</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Lymphocytes:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtLymphocytes" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%">18.0-48.3</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Eosinophils:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtEosinophils" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">%</td>
                                    <td style="width: 25%">0.60-7.30%</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Monocytes:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtMonocytes" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">%</td>
                                    <td style="width: 25%">4.40-12.7%</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Basophils:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtBasophils" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">%</td>
                                    <td style="width: 25%">0.00-1.70%</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Clotting Time:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtClottingTime" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">min.</td>
                                    <td style="width: 25%">2-5 mins</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Bleeding Time:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtBleedingTime" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">min.</td>
                                    <td style="width: 25%">2-4 mins</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <hr/>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">ESR:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtESR" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">mm/h</td>
                                    <td style="width: 25%">F: 0-20 mm/h    M: 0.10 mm/h</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Blast:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtBlast" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">RH Type:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtRHType" Width="100" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Mixed Cells: (Mono, Eos, Bas)</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtMixedCells" Width="100" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Mixed #: (Mono, Eos, Bas)</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtMixedHashTag" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <hr/>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">PTT:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtPTT" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">sec.</td>
                                    <td style="width: 25%">27-48 secs.</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <p>&nbsp</p>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">PT:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtPT" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">sec.</td>
                                    <td style="width: 25%">10-14 secs.</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Control:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtControl" Width="100" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">%Activity:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtPercentActivity" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">INR:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtINR" Width="100" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <hr/>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">MCV:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtMCV" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">fL</td>
                                    <td style="width: 25%">81.1fL - 96.0fL</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">MCH:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtMCH" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">pg</td>
                                    <td style="width: 25%">27.0 pg -35.4 pg</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">MCHC:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtMCHC" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">g/dL</td>
                                    <td style="width: 25%">31.8 g/dL-35.4 g/dL</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">RDW:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtRDW" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left">%</td>
                                    <td style="width: 25%">11.5% - 14.5%</td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Malarial Smear:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtMalarialSmear" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Neutrophils #:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtNeutrophils" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Lymphocytes #:</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtLymphocytesHashtag" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 15%; text-align:left"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
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






