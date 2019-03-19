<%@ Register Assembly="TimePicker" Namespace="MKB.TimePicker" TagPrefix="MKB" %>


<%--<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Datalist.ascx.cs" Inherits="SECU_CAMSPlus_DEV.Datalist"  %>--%>
<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Project>" %> 


<html>
<body>
    <div class="row">
        <div class="col-lg-12">
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333"
                OnItemDataBound="DataList1_ItemDataBound1" Width="100%">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderTemplate>
                    <asp:CheckBox ID="chkboxAll" runat="server" Checked="True"
                        ClientIDMode="Static" CssClass="bold" onclick="checkALL();" Text="Select All"
                        Visible="true" />
                </HeaderTemplate>
                <ItemStyle BackColor="#EFF3FB" BorderColor="#333333" BorderStyle="Solid"
                    BorderWidth="2px" />
                <ItemTemplate>
                    <table width="100%">
                        <tr>
                            <td width="5%">
                                <asp:CheckBox ID="chkboxSensors" runat="server" AutoPostBack="True"
                                    Checked="True" CssClass="chkSelect" Width="5%" />
                            </td>
                            <td width="10%">
                                <asp:TextBox ID="lblZoneNo" runat="server" align="left" BackColor="#FFFF66"
                                    class="label" CssClass="bold" Height="22px" MaxLength="3"
                                    onkeypress="return onlyNumbers(event)" Text='<%# Bind("ZoneNo") %>'
                                    Width="50px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server"
                                    ControlToValidate="lblZoneNo" CssClass="validator" ErrorMessage="Required"></asp:RequiredFieldValidator>
                            </td>
                            <td width="15%">
                                <asp:Label ID="lblSensorType" runat="server" align="left" class="label"
                                    Height="22px" Text='<%# Bind("SensorType") %>' Width="70%"></asp:Label>
                            </td>
                            <td width="20%">
                                <asp:TextBox ID="txtLocation" runat="server" align="left" BorderColor="#333333"
                                    BorderStyle="Solid" BorderWidth="1px" class="label" Height="22px"
                                    Text='<%# Bind("Location") %>' Width="70%"></asp:TextBox>
                            </td>
                            <td width="20%">
                                <asp:TextBox ID="lblDescription" runat="server" align="left"
                                    BorderColor="#333333" BorderStyle="Solid" BorderWidth="1px" class="label"
                                    Height="22px" Text='<%# Bind("ZoneDescription") %>' Width="70%"></asp:TextBox>
                            </td>
                            <td width="10%">
                                <%-- <cc1:OboutCheckBox ID="chkScheduler" runat="server" AutoPostBack="true"
                                                oncheckedchanged="chkScheduler_CheckedChanged" >
                                            </cc1:OboutCheckBox>--%>
                                <asp:CheckBox ID="chkScheduler" runat="server" AutoPostBack="true"
                                    OnCheckedChanged="chkScheduler_CheckedChanged" />
                                <%-- <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />--%>
                            </td>
                            <td width="15%">
                                <asp:TextBox ID="txtCamera" runat="server" MaxLength="3"
                                    onkeypress="return onlyNumbers(event)" Text='<%# Bind("CameraNo") %>'
                                    Visible="False" Width="0%"></asp:TextBox>
                                <asp:DropDownList ID="ddlCamera" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td width="10%">
                                <asp:CheckBox ID="chkboxSMSalert" runat="server" Checked="True"
                                    Visible="False" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="8">
                                <asp:Panel ID="pnlscheduler" runat="server" BorderColor="#333333"
                                    BorderStyle="None" BorderWidth="1px" Visible="False" Width="100%">
                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                        <tr>
                                            <td>
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="9">
                                                            <hr />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label137" runat="server" CssClass="label" Text="Schedule"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label138" runat="server" CssClass="label" Text="Siren"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:RadioButtonList ID="rbtnSirenScheduler" runat="server" CssClass="label"
                                                                RepeatDirection="Horizontal">
                                                                <asp:ListItem Value="0">ON</asp:ListItem>
                                                                <asp:ListItem Selected="True" Value="1">OFF</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label139" runat="server" CssClass="label" Text="Raise Ticket"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:RadioButtonList ID="rbtnRaiseTicketWithin" runat="server" CssClass="label"
                                                                RepeatDirection="Horizontal">
                                                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                                                <asp:ListItem Selected="True" Value="0">No</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label140" runat="server" CssClass="label" Text="Send Alert"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:RadioButtonList ID="rbtnSendAlertWithin" runat="server" CssClass="label"
                                                                RepeatDirection="Horizontal">
                                                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                                                <asp:ListItem Selected="True" Value="0">No</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label141" runat="server" CssClass="label" Text="Send Video"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:RadioButtonList ID="rbtnSendVideoWithin" runat="server" CssClass="label"
                                                                RepeatDirection="Horizontal">
                                                                <asp:ListItem Selected="True" Value="1">Yes</asp:ListItem>
                                                                <asp:ListItem Value="0">No</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table width="50%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label142" runat="server" CssClass="label" Text="Weekdays"></asp:Label>
                                                        </td>
                                                        <td width="30%">
                                                            <asp:Panel ID="Panel15" runat="server" Width="100%">
                                                                <%--  <MKB:TimeSelector ID="tsTimeFrom" runat="server" AmPm="AM" 
                                                                                DisplaySeconds="true" Hour="08" Minute="00" MinuteIncrement="5" 
                                                                                SelectedTimeFormat="Twelve">
                                                                            </MKB:TimeSelector>--%>
                                                                <MKB:TimeSelector ID="tsTimeFrom" runat="server" AmPm="PM" BorderColor="Silver"
                                                                    Date="01/01/0001 17:00:00" Hour="5" Minute="0" MinuteIncrement="5" Second="0"
                                                                    SelectedTimeFormat="Twelve" ToolTip="Late Close Time" AllowSecondEditing="true">
                                                                </MKB:TimeSelector>
                                                            </asp:Panel>
                                                        </td>
                                                        <td width="7%">
                                                            <asp:Label ID="Label143" runat="server" CssClass="label" Text="To"></asp:Label>
                                                        </td>
                                                        <td width="30%">
                                                            <asp:Panel ID="Panel16" runat="server" Width="100%">
                                                                <%-- <MKB:TimeSelector ID="tsTimeTo" runat="server" AmPm="AM" 
                                                                                DisplaySeconds="true" Hour="08" Minute="00" MinuteIncrement="5" 
                                                                                SelectedTimeFormat="Twelve">
                                                                            </MKB:TimeSelector>--%>
                                                                <MKB:TimeSelector ID="tsTimeTo" runat="server" AmPm="PM" BorderColor="Silver"
                                                                    Date="01/01/0001 17:00:00" Hour="5" Minute="0" MinuteIncrement="5" Second="0"
                                                                    SelectedTimeFormat="Twelve" ToolTip="Late Close Time" AllowSecondEditing="true">
                                                                </MKB:TimeSelector>
                                                            </asp:Panel>
                                                        </td>
                                                        <td style="text-align: center">&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblSirenStatus" runat="server" align="left" class="label"
                                    Height="18px" Text='<%# Bind("sirenstatus") %>' Visible="False" Width="50%"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblScheduleActivity" runat="server" align="left" class="label"
                                    Height="18px" Text='<%# Bind("ScheduleActivity") %>' Visible="False"
                                    Width="50%"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblScheduler" runat="server" align="left" class="label"
                                    Height="18px" Text='<%# Bind("Scheduler") %>' Visible="False" Width="50%"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblScheduler0" runat="server" align="left" class="label"
                                    Height="18px" Text='<%# Bind("Scheduler") %>' Visible="False" Width="50%"></asp:Label>
                                <asp:Label ID="lblProjectID" runat="server" align="left" class="label"
                                    Height="18px" Text='<%# Bind("ProjectID") %>' Visible="False" Width="50%"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblCamera" runat="server" align="left" class="label"
                                    Text='<%# Bind("CameraNo") %>' Visible="False"></asp:Label>
                                <asp:Label ID="lblTimeTo" runat="server" align="left" class="label"
                                    Text='<%# Bind("TimeTo") %>' Visible="False"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblSMS" runat="server" align="left" class="label" Height="18px"
                                    Text='<%# Bind("SMS") %>' Visible="False" Width="50%"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="PanelManfgID" runat="server" align="left" class="label"
                                    Height="18px" Text='<%# Bind("SMS") %>' Visible="False" Width="50%"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:Label ID="lblTimeFrom" runat="server" align="left" class="label"
                                    Height="18px" Text='<%# Bind("TimeFrom") %>' Visible="False" Width="50%"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
        </div>

    </div>
</body>
</html>
