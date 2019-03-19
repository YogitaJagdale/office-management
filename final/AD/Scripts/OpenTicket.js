$(document).ready(function () {

    var b = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&')[0];
    if (b == "id=False") {
        stopRefresh();
        $("#divAssignTosupervisor").show();
        var d = document.getElementById("liFalseCount");
        d.className += " active";
    }
   else if (b == "id=EnableQueue") {
       stopRefresh();
       var d = document.getElementById("liEnableQueueCount");
       d.className += " active";
    }
    else if (b == "id=CurrentAD") {
        stopRefresh();
        var d = document.getElementById("liCurrentADCount");
        d.className += " active";
    }
    else if (b == "id=PIR") {
        stopRefresh();
        var d = document.getElementById("liPIRCount");
        d.className += " active";
    }
    else if (b == "id=Fire") {
        stopRefresh();
        var d = document.getElementById("liFireCount");
        d.className += " active";
    }
    else if (b == "id=Intrusion") {
        stopRefresh();
        var d = document.getElementById("liIntrusionCount");
        d.className += " active";
    }
    else if (b == "id=Blue") {
        stopRefresh();
        var d = document.getElementById("liBlueCount");
        d.className += " active";
    }
    else if (b == "id=TwoWay") {
        stopRefresh();
        var d = document.getElementById("liTwoWayCount");
        d.className += " active";
    }
    else if (b == "id=DGAlerts") {
        stopRefresh();
        var d = document.getElementById("liDGAlertsCount");
        d.className += " active";
    }
    else if (b == "id=VIP") {
        stopRefresh();
        var d = document.getElementById("liVIPCount");
        d.className += " active";
    }
    else
    {
        var d = document.getElementById("liAllCount");
        d.className += " active";
    }

    var ChkPendingArray = new Array();
    var ChkOnHoldArray = new Array();
    var ChkADDOneArray = new Array();
    var cntfalseOnHold = 0;
    var ChkfalseOnHoldArray = new Array();

    $("#btnAssignToSupervisor").on("click", function () {
        $("#divAssignTosupervisor").show();
        fnShowHide1(9);
        fnShowHide2(9);
        fnShowHide3(9);
    });
    
    var i = 0;
    var count = 0;
    var table = $('#dtPendingDataTable').DataTable({
        "paging": false,
        "searching": false,
        "bAutoWidth": false,
        "fnRowCallback": function (nRow, aData, iDisplayIndex, iDisplayIndexFull) {
        
            count = $('#dtPendingDataTable tr').size();
            switch (aData[10]) {
               
                case '1':

                    nRow.childNodes[1].bgColor = '#E53C1A';//Fire Alarm---Red
                    //nRow.childNodes[1].Color = 'White';
                    //nRow.childNodes[1].outerText.color = "#fff"
                    break;
                case '2':
                    nRow.childNodes[1].bgColor = '#FF9900';//Intrusion Alarm---Orange
                    nRow.childNodes[1].Color = 'White';
                    break;
                case '3':
                    nRow.childNodes[1].bgColor = '#b59241';//System Fault--khaki
                    break;
                case '4':
                    nRow.childNodes[1].bgColor = '#FFEBCD';//Zone Fault--BlanchedAlmond

                    break;
                case '5':
                    nRow.childNodes[1].bgColor = '#96F1DA';//System Events
                    break;
                case '6':
                    nRow.childNodes[1].bgColor = '#87cefa';//Arming Disarming
                    break;
                case '7':
                    nRow.childNodes[1].bgColor = '#C994CD';//SuperVision
                    break;
                case '8':
                    nRow.childNodes[1].bgColor = '#DCB0E0';//Power up sequence
                    break;
                case '9':
                    nRow.childNodes[1].bgColor = '#b0c4de';//Zone Not found
                    break;
                case '10':
                    nRow.childNodes[1].bgColor = '#B2CFC2';//Panel Not found
                    break;
                case '11':
                    nRow.childNodes[1].bgColor = '#98FB98';//Message Format Error
                    break;
                case '12':
                    nRow.childNodes[1].bgColor = '#DCFF84';//Perodic Status
                    break;
                case '13':
                    nRow.childNodes[1].bgColor = '#C9EDC7';//Panel Response
                    break;
            }
            if (aData[11] != "")//Active Deterrence happened
            {
                nRow.childNodes[11].bgColor = '#FFFF00';
            }
        }
        ,
        //"columnDefs": [
        //  {
        //      "targets": [20],
        //      "visible": false,
        //      'searchable': false,
        //      'orderable': false,
        //      'className': 'dt-body-center',
        //      'render': function (data, type, full, meta) {
        //          debugger;
        //          //  return '<input type="checkbox" id="chkPending' + (i++) + '" name="checkPendingName" value="' + $('<div/>').text(data).html() + '">';
        //          data = "";
        //          return '<input type="checkbox" id="chkPending' + (i++) + '" name="checkPendingName" value="">';
        //      }
        //  }

        //],
 //       "columnDefs": [
 //{ 'visible': false, "targets": [8] }
 //      ]
        //   ,
        "columnDefs": [
            {
                "targets": [ 9],
                "visible": false,
                "searchable": false
            },
               {
                   "targets": [10],
                   "visible": false,
                   "searchable": false
               },
                  {
                      "targets": [11],
                      "visible": false,
                      "searchable": false
                  }
        ],
        'order': [1, 'asc']
    });
    //  $('input:checkbox[name=checkPendingName]').parent().css("Display", "none");



  
    var j = 0;
    var table1 = $('#dtOnHoldDataTable').DataTable({
        "paging": false,
        "searching": false,
        "bAutoWidth": false,
        "fnRowCallback": function (nRow, aData, iDisplayIndex, iDisplayIndexFull) {
            count = $('#dtOnHoldDataTable tr').size();
            switch (aData[10]) {
                case '1':
                    nRow.childNodes[1].bgColor = '#E53C1A';//Fire Alarm---Red
                    //nRow.childNodes[1].Color = 'White';
                    break;
                case '2':
                    nRow.childNodes[1].bgColor = '#FF9900';//Intrusion Alarm---Orange
                  //  nRow.childNodes[1].Color = 'White';
                    break;
                case '3':
                    nRow.childNodes[1].bgColor = '#b59241';//System Fault--khaki
                    break;
                case '4':
                    nRow.childNodes[1].bgColor = '#FFEBCD';//Zone Fault--BlanchedAlmond

                    break;
                case '5':
                    nRow.childNodes[1].bgColor = '#96F1DA';//System Events
                    break;
                case '6':
                    nRow.childNodes[1].bgColor = '#87cefa';//Arming Disarming
                    break;
                case '7':
                    nRow.childNodes[1].bgColor = '#C994CD';//SuperVision
                    break;
                case '8':
                    nRow.childNodes[1].bgColor = '#DCB0E0';//Power up sequence
                    break;
                case '9':
                    nRow.childNodes[1].bgColor = '#b0c4de';//Zone Not found
                    break;
                case '10':
                    nRow.childNodes[1].bgColor = '#B2CFC2';//Panel Not found
                    break;
                case '11':
                    nRow.childNodes[1].bgColor = '#98FB98';//Message Format Error
                    break;
                case '12':
                    nRow.childNodes[1].bgColor = '#DCFF84';//Perodic Status
                    break;
                case '13':
                    nRow.childNodes[1].bgColor = '#C9EDC7';//Panel Response
                    break;
            }
            if (aData[12] != "")//Active Deterrence happened
            {
                nRow.childNodes[11].bgColor = '#FFFF00';
            }
        },
        "columnDefs": [
                   {
                       "targets": [9],
                       "visible": false,
                       "searchable": false
                   },
                      {
                          "targets": [10],
                          "visible": false,
                          "searchable": false
                      },
                         {
                             "targets": [11],
                             "visible": false,
                             "searchable": false
                         }
        ],
        'order': [1, 'asc']
    });

    var table5 = $('#dtCurrentADDataTable').DataTable({
        "lengthMenu": [[10, 20, 50, -1], [10, 20, 50, "All"]],
        "pageLength": 10,
        "fnRowCallback": function (nRow, aData, iDisplayIndex, iDisplayIndexFull) {
            count = $('#dtOnHoldDataTable tr').size();
          
            switch (aData[11]) {
                case '1':
                    nRow.childNodes[1].bgColor = '#E53C1A';//Fire Alarm---Red
                    //nRow.childNodes[1].Color = 'White';
                    break;
                case '2':
                    nRow.childNodes[1].bgColor = '#FF9900';//Intrusion Alarm---Orange
                    //  nRow.childNodes[1].Color = 'White';
                    break;
                case '3':
                    nRow.childNodes[1].bgColor = '#b59241';//System Fault--khaki
                    break;
                case '4':
                    nRow.childNodes[1].bgColor = '#FFEBCD';//Zone Fault--BlanchedAlmond

                    break;
                case '5':
                    nRow.childNodes[1].bgColor = '#96F1DA';//System Events
                    break;
                case '6':
                    nRow.childNodes[1].bgColor = '#87cefa';//Arming Disarming
                    break;
                case '7':
                    nRow.childNodes[1].bgColor = '#C994CD';//SuperVision
                    break;
                case '8':
                    nRow.childNodes[1].bgColor = '#DCB0E0';//Power up sequence
                    break;
                case '9':
                    nRow.childNodes[1].bgColor = '#b0c4de';//Zone Not found
                    break;
                case '10':
                    nRow.childNodes[1].bgColor = '#B2CFC2';//Panel Not found
                    break;
                case '11':
                    nRow.childNodes[1].bgColor = '#98FB98';//Message Format Error
                    break;
                case '12':
                    nRow.childNodes[1].bgColor = '#DCFF84';//Perodic Status
                    break;
                case '13':
                    nRow.childNodes[1].bgColor = '#C9EDC7';//Panel Response
                    break;
            }
            if (aData[11] != "")//Active Deterrence happened
            {
                nRow.childNodes[10].bgColor = '#FFFF00';
            }
            if (nRow.childNodes[39].children[0].value != "") {
                var count = 0;
                count = nRow.childNodes[39].children[0].value;
                
                if (count > 10) {
                    nRow.childNodes[11].bgColor = '#FA5858';
                  
                }
                else {
                    nRow.childNodes[11].bgColor = '#58ACFA';
                  
                }
            }
           
        },
        'order': [1, 'asc']
    });

    var k = 0;
    var table2 = $('#dtADDOneDataTable').DataTable({
        "paging": false,
        "searching": false,
        "bAutoWidth": false,
        "fnRowCallback": function (nRow, aData, iDisplayIndex, iDisplayIndexFull) {
            count = $('#dtADDOneDataTable tr').size();
            switch (aData[10]) {
                case '1':
                    nRow.childNodes[1].bgColor = '#E53C1A';//Fire Alarm---Red
                    //nRow.childNodes[1].Color = 'White';
                    break;
                case '2':
                    nRow.childNodes[1].bgColor = '#FF9900';//Intrusion Alarm---Orange
                    //  nRow.childNodes[1].Color = 'White';
                    break;
                case '3':
                    nRow.childNodes[1].bgColor = '#b59241';//System Fault--khaki
                    break;
                case '4':
                    nRow.childNodes[1].bgColor = '#FFEBCD';//Zone Fault--BlanchedAlmond

                    break;
                case '5':
                    nRow.childNodes[1].bgColor = '#96F1DA';//System Events
                    break;
                case '6':
                    nRow.childNodes[1].bgColor = '#87cefa';//Arming Disarming
                    break;
                case '7':
                    nRow.childNodes[1].bgColor = '#C994CD';//SuperVision
                    break;
                case '8':
                    nRow.childNodes[1].bgColor = '#DCB0E0';//Power up sequence
                    break;
                case '9':
                    nRow.childNodes[1].bgColor = '#b0c4de';//Zone Not found
                    break;
                case '10':
                    nRow.childNodes[1].bgColor = '#B2CFC2';//Panel Not found
                    break;
                case '11':
                    nRow.childNodes[1].bgColor = '#98FB98';//Message Format Error
                    break;
                case '12':
                    nRow.childNodes[1].bgColor = '#DCFF84';//Perodic Status
                    break;
                case '13':
                    nRow.childNodes[1].bgColor = '#C9EDC7';//Panel Response
                    break;
            }
            if (aData[12] != "")//Active Deterrence happened
            {
                nRow.childNodes[11].bgColor = '#FFFF00';
            }


        },
        "columnDefs": [
               {
                   "targets": [9],
                   "visible": false,
                   "searchable": false
               },
                  {
                      "targets": [10],
                      "visible": false,
                      "searchable": false
                  },
                     {
                         "targets": [11],
                         "visible": false,
                         "searchable": false
                     }
        ],
        'order': [1, 'asc']
    });

    var cntPending = 0;
    var cntOnHold = 0;
    var cntADDOne = 0;



    $('#dtPendingDataTable tbody').on('change', 'input[type="checkbox"]', function () {
        //debugger;
        ChkPendingArray[cntPending] = $(this).parent().parent().children().first().text().trim();
        cntPending++;
        if (!this.checked) {
            var delPendingchk = $(this).parent().parent().children().first().text().trim();
            ChkPendingArray = jQuery.grep(ChkPendingArray, function (value) {
                return value != delPendingchk;
            });
            var el = $('#chkPendingDataTableSelectAll').get(0);
            if (el && el.checked && ('indeterminate' in el)) {
                el.indeterminate = true;
            }
        }
    });

    $('#dtOnHoldDataTable tbody').on('change', 'input[type="checkbox"]', function () {
        ChkOnHoldArray[cntOnHold] = $(this).parent().parent().children().first().text().trim();
        cntOnHold++;
        if (!this.checked) {
            var delOnHoldchk = $(this).parent().parent().children().first().text().trim();
            ChkOnHoldArray = jQuery.grep(ChkOnHoldArray, function (value) {
                return value != delOnHoldchk;
            });
            var el = $('#chkOnHoldDataTableSelectAll').get(0);
            if (el && el.checked && ('indeterminate' in el)) {
                el.indeterminate = true;
            }
        }
    });

    $('#dtADDOneDataTable tbody').on('change', 'input[type="checkbox"]', function () {
        ChkADDOneArray[cntADDOne] = $(this).parent().parent().children().first().text().trim();
        cntADDOne++;
        if (!this.checked) {
            var delADDOnechk = $(this).parent().parent().children().first().text().trim();
            ChkADDOneArray = jQuery.grep(ChkADDOneArray, function (value) {
                return value != delADDOnechk;
            });

            var el = $('#chkADDOneDataTableSelectAll').get(0);
            if (el && el.checked && ('indeterminate' in el)) {
                el.indeterminate = true;
            }
        }
    });

    $('#dtfalseOnHold tbody').on('change', 'input[type="checkbox"]', function () {
        debugger;
        ChkfalseOnHoldArray[cntfalseOnHold] = $(this).parent().parent().children().first().text().trim();
        cntfalseOnHold++;
        if (!this.checked) {
            var delADDOnechk = $(this).parent().parent().children().first().text().trim();
            ChkfalseOnHoldArray = jQuery.grep(ChkfalseOnHoldArray, function (value) {
                return value != delADDOnechk;
            });

            var el = $('#chkfalseOnHoldSelectAll').get(0);
            if (el && el.checked && ('indeterminate' in el)) {
                el.indeterminate = true;
            }
        }
    });

    function fnShowHide1(iCol) {
        debugger;
        var oTable = $('#dtPendingDataTable').dataTable();
        var bVis = oTable.fnSettings().aoColumns[iCol].bVisible;
        if (bVis == false) {
            oTable.fnSetColumnVis(iCol, bVis ? false : true);
            $("#dtPendingDataTable th").each(function () {
                debugger;
                if ($.trim($(this).text().toString().toLowerCase()) === "{chkpendingdatatableselectall}") {
                    $(this).text('');
                    $("<input/>", { type: "checkbox", id: "chkPendingDataTableSelectAll", value: "" }).appendTo($(this));
                    $(this).append("<span>Select All</span>");
                }
            });

            $('#chkPendingDataTableSelectAll').on('change', function () {
                var cnt = 0;
                var chk = $(this).prop('checked');
                var currentRows = $('#dtPendingDataTable tbody tr');
                $.each(currentRows, function () {
                    $(this).find(':checkbox[name=checkPendingName]').each(function () {
                        ChkPendingArray[cnt] = $(this).parent().parent().children().first().text().trim();
                        cnt++;
                        $(this).prop('checked', chk);
                    });
                });
            });
        }
    }

    function fnShowHide2(iCol) {
        debugger;
        var oTable = $('#dtOnHoldDataTable').dataTable();
        var bVis = oTable.fnSettings().aoColumns[iCol].bVisible;
        if (bVis == false) {
            oTable.fnSetColumnVis(iCol, bVis ? false : true);
            $("#dtOnHoldDataTable th").each(function () {
                debugger;
                if ($.trim($(this).text().toString().toLowerCase()) === "{chkonholddatatableselectall}") {
                    $(this).text('');
                    $("<input/>", { type: "checkbox", id: "chkOnHoldDataTableSelectAll", value: "" }).appendTo($(this));
                    $(this).append("<span>Select All</span>");
                }
            });
            $('#chkOnHoldDataTableSelectAll').on('change', function () {
                var cnt = 0;
                var chk = $(this).prop('checked');
                var currentRows = $('#dtOnHoldDataTable tbody tr');
                $.each(currentRows, function () {
                    $(this).find(':checkbox[name=checkOnHoldName]').each(function () {
                        ChkOnHoldArray[cnt] = $(this).parent().parent().children().first().text().trim();
                        cnt++;
                        $(this).prop('checked', chk);
                    });
                });
            });
        }
    }

    function fnShowHide3(iCol) {
        var oTable = $('#dtADDOneDataTable').dataTable();
        var bVis = oTable.fnSettings().aoColumns[iCol].bVisible;
        if (bVis == false) {
            oTable.fnSetColumnVis(iCol, bVis ? false : true);
            $("#dtADDOneDataTable th").each(function () {
                debugger;
                if ($.trim($(this).text().toString().toLowerCase()) === "{chkaddonedatatableselectall}") {
                    $(this).text('');
                    $("<input/>", { type: "checkbox", id: "chkADDOneDataTableSelectAll", value: "" }).appendTo($(this));
                    $(this).append("<span>Select All</span>");
                }
            });
            $('#chkADDOneDataTableSelectAll').on('change', function () {
                var cnt = 0;
                var chk = $(this).prop('checked');
                var currentRows = $('#dtADDOneDataTable tbody tr');
                $.each(currentRows, function () {
                    $(this).find(':checkbox[name=checkADDOneName]').each(function () {
                        ChkADDOneArray[cnt] = $(this).parent().parent().children().first().text().trim();
                        cnt++;
                        $(this).prop('checked', chk);
                    });
                });
            });
        }
    }

    function fnShowHide4(iCol) {
        debugger;
        var oTable = $('#dtfalseOnHold').dataTable();
        var bVis = oTable.fnSettings().aoColumns[iCol].bVisible;
        if (bVis == false) {
            oTable.fnSetColumnVis(iCol, bVis ? false : true);
            $('#chkfalseOnHoldSelectAll').on('change', function () {
                var cnt = 0;
                var chk = $(this).prop('checked');
                var currentRows = $('#dtfalseOnHold tbody tr');
                $.each(currentRows, function () {
                    $(this).find(':checkbox[name=chkFalseOnholdName]').each(function () {
                        ChkfalseOnHoldArray[cntfalseOnHold] = $(this).parent().parent().children().first().text().trim();
                        cntfalseOnHold++;
                        $(this).prop('checked', chk);
                    });
                });
            });
        }
    }

    $("#btnCloseAllTickets").on("click", function () {
        var status = true;
        if (status == true) {
            $("form").attr('action', 'CloseAllTickets')
            $("form")[0].submit();
        }
    });

    $("#imgbtnAssign").on("click", function () {
        debugger;
        var status = true;
        if ($('#SupervisorLoginId').val() == '' || $('#SupervisorLoginId').val() == "---Select---") {
            alert("Please select Supervisor");
            status = false;
        }
        if (ChkPendingArray.length == 0 && ChkOnHoldArray.length == 0 && ChkADDOneArray.length == 0 && ChkfalseOnHoldArray.length == 0) {
            status = false;
            alert("Please select at least one ticket..!!");
        }
        if (status == true) {
            var supervisorID = $('#SupervisorLoginId').val(); // get current dropdown element selected value
            var TicketType = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');;
            $.ajax({
                type: "POST",
                traditional: true,
                url: "AssignToSuperVisor",
                data: { PendingArray: ChkPendingArray, OnHoldArray: ChkOnHoldArray, ADDOneArray: ChkADDOneArray, falseOnHoldArray: ChkfalseOnHoldArray, supervisorID: supervisorID, ticketType: TicketType },
                success: function (data) {
                    location.reload();
                    alert("Ticket assign succesfully...!!!");
                },
            });

        } else {

        }
    });

    $("#btnReAssignTicket").on("click", function () {
        $("form").attr('action', 'CallReassignTicket')
        $("form")[0].submit();
    });


    $("#btnsearchHold").on("click", function () {
        var TicketType = getQueryStringValue("id");
        if (TicketType == undefined || TicketType == "") {
            TicketType = "All"
        }
        $("form").attr('action', 'Ticketing?id=' + TicketType + '&para=' + $('#txtsearchHold').val() + '&gridType=Hold')
        $("form")[0].submit();

    });
    $("#btnsearchPending").on("click", function () {
        var TicketType = getQueryStringValue("id");

            if (TicketType == undefined || TicketType == "") {
            TicketType = "All"
        }
        $("form").attr('action', 'Ticketing?id=' + TicketType + '&para=' + $('#txtsearchPending').val() + '&gridType=Pending')
        $("form")[0].submit();

    });
    $("#btnsearchAddone").on("click", function () {
        var TicketType = getQueryStringValue("id");
    
        if (TicketType == undefined || TicketType == "") {
            TicketType = "All"
        }
        $("form").attr('action', 'Ticketing?id=' + TicketType + '&para=' + $('#txtsearchAddone').val() + '&gridType=Addone')
        $("form")[0].submit();

    });

    $("#btnEnableMultiSelection").on("click", function () {

        if ($('#btnEnableMultiSelection').attr("value") != 'Enable Multi Selection') {
            location.reload();
            $('#btnEnableMultiSelection').attr("value", 'Enable Multi Selection');
        }
        else {
            $("#divEnableMultiSelection").show();
            fnShowHide1(20);
            fnShowHide2(20);
            $('#btnEnableMultiSelection').attr("value", 'Disable Multi Selection');
        }
    });

    $("#btnmultiClose").on("click", function () {
        $('#Temp').show();
        $('#Temp1').show();
    });

    $("#btnmultiOk").on("click", function () {
        $('#Temp').hide();
        $('#Temp1').hide();
        var comment = $('#Description').val();
        $.ajax({
            type: "POST",
            traditional: true,
            url: "CloseSelectedTickets",
            data: { pendingArray: ChkPendingArray, onHoldArray: ChkOnHoldArray, userComment: comment }
        });
    });

    $("#btnmultiCloseCancel").on("click", function () {
        $('#Temp').hide();
        $('#Temp1').hide();
    });

    var text = "";
    $("#ddlCloseTicketsComment").change(function () {
        if (text == "") {
            text = $(this).val();
        }
        else {
            text = text + '\n' + $(this).val();
        }
        $("textarea[name=Description]").val(text);
    });

    function ShowAssignDiv() {
        $("#divAssignTosupervisor").show();
    }

    $("#btnSendADRequest").on("click", function () {
        visiblefalse();
        $.ajax({
            url: "SendADRequest",
            data: {},
            cache: false,
            type: "POST",
            success: function (data) {
                if (data.Success) {
                    $('#lblPControlErrorADRequest').html(data.Text);
                    $('#lblADRequest').html(data.REQID);
                }
            },

        });

        BlinkBox();
    });

    function BlinkBox() {
        if ($('#lblADRequest').html() != "") {
            var MID = $('#lblADRequest').text();
            $.ajax({
                url: "ProcessRequest",
                data: {},
                cache: false,
                type: "POST",
                data: { MID1: MID },
                success: function (data) {
                    if (data.Success) {
                        $('#lblPControlErrorADRequest').html(data.ResultRes);
                        $('#lblADRequest').html("");
                    }
                },
            });
        }
    }

    function visiblefalse() {
        $('#btnSendADRequest').attr('disabled', true);
        setTimeout(function () {
            $('#btnSendADRequest').attr('disabled', false);
            BlinkBox();
        }, 10000);
    }

    $("#dtEnableQueueOnHold").rowSorter({
        handler: null,
        tbody: true,
        tableClass: 'sorting-table',
        dragClass: 'sorting-row',
        stickTopRows: 0,
        stickBottomRows: 0,
        onDragStart: null,
        onDrop: function (tbody, row, new_index, old_index) {
            saveRowsPosition();
        }
    });

    $("#dtEnableQueueOnHold").rowSorter({
        handler: "td.sorter"
    });

    var z = 0;
    var b = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');;
    if (b == "id=False") {
        var table4 = $('#dtfalseOnHold').dataTable({
            "bLengthChange": false,
            "bPaginate": true,
            "bJQueryUI": true,
            "lengthMenu": [[10, 20, 50, -1], [10, 20, 50, "All"]],
            "pageLength": 30,
            "fnRowCallback": function (nRow, aData, iDisplayIndex, iDisplayIndexFull) {
                debugger;
                count = $('#dtfalseOnHold tr').size();
                switch (aData[9]) {
                    case '1':
                        nRow.childNodes[1].bgColor = '#E53C1A';//Fire Alarm---Red
                        //nRow.childNodes[1].Color = 'White';
                        break;
                    case '2':
                        nRow.childNodes[1].bgColor = '#FF9900';//Intrusion Alarm---Orange
                        //  nRow.childNodes[1].Color = 'White';
                        break;
                    case '3':
                        nRow.childNodes[1].bgColor = '#b59241';//System Fault--khaki
                        break;
                    case '4':
                        nRow.childNodes[1].bgColor = '#FFEBCD';//Zone Fault--BlanchedAlmond

                        break;
                    case '5':
                        nRow.childNodes[1].bgColor = '#96F1DA';//System Events
                        break;
                    case '6':
                        nRow.childNodes[1].bgColor = '#87cefa';//Arming Disarming
                        break;
                    case '7':
                        nRow.childNodes[1].bgColor = '#C994CD';//SuperVision
                        break;
                    case '8':
                        nRow.childNodes[1].bgColor = '#DCB0E0';//Power up sequence
                        break;
                    case '9':
                        nRow.childNodes[1].bgColor = '#b0c4de';//Zone Not found
                        break;
                    case '10':
                        nRow.childNodes[1].bgColor = '#B2CFC2';//Panel Not found
                        break;
                    case '11':
                        nRow.childNodes[1].bgColor = '#98FB98';//Message Format Error
                        break;
                    case '12':
                        nRow.childNodes[1].bgColor = '#DCFF84';//Perodic Status
                        break;
                    case '13':
                        nRow.childNodes[1].bgColor = '#C9EDC7';//Panel Response
                        break;
                }
                if (aData[12] != "")//Active Deterrence happened
                {
                    nRow.childNodes[11].bgColor = '#FFFF00';
                }
            },
            "columnDefs": [
                {
                    "targets": [11],
                    "visible": false,
                    'searchable': false,
                    'orderable': false,
                    'className': 'dt-body-center',
                    'render': function (data, type, full, meta) {
                        return '<input type="checkbox" id="chkFalseOnhold' + (z++) + '" name="chkFalseOnholdName" value="' + $('<div/>').text(data).html() + '">';
                    }
                }


            ],
        }).rowGrouping({
            bExpandableGrouping: true,
            iGroupingColumnIndex: 8,
            bExpandSingleGroup: false,
            iExpandGroupOffset: -1,
            asExpandedGroups: [""]

        });
        fnShowHide4(11);
        GridRowCount();
    }




});

var refresher = setInterval(checknewtick, 6000);




function stopRefresh() {
    if ($('#btnStartStopAutoRefersh').attr("value") != 'Start Auto Refresh') {
        clearInterval(refresher);
        $('#btnStartStopAutoRefersh').attr("value", 'Start Auto Refresh');
    }
    else {
        refresher = setInterval(checknewtick, 6000);
        $('#btnStartStopAutoRefersh').attr("value", 'Stop Auto Refresh');
    }
}

function checknewtick() {//check for new ticket and if there is then refresh page
    var result = '';
    var pendincnt = document.getElementById('hdnPendingcnt').value;
    var hldincnt = document.getElementById('hdnHoldcnt').value;

    var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', 'Sounds/beep-4.mp3');
    //audioElement.setAttribute('autoplay', 'autoplay');
    //debugger;
    $.ajax({
        url: "NewTicketRequest",
        data: { pendingCount: pendincnt, holdCount: hldincnt },
        cache: false,
        type: "POST",
        success: function (data) {

            result = data.Result
            if (result != "00") {
                location.reload();
                audioElement.play();

            }
        },
    });
}

function saveRowsPosition() {
    //debugger;h
    var positions = new Array();
    var data = new Array();
    var j = 0;
    var rows = $('#dtEnableQueueOnHold tbody >tr');
    var columns;
    for (var i = 0; i < rows.length; i++) {
        columns = $(rows[i]).find('td');
        positions.push($(columns).children().first().val());
    }
    positions.sort(function (a, b) { return a - b })
    var rows1 = $('#dtEnableQueueOnHold tbody >tr');
    var columns1;
    for (var i = 0; i < rows1.length; i++) {
        columns1 = $(rows1[i]).find('td');
        //  var item = $(columns1).children().eq(1).text() + '*' + positions[j];d
        var item = $(columns1)[1].outerText + '*' + positions[j];

        $(columns1).children().first().val(positions[j]);
        data.push(item);
        j++;
    }

    $.ajax({
        type: "POST",
        traditional: true,
        url: "SaveRowsPosition",
        data: { data: data.join(',') }
    });
}

function GridRowCount() {
    $('span.rowCount-grid').remove();
    $('input.expandedOrCollapsedGroup').remove();

    $('.dataTables_wrapper').find('[id|=group-id]').each(function () {
        var rowCount = $(this).nextUntil('[id|=group-id]').length;
        $(this).find('td').append($('<span />', { 'class': 'rowCount-grid' }).append($('<b />', { 'text': rowCount })));
    });

    $('.dataTables_wrapper').find('.dataTables_filter').append($('<input />', { 'type': 'button', 'class': 'expandedOrCollapsedGroup collapsed', 'value': 'Expanded All Group' }));

    //$('.expandedOrCollapsedGroup').live('click', function () {
    $('.expandedOrCollapsedGroup').on('click', null, function () {
        if ($(this).hasClass('collapsed')) {
            $(this).addClass('expanded').removeClass('collapsed').val('Collapse All Group').parents('.dataTables_wrapper').find('.collapsed-group').trigger('click');
        }
        else {
            $(this).addClass('collapsed').removeClass('expanded').val('Expanded All Group').parents('.dataTables_wrapper').find('.expanded-group').trigger('click');
        }
    });
};

function getQueryStringValue(key) {
    return decodeURIComponent(window.location.search.replace(new RegExp("^(?:.*[&\\?]" + encodeURIComponent(key).replace(/[\.\+\*]/g, "\\$&") + "(?:\\=([^&]*))?)?.*$", "i"), "$1"));
}


