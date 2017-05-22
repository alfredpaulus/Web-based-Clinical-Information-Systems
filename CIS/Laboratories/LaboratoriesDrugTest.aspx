<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISLaboratories.master" AutoEventWireup="true" CodeFile="LaboratoriesDrugTest.aspx.cs" Inherits="CIS_Laboratories_LaboratoriesDrugTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">Laboratory Exam - Drug Test</a></h2>
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


                                
                                <br/>
                                <br/>
                                <table>
                                  <tr style="text-align:left">
                                      <%--<td style="width: 33.33%"><h3>SPECIMEN ADEQUACY</h3></td>
                                    <td style="width: 33.33%"></td>
                                    <td style="width: 33.33%"><h3>EPITHELIAL CELL ABNORMALITIES</h3></td>--%>
                                    <td style="width: 5%"></td>
                                    <td style="width: 25%"><h3>Purpose:</h3></td>
                                    <td style="width: 30%"></td>
                                    <td style="width: 25%"><h3>Test Method:</h3></td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>

                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td>
                                    <td style="width: 05%"><asp:RadioButton ID="rdbPreEmploymentPurpose" runat="server" GroupName="DrugTestPurpose" Checked="True" /></td>
                                    <td style="width: 20%">Pre-Employment</td>
                                    <td style="width: 30%"></td>
                                    <td style="width: 05%"><asp:RadioButton ID="rdbTestKitMethod" runat="server" GroupName="DrugTestMethod" Checked="True" /></td>
                                    <td style="width: 20%">Test Kit</td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td>
                                    <td style="width: 05%"><asp:RadioButton ID="rdbRandomPurpose" runat="server" GroupName="DrugTestPurpose" /></td>
                                    <td style="width: 20%">Random</td>
                                    <td style="width: 30%"></td>
                                    <td style="width: 05%"><asp:RadioButton ID="rdbGCMSMethod" runat="server" GroupName="DrugTestMethod" /></td>
                                    <td style="width: 20%">GC-MS for Confirmatory</td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td>
                                    <td style="width: 05%"><asp:RadioButton ID="rdbReturnDutyPurpose" runat="server" GroupName="DrugTestPurpose" /></td>
                                    <td style="width: 20%">Return-to-duty</td>
                                    <td style="width: 30%"></td>
                                    <td style="width: 05%"><asp:RadioButton ID="rdbInstrumentedMethod" runat="server" GroupName="DrugTestMethod" /></td>
                                    <td style="width: 20%">Instrumented</td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td>
                                    <td style="width: 05%"><asp:RadioButton ID="rdbSuspicionPurpose" runat="server" GroupName="DrugTestPurpose" /></td>
                                    <td style="width: 20%">Reasonable Suspicion/Cause</td>
                                    <td style="width: 30%"></td>
                                    <td style="width: 05%"></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td>
                                    <td style="width: 05%"><asp:RadioButton ID="rdbOthersDrugPurpose" runat="server" GroupName="DrugTestPurpose" /></td>
                                    <td style="width: 20%">Others</td>
                                    <td style="width: 30%"></td>
                                    <td style="width: 05%"></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>


                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Test Result:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtTestResult" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
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
                                    <td style="width: 15%">Drug Metabolite 1:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetabo1" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Result 1:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetaboRes1" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Drug Metabolite 2:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetabo2" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Result 2:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetaboRes2" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Drug Metabolite 3:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetabo3" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Result 3:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetaboRes3" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Drug Metabolite 4:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetabo4" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Result 4:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetaboRes4" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Drug Metabolite 5:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetabo5" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Result 5:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetaboRes5" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Drug Metabolite 6:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetabo6" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Result 6:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetaboRes6" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Drug Metabolite 7:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetabo7" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Result 7:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetaboRes7" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Drug Metabolite 8:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetabo8" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Result 8:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetaboRes8" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Drug Metabolite 9:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetabo9" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Result 9:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetaboRes9" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 5%"></td>
                                    <td style="width: 15%">Drug Metabolite 10:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetabo10" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 15%">Result 10:</td>
                                    <td style="width: 20%"><asp:TextBox ID="txtMetaboRes10" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 5%"></td>
                                  </tr>
                                </table>

                                
                                

                                <p>&nbsp</p>
                                <p>&nbsp</p>

                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Analyst: </td>
                                    <td style="width: 25%"><asp:TextBox ID="tbAnalyst" Width="100" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">HeadofLaboratory: </td>
                                    <td style="width: 25%"><asp:TextBox ID="tbHeadofLaboratory" Width="100" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
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

