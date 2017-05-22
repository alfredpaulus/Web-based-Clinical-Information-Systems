<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISLaboratories.master" AutoEventWireup="true" CodeFile="VitalSigns.aspx.cs" Inherits="CIS_MedicalRecord_MedicalRecordVitalSigns" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ScriptManager>
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
								<h2><a href="#">Vital Signs</a></h2>
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
							        <td style="width: 25%"><asp:Label ID="lblDateTimeNow" runat="server" Text="01/01/2016 16:19" Font-Size="20px"></asp:Label></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>

                                <br />
                                <br />
                                
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Patient ID:</td>
                                    <td style="width: 25%"><asp:Label ID="lblPatientID" runat="server" Text="00000000"></asp:Label></td>
                                    <td style="width: 25%">DOB:</td>
                                    <td style="width: 25%"><asp:Label ID="lblPatientDOB" runat="server" Text="01/01/1996"></asp:Label></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Patient Name: </td>
                                    <td style="width: 25%"><asp:Label ID="lblPatientName" runat="server" Text="Lorem I. Dolor"></asp:Label></td>
                                    <td style="width: 25%">Age:</td>
                                    <td style="width: 25%"><asp:Label ID="lblPatientAge" runat="server" Text="20"></asp:Label></td>
                                  </tr>
                                </table>
                                <p>&nbsp</p>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 33.33%"></td>
                                    <td style="width: 33.33%"></td>
                                    <td style="width: 33.33%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%">Pulse Rate:</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbPulseRate" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)" ></asp:TextBox></td>
                                    <td style="width: 25%">Height (cm):</td>
							        <td style="width: 25%"><asp:TextBox ID="tbHeight" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Respiratory Rate:</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbRespiratoryRate" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                    <td style="width: 25%">Weight (kg):</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbWeight" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Temperature (&deg C):</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbTemperature" Width="100" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox></td>
                                    <td style="width: 25%">Blood Pressure (mmHg):</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbBloodPressure" Width="200" Font-Size="Medium" Height="30px" runat="server" onkeypress="return isNumberKeyWhole(event)"></asp:TextBox></td>
                                  </tr>
                                </table>
<%--                                <table>
                                  <tr style="text-align:center">
							        <td style="width: 25%">Nurse Account No:</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbNurseID" Width="300" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>--%>

                                
                                <p>&nbsp</p>
                                <p>&nbsp</p>

                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"><asp:Button ID="btnCancel" runat="server" Text="Cancel" BackColor="#999999" OnClick="btnCancel_Click" />
                                        <ajaxToolkit:ConfirmButtonExtender ID="btnCancel_ConfirmButtonExtender" runat="server" BehaviorID="btnCancel_ConfirmButtonExtender" ConfirmText="Are you sure you want to cancel the current exam?" TargetControlID="btnCancel">
                                        </ajaxToolkit:ConfirmButtonExtender>
                                      </td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"><asp:Button ID="btnClear" runat="server" Text="Clear" BackColor="#999999" OnClick="btnClear_Click" /></td>
							        <td style="width: 25%"><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /></td>
                                  </tr>
                                </table>

                    </div>
				</div>
</asp:Content>





