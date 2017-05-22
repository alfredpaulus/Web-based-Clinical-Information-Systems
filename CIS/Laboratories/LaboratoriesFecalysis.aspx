<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISLaboratories.master" AutoEventWireup="true" CodeFile="LaboratoriesFecalysis.aspx.cs" Inherits="CIS_Laboratories_LaboratoriesFecalysis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script>
function isNumberKey(evt)
      {
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
								<h2><a href="#">Laboratory Exam - Fecalysis</a></h2>
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
                                  <tr style="text-align:left">
                                      <%--<td style="width: 33.33%"><h3>SPECIMEN ADEQUACY</h3></td>
                                    <td style="width: 33.33%"></td>
                                    <td style="width: 33.33%"><h3>EPITHELIAL CELL ABNORMALITIES</h3></td>--%>
                                    <td style="width: 5%"></td>
                                    <td style="width: 25%"><h3>PHYSICAL CHARACTERISTICS</h3></td>
                                    <td style="width: 30%"></td>
                                    <td style="width: 25%"><h3>CHEMICAL TEST</h3></td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Color:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtColorPhyical" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Occult Blood:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtOccultBloodChem" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Consistency:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtConsistencyPhydical" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Bile Pigmen:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtBilePigmenChem" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>

                                <hr/>

                                <h3 style="text-align:center">MICROSCOPIC FINDINGS</h3>
                                <p>&nbsp</p>
                                <table>
                                  <tr style="text-align:center; ">
                                    <td style="width: 25%">Red Blood Cells:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtRedBloodMicro" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Puss Cells:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtPussCellsMicro" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Others:</td>
                                    <td style="width: 75%"><asp:TextBox ID="txtOthersMicro" Width="850" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                  </tr>
                                </table>

                                <hr/>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Ascaris:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtAscaris" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Trichuris:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtTrichuris" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Hookworm:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtHookworm" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Entamoeba hystolityca:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtEntamoeba" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Cysts:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtCystsEH" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Trophoziotes:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtTrophoziotesEH" Width="250" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <hr />

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Remarks:</td>
                                    <td style="width: 75%"><asp:TextBox ID="txtRemarksFeca" Width="850" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                  </tr>
                                </table>

                                <hr/>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Leukocytes:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtLeukocytes" Width="250" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 25%">Starch Granules:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtStarchGranules" Width="250" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Erythrocytes:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtErythrocytes" Width="250" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 25%">Bacteria:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtBacteria" Width="250" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Fat Globules:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtFatGlobules" Width="250" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                
                                <hr/>
                                
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


