<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISLaboratories.master" AutoEventWireup="true" CodeFile="LaboratoriesXRay.aspx.cs" Inherits="CIS_Laboratories_LaboratoriesXRay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
								<h2><a href="#">Laboratory Exam - X-Ray</a></h2>
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
                                    <td style="width: 25%">Plate No.:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtPlateNumXRay" Width="250" Font-Size="Medium" Height="30px" onkeypress="return isNumberKeyWhole(event)" runat="server"></asp:TextBox></td>
                                    <td style="width: 10%"></td>
                                    <td style="width: 5%"><asp:CheckBox ID="cbChestPAXRay" runat="server" /></td>
                                    <td style="width: 10%; text-align:left">Chest PA</td>
                                    <td style="width: 10%"></td>
                                    <td style="width: 5%"><asp:CheckBox ID="cbSpotViewXRay" runat="server" /></td>
                                    <td style="width: 10%; text-align:left">Spot View</td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Clinical Diag.:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtClinicalDiagXRay" Width="250" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 10%"></td>
                                    <td style="width: 5%"><asp:CheckBox ID="cbExtremeXRay" runat="server" /></td>
                                    <td style="width: 10%; text-align:left">Extremities</td>
                                    <td style="width: 10%"></td>
                                    <td style="width: 5%"><asp:CheckBox ID="cbLateralViewXRay" runat="server" /></td>
                                    <td style="width: 10%; text-align:left">Lateral View</td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Code:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtCodeXRay" Width="250" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 10%"></td>
                                    <td style="width: 5%"><asp:CheckBox ID="cbAPLVXRay" runat="server" /></td>
                                    <td style="width: 10%; text-align:left">APLV</td>
                                    <td style="width: 10%"></td>
                                    <td style="width: 5%"><asp:CheckBox ID="cbOthersXRay" runat="server" /></td>
                                    <td style="width: 10%; text-align:left">Others</td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Examination:</td>
                                    <td style="width: 25%"><asp:TextBox ID="txtExaminationXRay" Width="250" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <hr />

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Image Upload:</td>
                                    <td style="width: 25%"><asp:FileUpload ID="fileImageUpload1XRay" runat="server" /></td>
                                    <td style="width: 25%"><asp:FileUpload ID="fileImageUpload2XRay" runat="server" /></td>
                                    <td style="width: 25%"><asp:FileUpload ID="fileImageUpload3XRay" runat="server" /></td>
                                  </tr>
                                </table>
                                <!-- Include code for upload in Submit button -->

                                <hr />

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Result:</td>
                                    <td style="width: 75%"><asp:TextBox ID="txtResultXRay" Width="850" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Impression:</td>
                                    <td style="width: 75%"><asp:TextBox ID="txtImpressionXRay" Width="850" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Remarks:</td>
                                    <td style="width: 75%"><asp:TextBox ID="txtRemarksXRay" Width="850" Font-Size="Medium" Height="30px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
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
							        <td style="width: 25%">Radiologist: </td>
                                    <td style="width: 25%"><asp:TextBox ID="tbRadiologist" Width="100" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
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


