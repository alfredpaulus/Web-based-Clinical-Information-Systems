<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISMedicalRecord.master" AutoEventWireup="true" CodeFile="MedicalRecordDental.aspx.cs" Inherits="CIS_Laboratories_LaboratoriesDental" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">Medical Record - Dental</a></h2>
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
                                    <td style="width: 25%"><asp:TextBox ID="txtDatePerformed" runat="server" Width="300" TextMode="Date" Height="30"></asp:TextBox></td>
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
                                <h3 style="text-align:center">Dental</h3>
                                <p>&nbsp</p>
                                <table>
                                  <tr style="text-align:left; ">
                                    <td style="width: 07%"></td>
                                    <td style="width: 10%"></td>
                                    <td style="width: 05%"></td>
                                    <td style="width: 9.375%">1</td>
                                    <td style="width: 9.375%">2</td>
                                    <td style="width: 9.375%">3</td>
                                    <td style="width: 9.375%">4</td>
                                    <td style="width: 9.375%">5</td>
                                    <td style="width: 9.375%">6</td>
                                    <td style="width: 9.375%">7</td>
                                    <td style="width: 9.375%">8</td>
                                    <td style="width: 03%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left; ">
                                    <td style="width: 05%"></td>
                                    <td style="width: 10%">UPPER LEFT</td>
                                    <td style="width: 05%"></td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddUpperL1" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddUpperL2" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddUpperL3" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddUpperL4" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddUpperL5" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddUpperL6" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddUpperL7" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddUpperL8" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 05%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left; ">
                                    <td style="width: 05%"></td>
                                    <td style="width: 10%">LOWER LEFT</td>
                                    <td style="width: 05%"></td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddLowerL1" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddLowerL2" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddLowerL3" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddLowerL4" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddLowerL5" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddLowerL6" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddLowerL7" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddLowerL8" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 05%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left; ">
                                    <td style="width: 05%"></td>
                                    <td style="width: 10%">UPPER RIGHT</td>
                                    <td style="width: 05%"></td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddUpperR1" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddUpperR2" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddUpperR3" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddUpperR4" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddUpperR5" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddUpperR6" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddUpperR7" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddUpperR8" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 05%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left; ">
                                    <td style="width: 05%"></td>
                                    <td style="width: 10%">LOWER RIGHT</td>
                                    <td style="width: 05%"></td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddLowerR1" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddLowerR2" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddLowerR3" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddLowerR4" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddLowerR5" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddLowerR6" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddLowerR7" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 9.375%">
                                        <asp:DropDownList ID="ddLowerR8" Width="100" Font-Size="Medium" runat="server">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>X</asp:ListItem>
                                            <asp:ListItem>AM</asp:ListItem>
                                            <asp:ListItem>Co</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>/</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 05%"></td>
                                  </tr>
                                </table>

                                <br/>

                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td>
							        <td style="width: 25%">Significant Findings: </td>
                                    <td style="width: 25%"><asp:TextBox ID="txtSignificantFindingsDental" Width="300" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                    <td style="width: 50%">
                                        <p>Dental Legend:</p>
                                        <br/>
                                        <p>M  -  Missing &nbsp&nbsp&nbsp X  -  Extraction &nbsp&nbsp&nbsp AM -  Amalgam &nbsp&nbsp&nbsp Co -  Composite</p>
                                        <p>C  -  Carious Lession &nbsp&nbsp&nbsp /  -  Caries Free &nbsp&nbsp&nbsp F  -  Filling</p>
                                    </td>
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
