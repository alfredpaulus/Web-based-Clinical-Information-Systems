<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISLaboratories.master" AutoEventWireup="true" CodeFile="LaboratoriesCytopathology.aspx.cs" Inherits="CIS_Laboratories_LaboratoriesCytopathology" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<script type = "text/javascript">
        function Radio_Click_SpecimenAdequacy() {
        var radioToEnable = document.getElementById("<%=cbUnsatisfacotrySA.ClientID %>");
        var cbcScantCellularitySA= document.getElementById("<%=cbScantCellularitySA.ClientID %>");
	 var cbcPoorFixationSA= document.getElementById("<%=cbPoorFixationSA.ClientID %>");
	 var cbcObscuringInflaSA= document.getElementById("<%=cbObscuringInflaSA.ClientID %>");
	 var cbcObscuringBloodSA= document.getElementById("<%=cbObscuringBloodSA.ClientID %>");
	 var cbcExcessiveCyto= document.getElementById("<%=cbExcessiveCyto.ClientID %>"); 
        cbcScantCellularitySA.disabled = !radioToEnable.checked;
        cbcScantCellularitySA.checked = false;
	 cbcPoorFixationSA.disabled = !radioToEnable.checked;
   cbcPoorFixationSA.checked = false;
	 cbcObscuringInflaSA.disabled = !radioToEnable.checked;
cbcObscuringInflaSA.checked = false;
	 cbcObscuringBloodSA.disabled = !radioToEnable.checked;
cbcObscuringBloodSA.checked = false;
	 cbcExcessiveCyto.disabled = !radioToEnable.checked;
cbcExcessiveCyto.checked = false;
       
    }
</script>

<script type = "text/javascript">
            function Radio_Click_CellAbnormalities() {
            var radioToEnable = document.getElementById("<%=cbIntraEpithelialECA.ClientID %>");
            var cbcLowGradeECA = document.getElementById("<%=cbLowGradeECA.ClientID %>");
            var cbcHighGradeECA = document.getElementById("<%=cbHighGradeECA.ClientID %>");
            cbcLowGradeECA.disabled = !radioToEnable.checked;
            cbcLowGradeECA.checked = false;
            cbcHighGradeECA.disabled = !radioToEnable.checked;
            cbcHighGradeECA.checked = false;
            
                //Low Grade
                var cbcHPVECA = document.getElementById("<%=cbHPVECA.ClientID %>");
                cbcHPVECA.disabled = true;
                var cbcMildDysplasiaECA = document.getElementById("<%=cbMildDysplasiaECA.ClientID %>");
                cbcMildDysplasiaECA.disabled = true;
                //High Grade
                var cbcModerateSeverDysECA = document.getElementById("<%=cbModerateSeverDysECA.ClientID %>");
                cbcModerateSeverDysECA.disabled = true;
                var cbcModerateDysECA = document.getElementById("<%=cbModerateDysECA.ClientID %>");
                cbcModerateDysECA.disabled = true;
                var cbcCarcinomaECA = document.getElementById("<%=cbCarcinomaECA.ClientID %>");
                cbcCarcinomaECA.disabled = true;
                }
              </script>

<script type = "text/javascript">
        function Radio_Click_LowGrades() {
            var radioToEnableLow = document.getElementById("<%=cbLowGradeECA.ClientID %>");
            var cbcHPVECA = document.getElementById("<%=cbHPVECA.ClientID %>");
            var cbcMildDysplasiaECA = document.getElementById("<%=cbMildDysplasiaECA.ClientID %>");
            cbcHPVECA.disabled = !radioToEnableLow.checked;
            cbcHPVECA.checked = false;
            cbcMildDysplasiaECA.disabled = !radioToEnableLow.checked;
            cbMildDysplasiaECA.checked = false;

                //High Grade Disabled
                var cbcModerateDysECA = document.getElementById("<%=cbModerateDysECA.ClientID %>");
                cbcModerateDysECA.disabled = true;
                var cbcModerateSeverDysECA = document.getElementById("<%=cbModerateSeverDysECA.ClientID %>");
                cbcModerateSeverDysECA.disabled = true;
                var cbcCarcinomaECA = document.getElementById("<%=cbCarcinomaECA.ClientID %>");
                cbcCarcinomaECA.disabled = true;
           }
           </script>


<script type = "text/javascript">
         function Radio_Click_HighGrades() {
            var radioToEnableHigh = document.getElementById("<%=cbHighGradeECA.ClientID %>");
             var cbcModerateSeverDysECA = document.getElementById("<%=cbModerateSeverDysECA.ClientID %>");
             var cbcModerateDysECA = document.getElementById("<%=cbModerateDysECA.ClientID %>");
             var cbcCarcinomaECA = document.getElementById("<%=cbCarcinomaECA.ClientID %>");
             cbcModerateSeverDysECA.disabled = !radioToEnableHigh.checked;
             cbcModerateDysECA.checked = false;
             cbcModerateDysECA.disabled = !radioToEnableHigh.checked;
             cbcModerateDysECA.checked = false;
             cbcCarcinomaECA.disabled = !radioToEnableHigh.checked;
             cbcCarcinomaECA.checked = false;

            //Low Grade Disabled
             var cbcHPVECA = document.getElementById("<%=cbHPVECA.ClientID %>");
             cbcHPVECA.disabled = true;
             var cbcMildDysplasiaECA = document.getElementById("<%=cbMildDysplasiaECA.ClientID %>");
             cbcMildDysplasiaECA.disabled = true;
            }
           </script>


<script type = "text/javascript">
         function Radio_Click_EvaNoPossible() {
            var cbcEvaluationHE = document.getElementById("<%=cbEvaluationHE.ClientID %>");
             var cbcInflammationHE = document.getElementById("<%=cbInflammationHE.ClientID %>");
             var cbcInsufficientPatientHE = document.getElementById("<%=cbInsufficientPatientHE.ClientID %>");
             var cbcCervicalSpecimenHE = document.getElementById("<%=cbCervicalSpecimenHE.ClientID %>");
             cbcCervicalSpecimenHE.disabled = !cbcEvaluationHE.checked;
             cbcCervicalSpecimenHE.checked = false;
             cbcInflammationHE.disabled = !cbcEvaluationHE.checked;
             cbcInflammationHE.checked = false;
             cbcInsufficientPatientHE.disabled = !cbcEvaluationHE.checked;
             cbcInsufficientPatientHE.checked = false;
            }
           </script>


<script type = "text/javascript">
         function Radio_Click_EndoMetrialECA() {
            var cbcEndometrialECAToCheck = document.getElementById("<%=cbEndometrialECA.ClientID %>");
             var cbcOutOfPhaseECA = document.getElementById("<%=cbOutOfPhaseECA.ClientID %>");
             var cbcPostmenpausedECA = document.getElementById("<%=cbPostmenpausedECA.ClientID %>");
             var cbcNoMensECA = document.getElementById("<%=cbNoMensECA.ClientID %>");
             cbcOutOfPhaseECA.disabled = !cbcEndometrialECAToCheck.checked;
             cbcOutOfPhaseECA.checked = false;
             cbcPostmenpausedECA.disabled = !cbcEndometrialECAToCheck.checked;
             cbcPostmenpausedECA.checked = false;
             cbcNoMensECA.disabled = !cbcEndometrialECAToCheck.checked;
             cbcNoMensECA.checked = false;
            }
           </script>


            <!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">Laboratory Exam - Cytopathology</a></h2>
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

                                <table>
                                  <tr style="text-align:left">
                                      <%--<td style="width: 33.33%"><h3>SPECIMEN ADEQUACY</h3></td>
                                    <td style="width: 33.33%"></td>
                                    <td style="width: 33.33%"><h3>EPITHELIAL CELL ABNORMALITIES</h3></td>--%>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%"><h3>SPECIMEN ADEQUACY</h3></td>
                                    <td style="width: 20%"></td>
                                    <td style="width: 25%"><h3>EPITHELIAL CELL ABNORMALITIES</h3></td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 15%"></td>
                                    <td style="width:  5%"><asp:RadioButton ID="cbSatisfactorySA" GroupName="SpecimenAdequacy" runat="server" onclick = "Radio_Click_SpecimenAdequacy()"/></td>
                                    <td style="width: 20%">SATISFACTORY</td>
                                    <td style="width: 20%"></td>
                                    <td style="width:  5%"><asp:RadioButton ID="cbSquamousAtypiaECA" GroupName="CellAbnormalities" runat="server" 
onclick = "Radio_Click_CellAbnormalities()" /></td>
                                    <td style="width: 20%">Squamous atypia of undetermined significance</td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 15%"></td>
                                    <td style="width:  5%"><asp:RadioButton ID="cbLessThanOptimalSA" GroupName="SpecimenAdequacy" runat="server" onclick = "Radio_Click_SpecimenAdequacy()" /></td>
                                    <td style="width: 20%">LESS-THAN OPTIMAL</td>
                                    <td style="width: 20%"></td>
                                    <td style="width:  5%"><asp:RadioButton ID="cbIntraEpithelialECA" GroupName="CellAbnormalities" runat="server" OnCheckedChanged="cbIntraEpithelialECA_CheckedChanged" onclick = "Radio_Click_CellAbnormalities()" /></td>
                                    <td style="width: 20%">SQUAMOUS INTRAEPITHELIAL LESION</td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 15%"></td>
                                    <td style="width:  5%"><asp:RadioButton ID="cbUnsatisfacotrySA" GroupName="SpecimenAdequacy" runat="server" onclick = "Radio_Click_SpecimenAdequacy()" /></td>
                                    <td style="width: 20%">UNSATISFACTORY</td>
                                      <%--l indent 1 --%>            <td style="width: 25%"></td>
                                    <td style="width:  5%"><asp:RadioButton ID="cbLowGradeECA" GroupName="GradeCellAbnormalities" runat="server" OnCheckedChanged="cbLowGradeECA_CheckedChanged" onclick = "Radio_Click_LowGrades()" /></td>
                                    <td style="width: 20%">Low grade</td>
                                    <td style="width: 10%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                      <%--indent  --%>                    <td style="width: 20%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbScantCellularitySA" runat="server" /></td>
                                    <td style="width: 20%">Scant cellularity</td>
                                    <td style="width: 30%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbHPVECA" runat="server" /></td>
                                    <td style="width: 20%">HPV associated changes</td>
                                    <td style="width:  5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 20%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbPoorFixationSA" runat="server" /></td>
                                    <td style="width: 20%">Poor fixation/preservation</td>
                                    <td style="width: 30%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbMildDysplasiaECA" runat="server" /></td>
                                    <td style="width: 20%">Mild Dysplasia (CIN 1)</td>
                                    <td style="width:  5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 20%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbObscuringInflaSA" runat="server" /></td>
                                    <td style="width: 20%">Obscuring inflammation</td>
                                    <td style="width: 20%"></td>
                                    <td style="width:  5%"><asp:RadioButton ID="cbHighGradeECA" GroupName="GradeCellAbnormalities" runat="server" OnCheckedChanged="cbHighGradeECA_CheckedChanged" onclick = "Radio_Click_HighGrades()" /></td>
                                    <td style="width: 20%">High grade</td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 20%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbObscuringBloodSA" runat="server" /></td>
                                    <td style="width: 20%">Obscuring blood</td>
                                    <td style="width: 30%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbModerateDysECA" runat="server" /></td>
                                    <td style="width: 20%">Moderate dysplasia (CIN 2)</td>
                                    <td style="width:  5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 20%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbExcessiveCyto" runat="server" /></td>
                                    <td style="width: 20%">Excessive cytosis</td>
                                    <td style="width: 30%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbModerateSeverDysECA" runat="server" /></td>
                                    <td style="width: 20%">Severe dysplasia (CIN 3)</td>
                                    <td style="width:  5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%"><h3>GENERAL CATEGORIZATION</h3></td>
                                    <td style="width: 35%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbCarcinomaECA" runat="server" /></td>
                                    <td style="width: 20%">Carcinoma-in-citu (CIN 3)</td>
                                    <!--<td style="width:  0%"></td>-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 15%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbWithinNormalLimitsGC" runat="server" /></td>
                                    <td style="width: 20%">WITHIN NORMAL LIMITS</td>
                                    <td style="width: 25%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbEndometrialECA"  runat="server" onclick = "Radio_Click_EndoMetrialECA()"   /></td>
                                    <td style="width: 20%">Endometrial cells present</td>
                                    <td style="width: 10%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 15%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbBenignCellularGC" runat="server" /></td>
                                    <td style="width: 20%">BENIGN CELLULAR CHANGE</td>
                                    <td style="width: 30%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbOutOfPhaseECA" runat="server" /></td>
                                    <td style="width: 20%">Out of phase with menstral cycle</td>
                                    <td style="width:  5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 15%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbFurtherActionRecGC" runat="server" /></td>
                                    <td style="width: 20%">FURTHER ACTION RECOMMENDED</td>
                                    <td style="width: 30%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbPostmenpausedECA" runat="server" /></td>
                                    <td style="width: 20%">in Postmenopaused woman</td>
                                    <td style="width:  5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%"><h3>DESCRIPTIVE DIAGNOSIS</h3></td>
                                    <td style="width: 30%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbNoMensECA" runat="server" /></td>
                                    <td style="width: 20%">No menstrual history available</td>
                                    <td style="width:  5%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 20%"></td>
                                    <td style="width: 25%">INFECTION:</td>
                                    <td style="width: 20%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbAtypicalGlanduralECA" runat="server" /></td>
                                    <td style="width: 20%">Atypical glandural cells of undetermined significance</td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 20%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbFungiInfection" runat="server" /></td>
                                    <td style="width: 20%">Fungi consistent with Candida Sp.</td>
                                    <td style="width: 20%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbADENOCARCINOMAECA" runat="server" /></td>
                                    <td style="width: 20%">ADENOCARCINOMA</td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 20%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbTrichomonasInfection" runat="server" /></td>
                                    <td style="width: 20%">Trichomonas Vaginalis</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%"><h3>NON-EPITHELIAL MALIGNANT NEOPLASM</h3></td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 20%"></td>
                                    <td style="width: 20%">Other:</td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtNonEpithelialMalignantECA" runat="server"></asp:TextBox></td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 20%"></td>
                                      <%--textbox --%>      <td style="width: 25%"><asp:TextBox ID="txtOthersCytopathology" runat="server"></asp:TextBox></td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%"><h3>HORMONAL EVALUATION (Vaginal Smears only)</h3></td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 20%"></td>
                                    <td style="width: 25%">REACTIVE/REPARATIVE PROCESS:</td>
                                    <td style="width: 20%"></td>
                                <td style="width:  5%"><asp:RadioButton ID="cbCompatibleAgeHE" GroupName="VagSmears" onclick = "Radio_Click_EvaNoPossible()" runat="server" /></td>
                                    <td style="width: 20%">Compatible with age and history </td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 20%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbInflammationReactive" runat="server" /></td>
                                    <td style="width: 20%">Inflammation</td>
                                    <td style="width: 20%"></td>
<td style="width:  5%"><asp:RadioButton ID="cbIncompatibleHE" GroupName="VagSmears" onclick = "Radio_Click_EvaNoPossible()" runat="server" /></td>
                                    <td style="width: 20%">Incompatible with age and history </td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 20%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbEffectsIUDReactive" runat="server" /></td>
                                    <td style="width: 20%">Effects of IUD</td>
                                    <td style="width: 20%"></td>
                                  <td style="width:  5%"><asp:RadioButton ID="cbEvaluationHE" GroupName="VagSmears" onclick = "Radio_Click_EvaNoPossible()" runat="server" /></td>
                                    <td style="width: 20%">Evaluation no possible </td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 20%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbRadiationReactive" runat="server" /></td>
                                    <td style="width: 20%">Radiation effect</td>
                                    <td style="width: 25%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbCervicalSpecimenHE" runat="server" /></td>
                                    <td style="width: 20%">Cervical specimen</td>
                                    <td style="width: 10%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 20%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbChemoReactive" runat="server" /></td>
                                    <td style="width: 20%">Chemotheraphy effect</td>
                                    <td style="width: 25%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbInflammationHE" runat="server" /></td>
                                    <td style="width: 20%">Inflammation</td>
                                    <td style="width: 10%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 20%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbSquamousReactive" runat="server" /></td>
                                    <td style="width: 20%">Squamous metaplasis</td>
                                    <td style="width: 25%"></td>
                                    <td style="width:  5%"><asp:CheckBox ID="cbInsufficientPatientHE" runat="server" /></td>
                                    <td style="width: 20%">Insufficient patient history</td>
                                    <td style="width: 10%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 20%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%">Other:</td>
                                    <td style="width: 15%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 20%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 25%"><asp:TextBox ID="txtOthersHE" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                    <td style="width: 15%"></td>
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























