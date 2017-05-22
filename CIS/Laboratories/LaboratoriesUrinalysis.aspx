<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISLaboratories.master" AutoEventWireup="true" CodeFile="LaboratoriesUrinalysis.aspx.cs" Inherits="CIS_Laboratories_LaboratoriesUrinalysis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">Laboratory Exam - Urinalysis</a></h2>
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
                                  <tr style="text-align:left">
                                      <%--<td style="width: 33.33%"><h3>SPECIMEN ADEQUACY</h3></td>
                                    <td style="width: 33.33%"></td>
                                    <td style="width: 33.33%"><h3>EPITHELIAL CELL ABNORMALITIES</h3></td>--%>
                                    <td style="width: 5%"></td>
                                    <td style="width: 25%"><h3>PHYSICAL EXAMINATION</h3></td>
                                    <td style="width: 30%"></td>
                                    <td style="width: 25%"><h3>CHEMICAL EXAMINATION</h3></td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Color:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtColorPhysicalUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Protein:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtProteinChemicalUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Transparency:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtTransparencyPhysicalUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Sugar:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtSugarChemicalUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Reaction:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtReactionPhysicalUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Ketone:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtKetoneChemicalUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Specific Gravity:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtSpecificGravityPhysicalUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Blood:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtBloodChemicalUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 25%"><h3>MICROSCOPIC EXAMINATION</h3></td>
                                    <td style="width: 30%"></td>
                                    <td style="width: 15%">Pus:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtPusChemicalUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Pus Cells:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtPusCellsMicroUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">RBC:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtRBCChemicalUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">RBC:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtRBCMicroUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Nitrites:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtNitritesChemicalUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Epithelial Cells:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtEpithelialCellsMicroUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Bilirubin:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtBilirubinChemicalUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Mucus Threads:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMucusThreadsMicroUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Others:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtOthersChemicalUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Bacteria:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtBacteriaMicroUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Yeast Cells:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtYeastCellsMicroUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Amorphous Urates:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtAmorphousUratesMicroUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Amorphous:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtAmorphousMicroUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Calcium Oxalates:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtCalciumOxalatesMicroUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Triple Phosphate:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtTriplePhosphateMicroUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>   
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Uric Acid:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtUricAcidMicroUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Others:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtOthersMicroUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>

                                <hr/>

                                <table>
                                    <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 25%"><h3>OTHER EXAMINATION</h3></td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Pregnancy Test:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtPregnancyTestOtherExamUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Specimen:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtSpecimentOtherExamUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Method:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMethodOtherExamUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Remarks:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtRemarksOtherExamUrinalysis" Width="300" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
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

