<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanelMessageTracker.aspx.cs" Inherits="SECU_CAMSPlus_DEV.Views.PanelMessageTracker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="Content/style.css" rel="stylesheet" />


<script src="Scripts/jquery-1.9.1.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="col-md-12">
        <asp:Panel ID="Panel1" runat="server" ScrollBars="Horizontal" Width="100%">
        <asp:GridView CssClass="table table-striped table-bordered table-hover" ID="gvPanelEvents" runat="server" 
        EmptyDataText="Waiting for events..." 
     CellPadding="0" 
    GridLines="Vertical" Width="100%">
            <AlternatingRowStyle />
            <FooterStyle />
            <HeaderStyle BackColor="#cccccc"/>
            <PagerStyle/>
            <SelectedRowStyle />
            <SortedAscendingCellStyle />
            <SortedAscendingHeaderStyle />
            <SortedDescendingCellStyle />
            <SortedDescendingHeaderStyle />
        </asp:GridView>
    </asp:Panel>
            </div>
    </form>
</body>
</html>
