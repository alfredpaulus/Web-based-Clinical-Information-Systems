<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISLaboratories.master" AutoEventWireup="true" CodeFile="LaboratoriesAudiometry.aspx.cs" Inherits="CIS_Laboratories_LaboratoriesAudiology" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <script>
         function isNumberKey(evt) {
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
								<h2><a href="#">Laboratory Exam - Audiometry</a></h2>
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


                                
                                <br/>
                                <br/>
                                <h3 style="text-align:center">PURETONE AUDIOGRAM</h3>
                                <p>&nbsp</p>
                                <table>
                                  <tr style="text-align:center; ">
                                    <td style="width: 8.33%">FREQ (Hz):</td>
                                    <td style="width: 4.33%"></td>
                                    <td style="width: 8.73%">250</td>
                                    <td style="width: 8.73%">500</td>
                                    <td style="width: 8.73%">750</td>
                                    <td style="width: 8.73%">1000</td>
                                    <td style="width: 8.73%">1500</td>
                                    <td style="width: 8.73%">2000</td>
                                    <td style="width: 8.73%">3000</td>
                                    <td style="width: 8.73%">4000</td>
                                    <td style="width: 8.73%">6000</td>
                                    <td style="width: 8.73%">8000</td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center; ">
                                    <td style="width: 8.33%">AIR Right Ear:</td>
                                    <td style="width: 4.33%"></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtRight250" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtRight500" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtRight750" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtRight1k" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtRight1500" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtRight2k" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtRight3k" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtRight4k" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtRight6k" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtRight8k" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center; ">
                                    <td style="width: 8.33%">AIR Left Ear:</td>
                                    <td style="width: 4.33%"></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtLeft250" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtLeft500" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtLeft750" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtLeft1k" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtLeft1500" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtLeft2k" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtLeft3k" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtLeft4k" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtLeft6k" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 8.73%"><asp:TextBox ID="txtLeft8k" Width="80" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                  </tr>
                                </table>

                                <hr />

                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td>
							        <td style="width: 15%">Hearing: </td>
                                    <td style="width: 20%"><asp:RadioButton ID="rdbNormal" runat="server" Text="Normal" GroupName="hearing" /></td>
                                    <td style="width: 20%"><asp:RadioButton ID="rdbWithFindings" runat="server" Text="With Findings" GroupName="hearing" /></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Remarks: </td>
                                    <td style="width: 25%"><asp:TextBox ID="txtRemarks" Width="300" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <p>&nbsp</p>
                                <p>&nbsp</p>

                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Req. Physician: </td>
                                    <%--<td style="width: 25%"><asp:DropDownList ID="ddReqPhysician" Width="300" Font-Size="Medium" runat="server"></asp:DropDownList></td>--%>
                                    <td style="width: 25%"><asp:TextBox runat="server" ID="tbReqPhysician" Width="300" Font-Size="Medium" Height="30px"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Audiologist: </td>
                                    <%--<td style="width: 25%"><asp:DropDownList ID="ssAudiologist" Width="300" Font-Size="Medium" runat="server"></asp:DropDownList></td>--%>
                                    <td style="width: 25%"><asp:TextBox runat="server" ID="tbAudiologist" Width="300" Font-Size="Medium" Height="30px"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>


                                
                                <p>&nbsp</p>
                                <p>&nbsp</p>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"><asp:Button ID="btnCancel" runat="server" Text="Cancel" BackColor="#999999" OnClick="btnCancel_Click" /></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"><asp:Button ID="btnClear" runat="server" Text="Clear" BackColor="#999999" OnClick="btnClear_Click" /></td>
							        <td style="width: 25%"><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /></td>
                                  </tr>
                                </table>

                    </div>
				</div>

</asp:Content>





