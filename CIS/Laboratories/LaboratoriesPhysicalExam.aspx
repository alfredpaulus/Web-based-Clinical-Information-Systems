<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISLaboratories.master" AutoEventWireup="true" CodeFile="LaboratoriesPhysicalExam.aspx.cs" Inherits="CIS_Laboratories_LaboratoriesPhysicalExam" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ScriptManager>


            <!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">Laboratory Exam - Physical Exam</a></h2>
							</header>
                            <p>&nbsp;</p> 
                            <p>&nbsp;</p> 
                        </article>

                                
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
                        <hr />
                        <br />

                    </div>
				   <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Height="3100px" Width="1200px">
                        <ajaxToolkit:TabPanel runat="server" HeaderText="Physical Exam" ID="tabs">
                            <ContentTemplate>
                                <br/>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 10%"></td> <!--First label-->
                                    <td style="width: 12%; font-size:small">Normal Values</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                    <td style="width: 12%; font-size:small">Normal Values</td> <!--Second checkbox-->
                                    <td style="width: 18%"></td> <!--Second textbox-->
                                    <td style="width: 05%"></td><!--right border-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">General Appearance:</td> <!--First label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbGenApp" runat="server" /></td> <!--First checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtGenApp" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 12%">Lungs Respiratory:</td> <!--Second label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbLungsRes" runat="server" /></td> <!--Second checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtLungsRes" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--Second textbox-->
                                    <td style="width: 05%"></td><!--right border-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Skin:</td> <!--First label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbSkin" runat="server" /></td> <!--First checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtSkin" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 12%">Abdomen:</td> <!--Second label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbAbdomen" runat="server" /></td> <!--Second checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtAbdomen" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--Second textbox-->
                                    <td style="width: 05%"></td><!--right border-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Head and Scalp:</td> <!--First label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbHeadNScalp" runat="server" /></td> <!--First checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtHeadNScalp" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 12%">Back, Flanks:</td> <!--Second label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbBackFlanks" runat="server" /></td> <!--Second checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtBackFlanks" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--Second textbox-->
                                    <td style="width: 05%"></td><!--right border-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Eyes:</td> <!--First label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbEyes" runat="server" /></td> <!--First checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtEyes" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 12%">Anus, Rectum:</td> <!--Second label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbAnusRectum" runat="server" /></td> <!--Second checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtAnusRectum" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--Second textbox-->
                                    <td style="width: 05%"></td><!--right border-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Pupils:</td> <!--First label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbPupils" runat="server" /></td> <!--First checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtPupils" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 12%">Genito-Urinary System:</td> <!--Second label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbGenitoUrinary" runat="server" /></td> <!--Second checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtGenitoUrinary" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--Second textbox-->
                                    <td style="width: 05%"></td><!--right border-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Ears:</td> <!--First label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbEars" runat="server" /></td> <!--First checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtEars" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 12%">Inquinals, Genitals:</td> <!--Second label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbInquinals" runat="server" /></td> <!--Second checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtInquinals" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--Second textbox-->
                                    <td style="width: 05%"></td><!--right border-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Nose and Sinuses:</td> <!--First label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbNoseSinus" runat="server" /></td> <!--First checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtNoseSinus" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 12%">Musculo-Skeletal:</td> <!--Second label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbMuscoloSkeletal" runat="server" /></td> <!--Second checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtMuscoloSkeletal" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--Second textbox-->
                                    <td style="width: 05%"></td><!--right border-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Mouth, Throat:</td> <!--First label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbMouthThroat" runat="server" /></td> <!--First checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtMouthThroat" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 12%">Extremeties:</td> <!--Second label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbExtreme" runat="server" /></td> <!--Second checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtcbExtreme" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--Second textbox-->
                                    <td style="width: 05%"></td><!--right border-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Neck, Thyroid:</td> <!--First label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbNeckThy" runat="server" /></td> <!--First checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtNeckThy" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 12%">Reflexes:</td> <!--Second label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbReflexes" runat="server" /></td> <!--Second checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtReflexes" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--Second textbox-->
                                    <td style="width: 05%"></td><!--right border-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Chest, Breast, and Axilla:</td> <!--First label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbChestBreast" runat="server" /></td> <!--First checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtChestBreast" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 12%">Neurological-Nervous:</td> <!--Second label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbNeurological" runat="server" /></td> <!--Second checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtNeurological" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--Second textbox-->
                                    <td style="width: 05%"></td><!--right border-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Heart-Cardiovascular:</td> <!--First label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbHeartCardio" runat="server" /></td> <!--First checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtHeartCardio" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 12%">ENT:</td> <!--Second label-->
                                    <td style="width: 03%"><asp:CheckBox ID="cbENT" runat="server" OnCheckedChanged="CheckBox44_CheckedChanged" /></td> <!--Second checkbox-->
                                    <td style="width: 25%"><asp:TextBox ID="txtENT" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--Second textbox-->
                                    <td style="width: 05%"></td><!--right border-->
                                  </tr>
                                </table>
                                <br/>
                                <hr />
                                <h4 style="text-align:center">Far Vision</h4>
                                <br/>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 10%">Uncorrected</td>
                                    <td style="width: 10%"></td> 
                                    <td style="width: 05%">OS20/</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtFarOS20Uncorrect" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> 
                                    <td style="width: 05%">OD20/</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtFarOD20Uncorrect" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--Second textbox-->
                                    <td style="width: 30%"></td><!--right border-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 10%">Corrected</td>
                                    <td style="width: 10%"></td> 
                                    <td style="width: 05%">OS20/</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtFarOS20Correct" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> 
                                    <td style="width: 05%">OD20/</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtFarOD20Correct" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--Second textbox-->
                                    <td style="width: 30%"></td><!--right border-->
                                  </tr>
                                </table>
                                
                                <br/>

                                <h4 style="text-align:center">Near Vision</h4>
                                <br/>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 10%">Uncorrected</td>
                                    <td style="width: 10%"></td> 
                                    <td style="width: 05%">OSJ/</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtNearOSJUncorrect" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> 
                                    <td style="width: 05%">ODJ/</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtNearODJUncorrect" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--Second textbox-->
                                    <td style="width: 30%"></td><!--right border-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 10%">Corrected</td>
                                    <td style="width: 10%"></td> 
                                    <td style="width: 05%">OSJ/</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtNearOSJCorrect" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> 
                                    <td style="width: 05%">ODJ/</td>
                                    <td style="width: 10%"><asp:TextBox ID="txtNearODJCorrect" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--Second textbox-->
                                    <td style="width: 30%"></td><!--right border-->
                                  </tr>
                                </table>
                                <br />
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 00%">Ishihara Color</td>
                                    <td style="width: 70%">
                                        <asp:RadioButton ID="rdbIshiharaAdequate" GroupName="IshiharaColor" runat="server" />Adequate&nbsp&nbsp&nbsp&nbsp&nbsp<asp:RadioButton ID="rdbIshiharaDefective" GroupName="IshiharaColor" runat="server" />Defective&nbsp&nbsp&nbsp&nbsp&nbsp<asp:RadioButton ID="rdbIshiharaNotApplicable" GroupName="IshiharaColor" runat="server" />Not Applicable
                                    </td>   
                                  </tr>
                                </table>
                                <br />
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 00%">Color Vision</td>
                                    <td style="width: 70%">
                                        <asp:RadioButton ID="rdbColorVisionAdequate" GroupName="ColorVision" runat="server" />Adequate&nbsp&nbsp&nbsp&nbsp&nbsp<asp:RadioButton ID="rdbColorVisionDefective" GroupName="ColorVision" runat="server" />Defective
                                    </td>   
                                  </tr>
                                </table>
                                <br />
                                <hr />
                                <h4 style="text-align:center">Hearing</h4>
                                <br/>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 00%">Left(AS)</td>
                                    <td style="width: 70%">
                                        <asp:RadioButton ID="rdbLeftASAdequate" GroupName="HearingLeftAS" runat="server" />Adequate&nbsp&nbsp&nbsp&nbsp&nbsp<asp:RadioButton ID="rdbLeftASDefective" GroupName="HearingLeftAS" runat="server" />Defective
                                    </td>   
                                  </tr>
                                </table>
                                <br />
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 00%">Right(AD)</td>
                                    <td style="width: 70%">
                                        <asp:RadioButton ID="rdbRightADAdequate" GroupName="HearingRightAD" runat="server" />Adequate&nbsp&nbsp&nbsp&nbsp&nbsp<asp:RadioButton ID="rdbRightADDefective" GroupName="HearingRightAD" runat="server" />Defective
                                    </td>   
                                  </tr>
                                </table>
                                <br />
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 00%">Satisfactory Hearing</td>
                                    <td style="width: 70%">
                                        <asp:RadioButton ID="rdbSatisfactoryHearingAdequate" GroupName="HearingSatisfactory" runat="server" />Adequate&nbsp&nbsp&nbsp&nbsp&nbsp<asp:RadioButton ID="rdbSatisfactoryHearingDefective" GroupName="HearingSatisfactory" runat="server" />Defective
                                    </td>   
                                  </tr>
                                </table>
                                <br />
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 00%">Hearing meets the standard in STCW Code</td>
                                    <td style="width: 70%">
                                        <asp:RadioButton ID="rdbHearingMeetsSTCWCodeAdequate" GroupName="HearingMeetsSTCWCode" runat="server" />Adequate&nbsp&nbsp&nbsp&nbsp&nbsp<asp:RadioButton ID="rdbHearingMeetsSTCWCodeDefective" GroupName="HearingMeetsSTCWCode" runat="server" />Defective
                                    </td>   
                                  </tr>
                                </table>
                                <br />
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 00%">Vividness</td>
                                    <td style="width: 70%">
                                        <asp:RadioButton ID="rdbVividnessAdequate" GroupName="hearingVividness" runat="server" />Adequate&nbsp&nbsp&nbsp&nbsp&nbsp<asp:RadioButton ID="rdbVividnessDefective" GroupName="hearingVividness" runat="server" />Defective
                                    </td>   
                                  </tr>
                                </table>
                                <br />
                                <hr />
                                <h4 style="text-align:center">Body Built</h4>
                                <br/>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 20%">Built of Body</td>
                                    <td>
                                        <asp:TextBox ID="txtBodyBuilt" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox>
                                    </td>   
                                  </tr>
                                 </table>
                                <br />
                                <hr />
                                <h4 style="text-align:center">Visual Aids</h4>
                                <br/>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 00%">Items</td>
                                    <td style="width: 70%">
                                        <asp:RadioButton ID="rdbItemsGlasses" GroupName="VisualAidsItems" runat="server" />Glasses&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:RadioButton ID="rdbItemsContactLenses" GroupName="VisualAidsItems" runat="server" />Contact Lenses&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:RadioButton ID="rdbItemsSpectacles" GroupName="VisualAidsItems" runat="server" />Spectacles&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:RadioButton ID="rdbItemsNotApplicable" GroupName="VisualAidsItems" runat="server" />Not Applicable&nbsp&nbsp&nbsp&nbsp&nbsp
                                    </td>   
                                  </tr>
                                </table> 
                                <br />
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 00%">Visual acuity meets the standard?</td>
                                    <td style="width: 70%">
                                        <asp:RadioButton ID="rdbVisualAcuityMeetsStandardYes" GroupName="VisualAcuity" runat="server" />Yes&nbsp&nbsp&nbsp&nbsp&nbsp<asp:RadioButton ID="rdbVisualAcuityMeetsStandardNo" GroupName="VisualAcuity" runat="server" />No
                                    </td>   
                                  </tr>
                                </table>
                                <br />
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 00%">Fit for lookout duties</td>
                                    <td style="width: 70%">
                                        <asp:RadioButton ID="rdbFitForDutiesYes" GroupName="FitForDuties" runat="server" />Yes&nbsp&nbsp&nbsp&nbsp&nbsp<asp:RadioButton ID="rdbFitForDutiesNo" GroupName="FitForDuties" runat="server" />No
                                    </td>   
                                  </tr>
                                </table>
                                <br />
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 00%">Satisfactory Sight</td>
                                    <td style="width: 70%">
                                        <asp:RadioButton ID="rdbSatifactorySightYes" GroupName="SatisfactorySight" runat="server" />Yes&nbsp&nbsp&nbsp&nbsp&nbsp<asp:RadioButton ID="rdbSatifactorySightNo" GroupName="SatisfactorySight" runat="server" />No
                                        &nbsp&nbsp&nbsp&nbsp&nbsp<asp:RadioButton ID="rdbSatifactorySightNotApplicable" GroupName="SatisfactorySight" runat="server" />Not Applicable
                                    </td>   
                                  </tr>
                                </table>
                                <br />
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 00%">Color vision meets that standard?</td>
                                    <td style="width: 70%">
                                        <asp:RadioButton ID="rdbColorVisionStandardYes" GroupName="ColorVisionMeetStandard" runat="server" />Yes&nbsp&nbsp&nbsp&nbsp&nbsp<asp:RadioButton ID="rdbColorVisionStandardNo" GroupName="ColorVisionMeetStandard" runat="server" />No
                                        &nbsp&nbsp&nbsp&nbsp&nbsp<asp:RadioButton ID="rdbColorVisionStandardNotApplicable" GroupName="ColorVisionMeetStandard" runat="server" />Not Applicable
                                    </td>   
                                  </tr>
                                </table>
                                <br />
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 00%">Satisfactory Psychological Test</td>
                                    <td style="width: 70%">
                                        <asp:RadioButton ID="rdbSatisfacotryPyschologicalYes" GroupName="SatisfactoryPsychological" runat="server" />Yes&nbsp&nbsp&nbsp&nbsp&nbsp<asp:RadioButton ID="rdbSatisfacotryPyschologicalNo" GroupName="SatisfactoryPsychological" runat="server" />No
                                    </td>   
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 00%">Checked documents for confirmation</td>
                                    <td style="width: 70%">
                                        <asp:RadioButton ID="rdbDocumentsForConfirmationYes" GroupName="CheckedDocumentsConfirm" runat="server" />Yes&nbsp&nbsp&nbsp&nbsp&nbsp<asp:RadioButton ID="rdbDocumentsForConfirmationNo" GroupName="CheckedDocumentsConfirm" runat="server" />No
                                    </td>   
                                  </tr>
                                </table>                              
                            </ContentTemplate>
                        </ajaxToolkit:TabPanel>
                        <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="GCC">
                            <ContentTemplate>
                                <br/>
                                 <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->   
                                    <td style="width: auto; font-size:x-large" ><b>Medical Examination</b></td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                    
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                   
                                    <td style="width: auto; font-size:x-large">System Exam</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                    
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Cardio Vascular:</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtCardioVasGCC" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                    <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Blood Pressure:</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtBloodPressureGCC" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                    <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Heart:</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtHeartGCC" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->         
                                    <td style="width: auto; font-size:x-large">Respiratory System</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Lungs:</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtLungsGCC" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                </table>
                        <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->         
                                    <td style="width: auto; font-size:x-large">Gastro Intestinal</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Abdomen:</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtAbdoGCC" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                    <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Others:</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtOthersGastroGCC" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                </table>
                        <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->         
                                    <td style="width: auto; font-size:x-large">Hernia</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Info:</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtHerniaGCC" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->    
                                  </tr>                         
                                </table>
                        <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->         
                                    <td style="width: auto; font-size:x-large">Varicose Veins</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Info:</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtVaricoseGCC" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->     
                                      </tr>                        
                                </table>
                        <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->         
                                    <td style="width: auto; font-size:x-large">Extremities</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Info:</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtExtremeGCC" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->                             
                                </table>
                        <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->         
                                    <td style="width: auto; font-size:x-large">Deformities</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Info:</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtDeformitiesGCC" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->                             
                                </table>
                        <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->         
                                    <td style="width: auto; font-size:x-large">Skin</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Info:</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtSkinGCC" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->                             
                                </table>
                         
                               
                        <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->         
                                    <td style="width: auto; font-size:x-large">Veneral Diseases</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Clinical:</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtVeneralClinicalGCC" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between--> 
                                      </tr>                            
                                </table>
                        <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                   
                                    <td style="width: auto; font-size:x-large" ><b>Laboratory Examinations</b></td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                    
                                  </tr>
                                </table>
                          <table>

                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: auto; font-size:x-large">Serology</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                    
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">1. F.B.S.</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtFBSSero" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                    <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">2. L.F.T.S</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtLFTSSero" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                    <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Critinine:</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtCritinineSero" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                 
                                    <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Uric Acid:</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtUricAcidSero" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                </table>
                         <table>

                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: auto; font-size:x-large">ELIZA</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                    
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">HIV 1-2 Test</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtHIV12Eliza" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                    <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">HBsAg</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtHBsAGEliza" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                    <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Anti HCV</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtAntiHCVEliza" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                        </tr>
                                </table>
                        <table>

                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: auto; font-size:x-large">TPHA</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                    
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    
                                    <td style="width: 25%"><asp:TextBox ID="txtTPHAGCC" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                </table>
                        <table>

                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: auto; font-size:x-large">Pregnancy Test</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                    
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    
                                    <td style="width: 25%"><asp:TextBox ID="txtPregnancyGCC" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                </table>
                         <table>

                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: auto; font-size:x-large">Others</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                    
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    
                                    <td style="width: 25%"><asp:TextBox ID="txtOthersGCC" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                </table>
                            </ContentTemplate>
                        </ajaxToolkit:TabPanel>
                        <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="Dental">
                            <ContentTemplate>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td>
                                    <td style="width: 10%">Dental Case No:</td>
                                    <td style="width: 30%"><asp:TextBox ID="txtDentalCaseNum" Height="30px" runat="server" TextMode="Search"></asp:TextBox></td> 
                                    <td style="width: 25%"></td> 
                                    <td style="width: 25%"></td> 
                                    <td style="width: 05%"></td>
                                  </tr>
                                </table>
                            </ContentTemplate>
                        </ajaxToolkit:TabPanel>
                        <ajaxToolkit:TabPanel ID="TabPanel4" runat="server" HeaderText="PEME Chart">
                            <ContentTemplate>
                                <br />
                                <table>

                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: auto; font-size:x-large">Remarks</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->                                 
                                  </tr>
                                </table>
                                <br/>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 10%"></td><!--left border-->
                                    <td style="width: 00%">Items</td>
                                    <td style="width: 70%">
                                        <asp:RadioButton ID="RemarksNOC" GroupName="RemarksPEME" runat="server" />NOC&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:RadioButton ID="RemarksGCC" GroupName="RemarksPEME" runat="server" />GCC&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:RadioButton ID="RemarksGCCECert" GroupName="RemarksPEME" runat="server" />GCC E-Cert&nbsp&nbsp&nbsp&nbsp&nbsp
                                    </td>   
                                  </tr>
                                </table> 
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: auto; font-size:x-large">Others</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 25%"><asp:TextBox ID="txtPEMEOthers" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: auto; font-size:x-large">Restriction</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 25%"><asp:TextBox ID="txtRestrictionPEME" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: auto; font-size:x-large">Additional Test</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 25%"><asp:TextBox ID="txtAdditionalPEME" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                </table>
                         <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: auto; font-size:x-large">Recommendations</td> <!--First checkbox-->
                                    <td style="width: 18%"></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    <td style="width: 10%"></td> <!--Second label-->
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    
                                    <td style="width: 4.8%"></td>
                                    <td>
                                        <asp:RadioButton ID="RecommendationsFitPEME" GroupName="RecommendationsPEME" runat="server" />Fit&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:RadioButton ID="RecommendationsUnFitPEME" GroupName="RecommendationsPEME" runat="server" />Unfit&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:RadioButton ID="RecommendationsPendingPEME" GroupName="RecommendationsPEME" runat="server" />Pending&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:RadioButton ID="RecommendationsDiscretionOfCompanyPEME" GroupName="RecommendationsPEME" runat="server" />Discretion of Company
                                    </td>   
                                  </tr>
                                </table> 
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">License Number</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtLicenseNumPEME" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                    <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Exm Physician</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtExamPhysicianPEME" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                    <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Medical Director</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtMedicalDirectorPEME" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                </table>
                            </ContentTemplate>
                        </ajaxToolkit:TabPanel>
                        
                        <ajaxToolkit:TabPanel ID="TabPanel6" runat="server" HeaderText="Recommendations">
                            <ContentTemplate>
                                <br />
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Clinical Assessment and Recommendation</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtClinicalAssessmentReco" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                    <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Drug Test</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtDrugTestReco" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                  </tr>
                                    <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">ECG</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtECGReco" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                   </tr>
                                     
                                    <tr style="text-align:left">
                                    <td style="width: 05%"></td><!--left border-->
                                    <td style="width: 12%">Others</td> <!--First label-->
                                    <td style="width: 25%"><asp:TextBox ID="txtOthersReco" Font-Size="Medium" Height="30px" runat="server"></asp:TextBox></td> <!--First textbox-->
                                    <td style="width: 10%"></td> <!--Space between-->
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </ajaxToolkit:TabPanel>
                    </ajaxToolkit:TabContainer>
				</div>

</asp:Content>

