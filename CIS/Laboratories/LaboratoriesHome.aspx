<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCISLaboratories.master" AutoEventWireup="true" CodeFile="LaboratoriesHome.aspx.cs" Inherits="CIS_Laboratories_LaboratoriesHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">Laboratory Exam - Home</a></h2>
							</header>
                            <p>&nbsp</p> 
                            <p>&nbsp</p> 
                        </article>

                                <%--<table>
                                  <tr style="text-align:center">
                                    <td style="width: 03%"></td>
                                    <td style="width: 02%; text-align: right"><asp:RadioButton ID="rbPatientName" runat="server" GroupName="rbPatientSearch" OnCheckedChanged="rbPatientName_CheckedChanged" AutoPostBack="True" Checked="True" /></td>
							        <td style="width: 20%">Patient Name:</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbPatientName" runat="server" TextMode="Search" Width="250" Height="30" AutoPostBack="True"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 03%"></td>
                                    <td style="width: 02%"></td>
							        <td style="width: 20%">Or</td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 03%"></td>
                                    <td style="width: 02%; text-align: right"><asp:RadioButton ID="rbPatientID" runat="server" GroupName="rbPatientSearch" OnCheckedChanged="rbPatientID_CheckedChanged" AutoPostBack="True" /></td>
							        <td style="width: 20%">Patient ID:</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbPatientID" runat="server" Width="250" Height="30" TextMode="Search" AutoPostBack="True" Enabled="False"></asp:TextBox></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                  </tr>
                                </table>--%>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 25%"></td>
                                    <td style="width: 10%">Patient ID:</td>
                                    <td style="width: 25%"><asp:TextBox ID="tbPatientID" runat="server" Width="300" Height="30"></asp:TextBox></td>
                                    <td style="width: 40%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:left">
                                    <td style="width: 25%"></td>
							        <td style="width: 10%">Examination:</td>
                                    <td style="width: 25%"><asp:DropDownList ID="ddlExam" runat="server">
                                                                <asp:ListItem Text="Vital Signs" Value="Vital Signs" Selected="True">Vital Signs</asp:ListItem>
                                                                <asp:ListItem Text="Audiometry" Value="Audiometry">Audiometry</asp:ListItem>
                                                                <asp:ListItem Text="Blood Chemistry" Value="Blood Chemistry">Blood Chemistry</asp:ListItem>
                                                                <asp:ListItem Text="CT Scan" Value="CT Scan">CT Scan</asp:ListItem>
                                                                <asp:ListItem Text="Cytopathology" Value="Cytopathology">Cytopathology</asp:ListItem>
                                                                <%--<asp:ListItem Text="Dental" Value="Dental" >Dental</asp:ListItem>--%>
                                                                <asp:ListItem Text="Drug Test" Value="Drug Test">Drug Test</asp:ListItem>
                                                                <asp:ListItem Text="Fecalysis" Value="Fecalysis">Fecalysis</asp:ListItem>
                                                                <asp:ListItem Text="Haematology" Value="Haematology">Haematology</asp:ListItem>
                                                                <asp:ListItem Text="Immunology" Value="Immunology">Immunology</asp:ListItem>
                                                                <asp:ListItem Text="Physical Exam" Value="Physical Exam">Physical Exam</asp:ListItem>
                                                                <asp:ListItem Text="Psychology" Value="Psychology">Psychology</asp:ListItem>
                                                                <asp:ListItem Text="Ultrasound" Value="Ultrasound">Ultrasound</asp:ListItem>
                                                                <asp:ListItem Text="Urinalysis" Value="Urinalysis">Urinalysis</asp:ListItem>
                                                                <asp:ListItem Text="X-ray" Value="X-ray">X-ray</asp:ListItem>
                                                           </asp:DropDownList></td>
                                    <td style="width: 40%"></td>
                                  </tr>
                                </table>
                                
                                <p>&nbsp</p>
                                <p>&nbsp</p>
                                
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"></td>
                                    <td style="width: 50%"><asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label></td>
							        <td style="width: 25%"></td>
                                  </tr>
                                </table>
                                <table>
                                  <tr style="text-align:center">
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"></td>
                                    <td style="width: 25%"><asp:Button ID="btnClear" runat="server" Text="Clear" BackColor="#999999" OnClick="btnClear_Click" /></td>
							        <td style="width: 25%"><asp:Button ID="btnContinue" runat="server" Text="Continue" OnClick="btnContinue_Click"/></td>
                                  </tr>
                                </table>


                    </div>
				</div>

</asp:Content>