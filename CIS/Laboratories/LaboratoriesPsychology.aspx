<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISLaboratories.master" AutoEventWireup="true" CodeFile="LaboratoriesPsychology.aspx.cs" Inherits="CIS_Laboratories_Psychology" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">Laboratory Exam - Psychology</a></h2>
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
							        <td style="width: 25%">Others: </td>
                                    <td style="width: 25%"><asp:TextBox ID="txtOthersPyschology" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Intellectual Level: </td>
                                    <td style="width: 25%"><asp:TextBox ID="txtIntellectualLevelPsychology" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <hr />

                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%"><h3>Description</h3></td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 10%"><h3>Result</h3></td>
                                    <td style="width: 40%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%">Persevering</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddPerseveringResult" runat="server" Width="100">
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%">Self-Disciplined</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddSelfDisciplinedResult" runat="server" Width="100">
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%">Enthusiastic</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddEnthusiasticResult" runat="server" Width="100">
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%">Venturesome</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddVenturesomeResult" runat="server" Width="100">
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%">Obedience</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddObedienceResult" runat="server" Width="100">
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%">Can withstand Isolation and Boredom</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddIsolationBoredomResult" runat="server" Width="100">
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%">Can withstand Extreme noise, vibration & temperature</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddExtremeNoiseVibrationTempResult" runat="server" Width="100">
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%">Faces Reality</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddFacesRealityResult" runat="server" Width="100">
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%">Confidence</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddConfidenceResult" runat="server" Width="100">
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%">Tolerant to Stress</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddTolerantStressResult" runat="server" Width="100">
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%">Relaxed</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddRelaxedResult" runat="server" Width="100">
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%">Realistic</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddRealisticResult" runat="server" Width="100">
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%">Free of Jealousy</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddFreeJealousyResult" runat="server" Width="100">
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%">Adaptable</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddAdaptableResult" runat="server" Width="100">
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%">Practical Minded</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddPracticalMindedResult" runat="server" Width="100">
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%">Assertive</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddAssertiveResult" runat="server" Width="100">
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%">Independent</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddIndependentResult" runat="server" Width="100">
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%">Resourceful</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddResourcefulResult" runat="server" Width="100">
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 35%">Goal-Oriented/Direct ones Effort towards clear cut Objectives</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">
                                        <asp:DropDownList ID="ddGoalOrientedResult" runat="server" Width="100">
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                

                                <p>&nbsp</p>
                                <p>&nbsp</p>

                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Psychologist: </td>
                                    <td style="width: 25%"><asp:TextBox ID="tbPsychologist" Width="100" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
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
