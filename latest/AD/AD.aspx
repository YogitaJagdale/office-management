<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AD.aspx.cs" Inherits="SECU_CAMSPlus_DEV.AD" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />


    <script type="text/javascript">


        function startTimer() {
            var timer = $find("<%=Timer1.ClientID%>")
            timer._startTimer();
            return false;
        }

        function stopTimer() {
            var timer = $find("<%=Timer1.ClientID%>")
            timer._stopTimer();
            return false;
        }

        function Closepopup() {
            $('#myModal').modal('close');

        }

        function blinker() {
            $('.blinking').fadeOut(400).fadeIn(400);
        }
        setInterval(blinker, 1500);



    </script>

    <style type="text/css">
        .Overlay {
            position: fixed;
            top: 0px;
            bottom: 0px;
            left: 0px;
            right: 0px;
            overflow: hidden;
            padding: 0;
            margin: 0;
            background-color: transparent;
            filter: alpha(opacity=95);
            opacity: 0.99;
            z-index: 95;
        }

        .PopUpPanel {
            position: absolute;
            background-color: White;
            top: 10%;
            left: 20%;
            z-index: 2001;
            padding: 10px;
            min-width: 800px;
            max-width: 800px;
            -moz-box-shadow: 3.5px 4px 5px #000000;
            -webkit-box-shadow: 3.5px 4px 5px #000000;
            box-shadow: 3.5px 4px 5px #000000;
            border-radius: 5px;
            -moz-border-radiux: 5px;
            -webkit-border-radiux: 5px;
            border: 1px solid #CCCCCC;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="alert alert-success alert-dismissible fade in">

                        <strong>
                            <asp:Label ID="lblMessage" runat="server" Text="No tickets were acknowledged"></asp:Label>

                        </strong>

                        <strong class="text-right" style="margin-left: 900px;">
                            <asp:Label ID="lblLoginID" runat="server" Text=""></asp:Label>
                            <asp:Label ID="Label7" runat="server" Text=""></asp:Label></strong>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="19px" ImageUrl="~/Images/spinning_animated_globe.gif" OnClick="ImageButton1_Click" Width="20px" ToolTip="Refresh" />
                    </div>


                    <div id="header" class="wow animated fadeIn">
                        <asp:DataList ID="dtlstAD" runat="server" RepeatColumns="3" OnItemCommand="dtlstAD_ItemCommand1" Height="100%" GridLines="Vertical" OnItemCreated="dtlstAD_ItemCreated" Width="100%" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="1px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <ItemStyle BackColor="White" />
                            <ItemTemplate>
                                <table class="table" style="width: 425px;">
                                    <tr>
                                        <td rowspan="4">
                                            <asp:ImageButton ID="imgADImage" runat="server" CommandName="Modal" CssClass="img-rounded" Height="160px" ImageUrl='<%# "ShowADImage.ashx?id=" + Eval("SrNo") %>' OnClick="imgbtnADImage_Click" Width="180px" />
                                        </td>
                                        <td class="small">Ticket No.:</td>
                                        <td class="small">
                                            <asp:Label ID="lblTicketID" runat="server" CssClass="a" Text='<%#DataBinder.Eval(Container.DataItem, "TicketID")%>'></asp:Label>
                                            <asp:Label ID="lblSrNo" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SrNo")%>' Visible="false"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="small">Activity ID.:</td>
                                        <td class="small">
                                            <asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "ActivityID")%>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="small">Alarm:</td>

                                        <td class="alert-danger small">

                                            <span class="blinking">
                                                <asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"SensorType") %>'></asp:Label></span>

                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="small">Zone No.:</td>
                                        <td class="small">
                                            <asp:Label ID="Label3" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"ZoneNo") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2" class="small">
                                            <asp:TextBox ID="txtComments" runat="server" AutoPostBack="True" Height="59px" OnTextChanged="txtComments_TextChanged" placeholder="Comments" TextMode="MultiLine" Width="183px"></asp:TextBox>
                                        </td>
                                        <td class="small">Camera:</td>
                                        <td class="small">
                                            <asp:Label ID="Label5" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Camera") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="small">Ticket Time:</td>
                                        <td class="small">
                                            <asp:Label ID="Label6" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Alert_Time") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="small">
                                            <asp:DropDownList ID="ddlComments" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlComments_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:Label ID="lblWarning" runat="server" ForeColor="Red"></asp:Label>
                                        </td>
                                        <td class="small">Panel ID:</td>
                                        <td class="small">
                                            <asp:Label ID="Label7" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"PanelID") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr class="bg-info">

                                        <td colspan="2" onclick="stopTimer();" class="small">
                                            <asp:RadioButtonList ID="rbtnlstClose" runat="server" CausesValidation="True" RepeatDirection="Horizontal" CellPadding="5" CellSpacing="5" CssClass="small" Width="100%" data-toggle="tooltip" title="Click on Close to Close Ticket. Click on Hold - AD Off to Stop image capturing (Recommended). Click on Hold - AD ON to Continue image capturing" data-html="true">
                                                <asp:ListItem Value="CLOSE" Selected="True">Close</asp:ListItem>
                                                <asp:ListItem Value="HOLDOFF">Hold - AD Off</asp:ListItem>
                                                <asp:ListItem Value="HOLDON">Hold - AD ON</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>

                                        <td class="text-right">
                                            <asp:Button ID="btnTicketClose" runat="server" CssClass="btn btn-warning" data-dismiss="modal" OnClick="btnTicketClose_Click" Text="Submit" />
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Black" />
                        </asp:DataList>
                    </div>
                    <div class="clearfix"></div>
                    <footer id="colophon">
                        <div class="container">
                            <div class="col-md-12">
                                <p class="text-center">Copyright All Rights Reserved &copy; 2018 Developed by Concerto Software & Systems Pvt Ltd.</p>
                            </div>
                        </div>
                    </footer>
                    </div>
                <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
                </asp:Timer>
                    <%--       <asp:ModalPopupExtender ID="ModalPopupExtender1" BehaviorID="mpe" runat="server"
    PopupControlID="myModal" TargetControlID="imgbtnADImage" BackgroundCssClass="modalBackground" CancelControlID = "btnAdd" >
                   
                </asp:ModalPopupExtender>--%>



                    <%-- <div class="modalPopup" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">  --%>
                    <asp:Panel ID="pnlSubPopup" runat="server" Visible="false" CssClass="Overlay">
                        <asp:Panel ID="pnlPopup" runat="server" BackColor="WhiteSmoke" CssClass="PopUpPanel"
                            Visible="False" Width="100%">
                            <%-- <div class="modal-content">  --%>

                            <div>

                                <table style="width: 100%;" class="table">
                                    <tr>
                                        <td rowspan="11" style="width: 60%">
                                            <asp:ImageButton ID="imgbtnADImage" runat="server" Height="350px" CssClass="img-thumbnail" />
                                            <asp:Label ID="lblPopupSrNo" runat="server" Text="" Visible="false"></asp:Label>
                                        </td>
                                        <td>Ticket No.:</td>
                                        <td>

                                            <asp:Label ID="lblPopupTicketID" runat="server" Text=""></asp:Label>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>Activity ID.:</td>
                                        <td>
                                            <asp:Label ID="lblActivityID" runat="server"></asp:Label>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>Alarm:</td>
                                        <td class="alert-danger">
                                            <h2 class="panel-title"><span class="blinking">
                                                <asp:Label ID="lblSensorType" runat="server" Text=""></asp:Label></span></h2>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">Zone No.:</td>
                                        <td class="auto-style3">
                                            <asp:Label ID="lblZoneNo" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>Camera:</td>
                                        <td>
                                            <asp:Label ID="lblCamera" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Ticket Open Time:</td>
                                        <td>
                                            <asp:Label ID="lblTicketOpenTime" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>IP Address:</td>
                                        <td>
                                            <asp:Label ID="lblIPAddress" runat="server" Text=""></asp:Label>
                                        </td>

                                    </tr>

                                    <tr>
                                        <td>Client:</td>
                                        <td>
                                            <asp:Label ID="lblClient" runat="server" Text=""></asp:Label>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>Panel ID:</td>
                                        <td class="auto-style2">
                                            <asp:Label ID="lblPanelID" runat="server" Text=""></asp:Label>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>SOLID/ Site ID</td>
                                        <td>
                                            <asp:Label ID="lblSOLID" runat="server" Text=""></asp:Label>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>Panel Address:</td>
                                        <td>
                                            <asp:Label ID="lblPanelAddress" runat="server" Text=""></asp:Label>
                                        </td>

                                    </tr>

                                    <tr>
                                        <td style="width: 60%" class="text-center">

                                            <table style="width: 100%">
                                                <tr>
                                                    <td style="width: 5%" class="text-right">
                                                        <asp:ImageButton ID="btnBack" runat="server" ImageUrl="~/Images/arrow_back.png" Height="25px" OnClick="btnBack_Click" data-toggle="tooltip" title="Oldest" />
                                                    </td>
                                                    <td style="width: 10%" class="text-left">
                                                        <asp:ImageButton ID="btnforward" runat="server" ImageUrl="~/Images/arrow_next.png" Height="25px" OnClick="btnforward_Click" data-toggle="tooltip" title="Latest" />
                                                    </td>
                                                    <td class="text-right">
                                                        <asp:Label ID="lblSrNo" runat="server" Text="1" Visible="true"></asp:Label>
                                                    </td>
                                                    <td class="text-right">No. Frames:
                                                <asp:Label ID="lblTotalCount" runat="server" Text="1" Visible="true"></asp:Label>
                                                    </td>
                                                    <td class="text-right">
                                                        <asp:Button ID="btnStartVoice" runat="server" CssClass="btn btn-success" OnClick="btnStartVoice_Click" Text="Start Voice" />
                                                        <asp:Button ID="btnStopVoice" runat="server" Text="Close Ticket" CssClass="btn btn-danger" OnClick="btnStopVoice_Click" />
                                                    </td>
                                                </tr>
                                            </table>

                                        </td>
                                        <td>&nbsp;</td>
                                        <td class="text-right">&nbsp;</td>
                                    </tr>
                                </table>


                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" id="btnAdd" style="display: none;">Add</button>

                                <asp:Button ID="btnClose" runat="server" CssClass="btn btn-warning" data-dismiss="modal" OnClick="btnClose_Click" Text="Cancel" />

                            </div>

                            <%-- </div>   --%>
                        </asp:Panel>
                    </asp:Panel>
                    <%--</div>--%>
                </ContentTemplate>

            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
