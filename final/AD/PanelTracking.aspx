<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanelTracking.aspx.cs" Inherits="SECU_CAMSPlus_DEV.Views.PanelTracking" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="Content/style.css" rel="stylesheet" />


<script src="Scripts/jquery-1.9.1.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript">
    function printIt(printThis) {
        win = window.open();
        self.focus();
        win.document.open();
        win.document.write('<' + 'html' + '><' + 'head' + '><' + 'style' + '>');
        win.document.write('body, td { font-family: Verdana; font-size: 10pt;}');
        win.document.write('<' + '/' + 'style' + '><' + '/' + 'head' + '><' + 'body' + '>');
        win.document.write(printThis);
        win.document.write('<' + '/' + 'body' + '><' + '/' + 'html' + '>');
        win.document.close();
        win.print();
        win.close();
    }

    var load;
    var response;
    var TrackingrefreshInterval;
    var StopTrackingtimeOut;
    function trackPanel() {

        //alert("He hee");
        if ($('#btnStartTacking').attr("value") == 'Start Tracking') {
            debugger;

            response = "start";
            $('#divwarning').hide();
            $('#divwarning').html('');
            $('#lblrequestmiderror').html("");
            $('#lblrequestmid').load("PanelMessageTracker.aspx?do=start" + "&c=" + cboClient.value + "&p=" + $("#cboPanelId option:selected").text());
            setTimeout(function () {

                BlinkBox();


            }, 5000);



            $('#btnStartTacking').attr("value", 'Stop Tracking');
        }
        else {
            response = "stop";

            // $('#lblrequestmiderror').hide();
            $('#lblrequestmiderror').html("");
            $('#lblrequestmid').load("PanelMessageTracker.aspx?do=stop" + "&c=" + cboClient.value + "&p=" + $("#cboPanelId option:selected").text());
            setTimeout(function () {

                BlinkBox();

            }, 5000);
            stopTrackPanel();

            $('#divwarning').html('Panel Tracking stopped');
            $('#btnStartTacking').attr("value", 'Start Tracking');

        }



    }


    function loadEvent() {
        debugger;
        var c, p;
        if (cboClient.value != "0" && cboPanelId.value != "---Select---") {
            c = cboClient.value;//client id
            p = $("#cboPanelId option:selected").text();//panel id
        }
        else {
            alert('No selected item.');
        }




        $('#tdEvents').load("PanelMessageTracker.aspx?do=p" + "&c=" + c + "&p=" + p); //'do=p'-to get panel's events 
        $('#tdSensors').load("PanelMessageTracker.aspx?do=s" + "&c=" + c + "&p=" + p); //'do=s'-to get all sensor stauts
    }

    function stopTrackPanel() {

        clearInterval(load); //stop calling loadevent every __ seconds
    }
    function stopAutoTrackPanel() {

        console.log(StopTrackingtimeOut + 'cleared');
        clearInterval(StopTrackingtimeOut); //stop calling loadevent every __ seconds
    }
    function BlinkBox() {
        debugger;
        if ($('#lblrequestmid').html() != "") {

            $.ajax({
                url: "serviceresponse.ashx?MID=" + $('#lblrequestmid').text(),
                data: {  },
                cache: false,
                type: "POST",
                success: function (data) {
                    debugger;
                    console.log(data);
                    $('#lblrequestmiderror').html(data);
                    checkAck();
                   // $('#lblPageaccess').val('' + data[0]["PageAccess"] + '');
                },
                error: function (reponse) {
                    alert("error : " + reponse);
                }
            });
           // $('#lblrequestmiderror').load("serviceresponse.ashx?MID=" + $('#lblrequestmid').text() );
            $('#lblrequestmid').html("");
         
            // $('#lblrequestmiderror').show();
        }
    }


    function checkAck() {
        debugger;
         TrackingrefreshInterval = $("#lblTrackingrefreshInterval").html();


        console.log(TrackingrefreshInterval);
         StopTrackingtimeOut = $("#lblStopTrackingtimeOut").html();
        console.log(StopTrackingtimeOut);

        if (response == "start" && $('#lblrequestmiderror').html() == "Succeeded") {
            if (StopTrackingtimeOut != "0") {
                $('#divwarning').show();

                $('#divwarning').html('Panel tracking will automatically stop after ' + StopTrackingtimeOut / 60000 + ' min');
            }
            load = self.setInterval("loadEvent()", TrackingrefreshInterval); //call loadevent every __ seconds
            $('#btnStartTacking').attr("value", 'Stop Tracking');


            if (StopTrackingtimeOut != "0") {

                console.log('no response');
                return setTimeout(function () {
                    debugger;
                    if (response == "start") {
                        $('#lblrequestmiderror').html("");
                        $('#lblrequestmid').load("PanelMessageTracker.aspx?do=stop" + "&c=" + cboClient.value + "&p=" + $("#cboPanelId option:selected").text());
                        setTimeout(function () {

                            BlinkBox();

                        }, 5000);
                        stopTrackPanel();
                        response = "stop";
                        $('#divwarning').html('Panel tracking automatically stoped.');
                        $('#btnStartTacking').attr("value", 'Start Tracking');
                    }
                }, StopTrackingtimeOut);
            }
        }

    }

    function Checkwait() {
        setTimeout(function () {
            checkAck()
        }, 5000);
    }
</script>

<body>


    <form id="form1" runat="server">
        <div class="col-lg-12 animated fadeIn margin-top">
            <div class="panel panel-yellow">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <h2>
                                <asp:Label ID="lblHeading" runat="server"
                                    Text="Panel Message Tracking" CssClass="subheading"></asp:Label></h2>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="panel-body">
                    <div class="alert alert-warning" id="divwarning" style="display: none">
                        <%--                        <asp:Label ID="Label6" runat="server"
                            Text="Note: Panel Tracking will start after 30 seconds."></asp:Label>--%>
                    </div>
                    <div class="form-inline">
                        <div class="form-group">
                            <strong>
                                <asp:Label ID="Label4" runat="server" Text="Select Client *"></asp:Label></strong>
                            <asp:DropDownList class="form-control" ID="cboClient" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cboClient_SelectedIndexChanged">
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <strong>
                                <asp:Label ID="Label5" runat="server" ClientIDMode="Static"
                                    Text="Select Panel ID *"></asp:Label></strong>
                            <asp:DropDownList class="form-control" ID="cboPanelId" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cboPanelId_SelectedIndexChanged">
                                <asp:ListItem Text="---Select---" Value="0" />

                            </asp:DropDownList>
                        </div>
                        <asp:Button CssClass="btn btn-success" ID="btnStartTacking" runat="server" Text="Start Tracking"
                            ClientIDMode="Static" UseSubmitBehavior="False"
                            OnClientClick="trackPanel(); return false;" Enabled="False" />
                        <asp:Button CssClass="btn btn-info" ID="btnPrint" runat="server" Text="Print"
                            ClientIDMode="Static" UseSubmitBehavior="False"
                            OnClientClick="printIt(document.getElementById('tablePMS').innerHTML); return false;" Enabled="False" />
                    </div>
                    <div id="lblrequestmid"></div>
                    <div id="lblrequestmiderror"></div>

                    <div id="divfail" class="alert alert-danger" style="display: none"></div>
                    <div>
                        <asp:ToolkitScriptManager runat="server" ID="ToolkitScriptManager1"
                            CombineScripts="True">
                        </asp:ToolkitScriptManager>
                    </div>

                    <div id="tablePMS">
                        <strong>
                            <asp:Label ID="lblPanelLocation" runat="server"></asp:Label></strong>
                        <br />
                        <strong>Sensor Status :</strong> <span id="tdSensors"></span>
                        <br />
                        <strong>Panel Events :</strong> <span id="tdEvents"></span>
                    </div>

                    <asp:Label ID="lblAccessString" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblStopTrackingtimeOut" runat="server" ClientIDMode="Static" Style="display: none"></asp:Label>
                    <asp:Label ID="lblTrackingrefreshInterval" runat="server" ClientIDMode="Static" Style="display: none"></asp:Label>
                    <div id="divmsg"></div>

                </div>
            </div>
        </div>


    </form>
</body>
</html>
