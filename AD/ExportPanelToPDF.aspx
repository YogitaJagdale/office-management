<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExportPanelToPDF.aspx.cs" Inherits="SECU_CAMSPlus_DEV.Views.ExportPDFDemo" EnableEventValidation="false"  %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        
        label
        {
        }
        .style1
        {}
        .style2
        {
            font-weight: bold;
            height: 19px;
        }
        .style3
        {
            height: 19px;
        }
        .style4
        {
            font-weight: bold;
            height: 31px;
        }
        .style5
        {
            height: 12px;
        }
        .style6
        {
            width: 461px;
        }
    </style>
     <script src="Scripts/timePicker.js" type="text/javascript"></script>

</head>

<body style="background-color:White;">
    <form id="form1" runat="server">
        <asp:Panel ID="pnlPanelDetails" runat ="server">
        <table width="90%" class="label" border="1"  align="center">
            <tr>
                <td class="bold" width="100%" colspan="4">
                    Panel Details :</td>
                
            </tr>
            
            <tr>
                <td class="bold" colspan="4">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="bold" width="20%">
                    Client Name </td>
                <td width="30%">
                    <asp:Label ID="lblClientName" runat="server"></asp:Label>
                </td>
                <td class="bold" width="20%">
                    Panel Type </td>
                <td width="30%">
                    <asp:Label ID="lblPanelType" runat="server"></asp:Label>
                </td>
            </tr>
        <tr>
            <td class="bold" width="20%">
               Project ID </td>
            <td width="30%">
                <asp:Label ID="lblProjectId" runat="server"></asp:Label>
                
            </td>
            <td class="bold" width="20%">
                Panel ID </td>
            <td width="30%">
                <asp:Label ID="lblPanelID" runat="server"></asp:Label>
            </td>

        </tr>
        <tr>
            <td class="bold" width="20%">
                Client Circle </td>
            <td width="30%">
              <asp:Label ID="lblClientCircle" runat="server"></asp:Label>
            </td>
            <td class="bold" width="20%">
               Panel Manufacturing ID </td>
            <td width="30%">
              <asp:Label ID="lblManufacturingID" runat="server"></asp:Label>
              </td>
        </tr>
        <tr>
            <td class="bold" width="20%">
              State  </td>
            <td width="30%">
               <asp:Label ID="lblState" runat="server"></asp:Label>
            </td>
            <td class="bold" width="20%">
                  Panel IP</td>
            <td width="30%">
               <asp:Label ID="lblPanelIp" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="bold" width="20%">
              City  </td>
            <td width="30%">
                <asp:Label ID="lblCity" runat="server"></asp:Label>
            </td>
            <td class="bold" width="20%">
                Panel Port</td>
            <td width="30%">
                 <asp:Label ID="lblPanelport" runat="server"></asp:Label> 
            </td>
        </tr>
        <tr>
            <td class="bold" width="20%">
                Pincode</td>
            <td width="30%">
               <asp:Label ID="lblPincode" runat="server"></asp:Label>    
            </td>
            <td class="bold" width="20%">
                Panel Manufacturer</td>
            <td width="30%">
              
                <asp:Label ID="lblpnlmanufacturer" runat="server"></asp:Label>
              
            </td>
        </tr>
            <tr>
                <td class="bold" width="20%">
                    Address </td>
                <td width="30%">   
                    <asp:Label ID="lbladdress" runat="server"></asp:Label>             
                </td>
                <td class="bold" width="20%">
                     Panel Make / Model</td>
                <td width="30%">
                  
                  
                    
                    <asp:Label ID="lblPanelMakeModel" runat="server"></asp:Label>
                    
                  
                    
                </td>
            </tr>
            <tr>
                <td class="bold" width="20%">
                    Panel Location </td>
                <td width="30%">
                      <asp:Label ID="lblPanelLocation" runat="server"></asp:Label>         
                </td>
                <td class="bold" width="20%">
                    Panel Current Version </td>
                <td width="30%">
                  
                    <asp:Label ID="lblPanelCurrentVersion" runat="server"></asp:Label>
                  
                </td>
            </tr>
            <tr>
                <td class="bold" width="20%">
                    SOL ID/ Site ID</td>
                <td width="30%">
                   
                    <asp:Label ID="lblSolId" runat="server"></asp:Label>
                   
                </td>
                <td class="bold" width="20%">
                    Project Co-ordinator</td>
                <td width="30%">
                    <asp:Label ID="lblProjectCordinator" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="bold" width="20%">
                    CRA Company</td>
                <td width="30%">
                    <asp:Label ID="lblCRACompany" runat="server"></asp:Label>
                </td>
                <td class="bold" width="20%">
                    Project Lead</td>
                <td width="30%">
                    <asp:Label ID="lblProjectLead" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="bold" width="20%">
                    MSP Company</td>
                <td width="30%">
                    <asp:Label ID="lblMSPCompany" runat="server"></asp:Label>
                </td>
                <td class="bold" width="20%">
                    Project Manager</td>
                <td width="30%">
                    <asp:Label ID="lblProjectManager" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="bold" width="20%">
                    HK Company</td>
                <td width="30%">
                    <asp:Label ID="lblHKCompany" runat="server"></asp:Label>
                </td>
                <td class="bold" width="20%">
                    Territory Name</td>
                <td width="30%">
                    <asp:Label ID="lblTerritoryName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td  width="20%">
                    Installation Vendor</td>
                <td width="30%" class="style3">
                    <asp:Label ID="lblInstallationVendor" runat="server"></asp:Label>
                </td>
                <td  width="20%">
                    Territory Manager Name</td>
                <td width="30%" class="style3">
                    <asp:Label ID="lblTerritoryManager" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td  width="20%">
                    DVR User ID
                </td>
                 <td width="30%" class="style3">
                    <asp:Label ID="lblDvrUserID" runat="server"></asp:Label>
                </td>
                <td  width="20%">
                    DVR User Password
                </td>
                 <td width="30%" class="style3">
                    <asp:Label ID="lblUserPwd" runat="server"></asp:Label>
                </td>
            </tr>

            <tr>
                <td width="20%">
                    DVR Port
                </td>
                 <td width="30%" class="style3">
                    <asp:Label ID="lblDvrPort" runat="server"></asp:Label>
                </td>
                <td  width="20%">
                    DVR Type
                </td>
                 <td width="30%" class="style3">
                    <asp:Label ID="lblDvrType" runat="server"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="bold" width="20%">
                    MDN Number</td>
                <td width="30%">
                    <asp:Label ID="lblMDNNumber" runat="server"></asp:Label>
                </td>
                <td class="bold" width="20%">
                    ATM 3 ID</td>
                <td width="30%">
                    <asp:Label ID="lblATM3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="bold" width="20%">
                    ATM 1 ID</td>
                <td width="30%">
                   
                    <asp:Label ID="lblATM1" runat="server"></asp:Label>
                   
                </td>
                <td class="bold" width="20%">
                    ATM 4 ID</td>
                <td width="30%">
                    <asp:Label ID="lblATM4" runat="server"></asp:Label>
                </td>
            </tr>
            <caption>
                <tr>
                    <td class="bold">
                        ATM 2 ID</td>
                    <td>
                        <asp:Label ID="lblATM2" runat="server"></asp:Label>
                    </td>
                    <td class="bold"> ATM 5 ID</td>
                    <td>
                        <asp:Label ID="lblATM5" runat="server"></asp:Label>
                    </td>
                </tr>
            
            
          
       
                  <tr>
                      <td class="bold">
                          Antenna*</td>
                      <td>
                          <asp:Label ID="lblAntenna" runat="server"></asp:Label>
                      </td>
                      <td class="bold">
                          Subscription</td>
                      <td>
                          <asp:Label ID="lblsub" runat="server"></asp:Label>
                      </td>
                </tr>
               <%--New Parameters--%>
                <tr>
                 <td>Branch Name</td>
                 <td><asp:Label ID="lblBranchName" runat="server"></asp:Label></td>
                    <td>Server Port</td>
                  <td><asp:Label ID="lblServerPort" runat="server"></asp:Label></td>
                </tr>

                  <tr>                       
                       <td>Latitude</td>  
                       <td><asp:Label ID="lblLatitude" runat="server"></asp:Label></td>  
                      <td>Longitude</td>
                       <td><asp:Label ID="lblLongitude" runat="server"></asp:Label></td>  
                  </tr>
                   
                </tr>
                <tr>
                    <td class="style4" colspan="4">
                        Escalations :</td>
                    <tr>
                        <td class="bold" colspan="2">Bank Escalation :
                            <asp:Label ID="lblBankescRecord" runat="server" Visible="false"></asp:Label>
                        </td>
                        <td class="bold">&nbsp;</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="4" width="100%">
                            <div id="d" runat="server">
                                <asp:GridView ID="gvBanktemplate" runat="server" AutoGenerateColumns="False" Emptydatatext="No Record Found." ShowHeaderWhenEmpty="True" ToolTip="Bank Escalation" Width="100%">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Contact PersonName">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEscPubID" runat="server" Text='<%# Bind("Contact_Person") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="15%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Designation">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEscPubID" runat="server" Text='<%# Bind("Contact_Description") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Left" Width="15%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Telephone No">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEscPubID" runat="server" Text='<%# Bind("Tel_No") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="10%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Mobile No">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEscPubID" runat="server" Text='<%# Bind("Cell_No") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="10%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Email ID">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEscPubID" runat="server" Text='<%# Bind("EmailID") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Priority">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPriority" runat="server" Text='<%# Bind("Priority") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" Width="5%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Interval">
                                            <ItemTemplate>
                                                <asp:Label ID="lblInterval" runat="server" Text='<%# Bind("Interval") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" Width="5%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Repeat" Visible="False">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRepeat" runat="server" Text='<%# Bind("RepeatFlag") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" Width="5%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Repeat Interval (min.)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRepeatInterval" runat="server" Text='<%# Bind("RepeatInterval") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" Width="5%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="False" Visible="False"></asp:TemplateField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        no Records Found
                                    </EmptyDataTemplate>
                                </asp:GridView>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="bold" colspan="2">MSP Escalation :
                            <asp:Label ID="lblMspescaltionRecord" runat="server" Visible="false"></asp:Label>
                        </td>
                        <td class="bold"></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="bold" colspan="4" width="100%">
                            <div id="Div1" runat="server">
                                <asp:GridView ID="gvMsptemplate" runat="server" AutoGenerateColumns="False" CssClass="label" Emptydatatext="No Record Found." ShowHeaderWhenEmpty="True" ToolTip="Msp Escalation" Width="100%">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Contact PersonName">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEscPubID" runat="server" Text='<%# Bind("Contact_Person") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="15%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Designation">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEscPubID" runat="server" Text='<%# Bind("Contact_Description") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Left" Width="15%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Telephone No">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEscPubID" runat="server" Text='<%# Bind("Tel_No") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="10%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Mobile No">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEscPubID" runat="server" Text='<%# Bind("Cell_No") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="10%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Email ID">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEscPubID" runat="server" Text='<%# Bind("EmailID") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Priority">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPriority" runat="server" Text='<%# Bind("Priority") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" Width="5%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Interval">
                                            <ItemTemplate>
                                                <asp:Label ID="lblInterval" runat="server" Text='<%# Bind("Interval") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" Width="5%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Repeat" Visible="False">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRepeat" runat="server" Text='<%# Bind("RepeatFlag") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" Width="5%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Repeat Interval (min.)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRepeatInterval" runat="server" Text='<%# Bind("RepeatInterval") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" Width="5%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="False" Visible="False"></asp:TemplateField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        no Records Found
                                    </EmptyDataTemplate>
                                </asp:GridView>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="bold" colspan="2">QRT Escalation :
                            <asp:Label ID="lblQtrEsclationRecord" runat="server" Visible="false"></asp:Label>
                        </td>
                        <td class="bold">&nbsp;</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="bold" colspan="4" width="100%">
                            <div id="Div2" runat="server">
                                <asp:GridView ID="gvQrtTemplate" runat="server" AutoGenerateColumns="False" CssClass="label" Emptydatatext="No Record Found." ShowHeaderWhenEmpty="True" TabIndex="21" ToolTip="Qrt Escalation" Width="100%">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Contact PersonName">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEscPubID" runat="server" Text='<%# Bind("Contact_Person") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="15%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Designation">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEscPubID" runat="server" Text='<%# Bind("Contact_Description") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Left" Width="15%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Telephone No">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEscPubID" runat="server" Text='<%# Bind("Tel_No") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="10%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Mobile No">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEscPubID" runat="server" Text='<%# Bind("Cell_No") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="10%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Email ID">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEscPubID" runat="server" Text='<%# Bind("EmailID") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Priority">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPriority" runat="server" Text='<%# Bind("Priority") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" Width="5%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Interval">
                                            <ItemTemplate>
                                                <asp:Label ID="lblInterval" runat="server" Text='<%# Bind("Interval") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" Width="5%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Repeat" Visible="False">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRepeat" runat="server" Text='<%# Bind("RepeatFlag") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Repeat Interval (min.)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRepeatInterval" runat="server" Text='<%# Bind("RepeatInterval") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" Width="5%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="False" Visible="False"></asp:TemplateField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        no Records Found
                                    </EmptyDataTemplate>
                                </asp:GridView>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="bold" colspan="4">Sensor :
                            <asp:Label ID="lblSensorRecord" runat="server" Visible="false"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:GridView ID="gvSensorSummery" runat="server" AutoGenerateColumns="False" CssClass="label" Emptydatatext="No Record Found." ShowHeaderWhenEmpty="True" ToolTip="Sensor Summery" Width="100%">
                                <Columns>
                                    <asp:TemplateField HeaderText="ZoneNo">
                                        <ItemTemplate>
                                            <asp:Label ID="lblZoneNo" runat="server" Text='<%# Bind("ZoneNo") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="SensorType">
                                        <ItemTemplate>
                                            <asp:Label ID="lblSensorType" runat="server" Text='<%# Bind("SensorType") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Camera No">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCameraNo" runat="server" Text='<%# Bind("CameraNo") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Time From">
                                        <ItemTemplate>
                                            <asp:Label ID="lblTimeFrom" runat="server" Text='<%# Bind("TimeFrom") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="TimeTo">
                                        <ItemTemplate>
                                            <asp:Label ID="lblTimeTo" runat="server" Text='<%# Bind("TimeTo") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Sceduler">
                                        <ItemTemplate>
                                            <asp:Label ID="lblSceduler" runat="server" Text='<%# Bind("Sceduler") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Schedule Activity">
                                        <ItemTemplate>
                                            <asp:Label ID="lblScheduleActivity" runat="server" Text='<%# Bind("ScheduleActivity") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                </Columns>
                                <EmptyDataRowStyle HorizontalAlign="Center" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <table width="100%">
                                <tr>
                                    <td class="bold">Sensor Details :
                                        <asp:Label ID="lblsensordetailRecord" runat="server" Visible="false"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="gvZoneProj" runat="server" AutoGenerateColumns="False" onrowdatabound="gvZoneProj_RowDataBound" Width="100%">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Zone No">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblZoneNo" runat="server" CausesValidation="False" Text='<%# Eval("[ZoneNo]") %>'></asp:Label>
                                                        <asp:Label ID="lblProjectID" runat="server" Text='<%# Eval("[ProjectID]") %>' Visible="False"></asp:Label>
                                                    </ItemTemplate>
                                                    <ItemStyle Width="10%" />
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="SensorType" HeaderText="Sensor Type">
                                                <ItemStyle Width="20%" />
                                                </asp:BoundField>
                                                <asp:TemplateField HeaderText="Sensor Manufacturer">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:DropDownList ID="ddlSensorMfg" runat="server" Visible="false">
                                                        </asp:DropDownList>
                                                        <asp:Label ID="lblSensorMfgID" runat="server" Text='<%# Eval("[SensorMfgID]") %>'>
                                                             </asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <EmptyDataTemplate>
                                                no Records Found
                                            </EmptyDataTemplate>
                                            <FooterStyle CssClass="mypager" />
                                            <HeaderStyle CssClass="myheader" Height="25px" HorizontalAlign="Left" />
                                            <PagerStyle CssClass="mypager" Height="25px" />
                                        </asp:GridView>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </tr>
      
                
            </caption>
            

            <tr>
                <td colspan="4">
                            
                     <table width="100%">
                                     <tr>
                                         <td class="bold">
                                                                           
                                         </td>
                                     </tr>
                                     <tr>
                                           Camera Details :  
                                         <td>

                                             <asp:GridView ID="gvCameraProject" runat="server"  
                                                 AutoGenerateColumns="False"  
                                                 onrowdatabound="gvCameraProject_RowDataBound" Width="100%" 
                                                 onrowcommand="gvCamera_RowCommand">
                                                 <Columns>
                                                     <asp:TemplateField HeaderText="Camera No">
                                                         <EditItemTemplate>
                                                             <asp:TextBox ID="TextBox10" runat="server" Visible="false" Text='<%# Bind("CameraNo") %>'></asp:TextBox>
                                                         </EditItemTemplate>
                                                         <ItemTemplate>
                                                             <asp:Label ID="lblCameraNo" runat="server" Text='<%# Bind("CameraNo") %>'></asp:Label>
                                                         </ItemTemplate>
                                                         <ItemStyle Width="20%" />
                                                     </asp:TemplateField>
                                                     <asp:TemplateField HeaderText="Manufacturer">
                                                         <ItemTemplate>
                                                             <asp:DropDownList ID="ddlCameraMfg" runat="server" Visible="false" ValidationGroup="Getmodel">
                                                             </asp:DropDownList>
                                                             <asp:Label ID="lblCameraMfg" runat="server" Text='<%# Eval("CAMMfgID") %>' 
                                                                 Visible="False"></asp:Label>
                                                                 <asp:Label ID="lblCameraManufa" runat="server" ></asp:Label>
                                                             <asp:Button ID="btnGetModel" runat="server" CommandName="GetModel" Visible="false"
                                                                 Height="25px" Text="Get Models &gt;" ValidationGroup="Getmodel" />
                                                             
                                                         </ItemTemplate>
                                                     </asp:TemplateField>
                                                     <asp:TemplateField HeaderText="Model">
                                                         <EditItemTemplate>
                                                             <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                                         </EditItemTemplate>
                                                         <ItemTemplate>
                                                             <asp:DropDownList ID="ddlCameraModel" runat="server" Visible="false"
                                                                 ValidationGroup="Getmodel">
                                                             </asp:DropDownList>
                                                             <asp:Label ID="lblCameraModel" runat="server"></asp:Label>

                                                             <asp:Label ID="lblCamModelId" runat="server" Text='<%# Bind("MMID") %>' 
                                                                 Visible="False"></asp:Label>
                                                         </ItemTemplate>
                                                     </asp:TemplateField>
                                                 </Columns>
                                                 <FooterStyle CssClass="mypager" />
                                                 <HeaderStyle CssClass="myheader" 
                                                     Height="25px" HorizontalAlign="Left" />
                                                 <PagerStyle CssClass="mypager" Height="25px" />
                                             </asp:GridView>
                                         </td>
                                     </tr>
                      <BR />
                                     <tr>
                                         
                                         <td>
                                            DVR Details
                                              <table width="100%">
                                                     <tr>
                                                         <td width="20%">
                                                             <asp:Label ID="Label151" runat="server" align="left" class="label" 
                                                                 Height="16px" Text=" DVR Manufacturer" ></asp:Label>
                                                         </td>
                                                         <td width="20%">
                                                                 <asp:Label ID="lblDVRManufacturer" runat="server" align="left" class="label" 
                                                                 Height="16px" ></asp:Label>

                                                         </td>  
                                                         <td  width="20%" > 
                                                             <asp:Label ID="Label152" runat="server" align="left" class="label" 
                                                                 Height="16px" Text="DVR Model" ></asp:Label>
                                                         </td>
                                                         <td  width="20%" >
                                                                  <asp:Label ID="lblDVRmodel" runat="server" align="left" class="label" 
                                                                 Height="16px" ></asp:Label>
                                                         </td>
                                                         
                                                     </tr>
                                                     <tr>
                                                         <td width="20%">
                                                             <asp:Label ID="Label169" runat="server" align="left" class="label" 
                                                                 Height="16px" Text="DVR Version"></asp:Label>
                                                         </td>
                                                         <td width="20%">
                                                             <asp:Label ID="lblDVRVersion" runat="server" align="left" class="label" 
                                                                 Height="16px"></asp:Label>
                                                         </td>
                                                         <td width="20%">
                                                             <asp:Label ID="Label170" runat="server" align="left" class="label" Height="16px" Text="DVR Serial No."></asp:Label>
                                                         </td>
                                                         <td width="20%">
                                                             <asp:Label ID="lblDVRSerial" runat="server" align="left" class="label" Height="16px"></asp:Label>
                                                         </td>
                                                     </tr>
                                                     <tr>
                                                         <td width="20%" >
                                                             <asp:Label ID="Label153" runat="server" align="left" class="label" 
                                                                 Height="16px" Text=" Router Manufacturer" width="94%"></asp:Label>
                                                         </td>
                                                         <td  width="20%" >
                                                                 <asp:Label ID="lblRoutermnfr" runat="server" align="left" class="label" 
                                                                 Height="16px" width="63%"></asp:Label>
                                                         </td>
                                                         <td  width="20%" >
                                                             <asp:Label ID="Label154" runat="server" align="left" class="label" 
                                                                 Height="16px" Text=" Router Model" width="87%"></asp:Label>
                                                         </td>
                                                         <td  width="20%" >
                                                                 <asp:Label ID="lblRouterModel" runat="server" align="left" class="label" 
                                                                 Height="16px" width="63%"></asp:Label>
                                                         </td>
                                                         
                                                     </tr>
                                                     <tr>
                                                         <td width="20%">
                                                             <asp:Label ID="Label168" runat="server" align="left" class="label" 
                                                                 Height="16px" Text="Router Version" width="94%"></asp:Label>
                                                         </td>
                                                         <td width="20%">
                                                             <asp:Label ID="lblRouterVersion" runat="server" align="left" class="label" 
                                                                 Height="16px" width="63%"></asp:Label>
                                                         </td>
                                                         <td width="20%">
                                                             <asp:Label ID="Label171" runat="server" align="left" class="label" Height="16px" Text="Router Serial No."></asp:Label>
                                                         </td>
                                                         <td width="20%">
                                                             <asp:Label ID="lblRouterSerial" runat="server" align="left" class="label" Height="16px"></asp:Label>
                                                         </td>
                                                     </tr>
                                                     <tr>
                                                         <td width="20%">
                                                             <asp:Label ID="Label165" runat="server" align="left" class="label" 
                                                                 Height="16px" Text="HDD Manufacturer"></asp:Label></td>
                                                         <td  width="20%">
                                                             
                                                             <asp:Label ID="lblHDDManufacturer" runat="server" align="left" class="label" 
                                                                 Height="16px" width="63%"></asp:Label>
                                                         </td>
                                                         <td  width="20%" >
                                                             <asp:Label ID="Label166" runat="server" align="left" class="label" 
                                                                 Height="16px" Text="HDD Model" Width="63%"></asp:Label></td>
                                                         <td  width="20%" >

                                                             <asp:Label ID="lblHDDModel" runat="server" align="left" class="label" 
                                                                 Height="16px" width="63%"></asp:Label>
                                                         </td>
                                                     </tr>
                                                     
                                                     <tr>
                                                         <td width="20%">
                                                             <asp:Label ID="Label167" runat="server" align="left" class="label" 
                                                                 Height="16px" Text="HDD Capacity"></asp:Label>
                                                         </td>
                                                         <td width="20%">
                                                             <asp:Label ID="lblCapacity" runat="server" align="left" class="label" 
                                                                 Height="16px" width="63%"></asp:Label>
                                                         </td> 
                                                         <td width="20%">
                                                             <asp:Label ID="Label172" runat="server" align="left" class="label" Height="16px" Text="HDD Serial No."></asp:Label>
                                                         </td>
                                                         <td width="20%">
                                                             <asp:Label ID="lblHDDSerial" runat="server" align="left" class="label" Height="16px"></asp:Label>
                                                         </td>
                                                     </tr>
                                                     <tr>
                                                         <td width="20%">
                                                             <asp:Label ID="Label156" runat="server" align="left" class="label" 
                                                                 Height="20px" Text="Network Provider" width="78%"></asp:Label>
                                                         </td>
                                                         <td width="20%">
                                                             <asp:Label ID="lblNwPvd" runat="server" align="left" class="label" 
                                                                 Height="16px" width="63%"></asp:Label>
                                                         </td>
                                                         <td width="20%">
                                                             <asp:Label ID="lblNetType" runat="server" align="left" class="label" 
                                                                 Height="16px" Text="Network Type" width="87%"></asp:Label>
                                                         </td>
                                                         <td width="20%">
                                                             <asp:Label ID="lblNetworkType" runat="server" align="left" class="label" 
                                                                 Height="16px" width="63%"></asp:Label>
                                                         </td>
                                                     </tr>
                                                     <tr>
                                                         <td width="20%">
                                                             &nbsp;</td>
                                                         <td width="20%">
                                                             &nbsp;</td>
                                                         <td width="20%">
                                                             &nbsp;</td>
                                                         <td width="20%">
                                                             &nbsp;</td>
                                                     </tr>
                                                     
                                                 </table>
                                            
                                         </td>
                                     </tr>
                                     <tr>
                                     <td>
                                     <asp:Label ID="lblDVRmfrProj" runat="server" Visible="False"></asp:Label>
                                     <asp:Label ID="lblDVRmodelProj" runat="server" Visible="False"></asp:Label>
                                     <asp:Label ID="lblRoutermfrProj" runat="server" Visible="False"></asp:Label>
                                     <asp:Label ID="lblRoutermodelProj" runat="server" Visible="False"></asp:Label>
                                     <asp:Label ID="lblHDDMfgId" runat="server" Visible="False"></asp:Label>
                                                                 
                                                                 
                                         <asp:Label ID="lblsch_ProfileID" runat="server" Visible="False"></asp:Label>
                                                                 
                                                                 
                                    </td>
                                        <tr>
                                          
                                         <td id="Scheduler" >                                         
                                            
                                             <asp:GridView ID="gv_Scheduler" runat="server" AutoGenerateColumns="False" CssClass="label" Emptydatatext="No Record Found." ShowHeaderWhenEmpty="True" ToolTip="Scheduler" Width="100%">
                                     <Columns>
                                        <asp:TemplateField HeaderText="Day Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lbldayname" runat="server" Text='<%# Bind("dayname") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="10%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Open Time">
                                            <ItemTemplate>
                                                <asp:Label ID="lblOpenTime" runat="server" Text='<%# Bind("OpenTime") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="15%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Early Open Time">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEarlyOpenTime" runat="server" Text='<%# Bind("EarlyOpenTime") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="10%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Late Open Time">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLateOpenTime" runat="server" Text='<%# Bind("LateOpenTime") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="10%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Close Time">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCloseTime" runat="server" Text='<%# Bind("CloseTime") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="10%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Early Close Time">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEarlyCloseTime" runat="server" Text='<%# Bind("EarlyCloseTime") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" Width="10%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Late Close Time">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLateCloseTime" runat="server" Text='<%# Bind("LateCloseTime") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" Width="10%" />
                                        </asp:TemplateField>                                       
                                        <asp:TemplateField ShowHeader="False" Visible="False"></asp:TemplateField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        no Records Found
                                    </EmptyDataTemplate>
                                </asp:GridView>
                                         </td>
                                         </tr>
                                     </tr>
                                 </table>                               
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
        </table>
        </asp:Panel>
        

        <table width="100%">
        <tr>
        <td align="center">

        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Export" 
                CssClass="style1" Width="231px" />
        </td>
        </tr>
        <tr>
        <td></td>
        </tr>
        <tr>
        <td>&nbsp;</td>
        </tr>
        <tr>
        <td>&nbsp;</td>
        </tr>
        </table>


        </form>
      </body>
      </html>