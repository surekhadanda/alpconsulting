<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultHome.aspx.cs" Inherits="Assessment.DefaultHome" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <!-- Page title -->
    <title>bsPaymentGateway</title>
    <!-- End of Page title -->
    <!-- Libraries -->
    
    <link type="text/css" href="css/layout1.css" rel="stylesheet" />
    
    <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="js/easyTooltip.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.7.2.custom.min.js"></script>
    <script type="text/javascript" src="js/jquery.wysiwyg.js"></script>
    <script type="text/javascript" src="js/hoverIntent.js"></script>
    <script type="text/javascript" src="js/superfish.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>
    <script type="text/javascript">
        function callResize() {
            var height = document.body.scrollHeight;
            parent.resizeIframe(height);
        }
        window.onload = callResize;
    </script>
    <script type="text/javascript">
        function display(url) {
            window.parent.document.getElementById('childframe').src = url;
        }
    </script>
    
    <style type="text/css">
        .style1
        {
            width: 150px;
        }
        .style2
        {
            width: 320px;
        }
    </style>
    <style type="text/css">
        .ontop
        {
            z-index: 999;
            width: 90%;
            height: 800%;
            top: 0;
            left: 0;
            display: none;
            position: absolute;
            background-color: #cccccc;
            color: #aaaaaa;
            opacity: 1.0;
            filter: alpha(opacity = 100);
        }
        #popup
        {
            width: 900px;
            height: 1000px;
            position: absolute; /* To align popup window at the center of screen*/
            top: 22%;
            left: 25%;
            margin-top: -100px;
            margin-left: -150px;
        }
    </style>
    <script type="text/javascript">
        function pop(div) {
            document.getElementById(div).style.display = 'block';
        }
        function hide(div) {
            document.getElementById(div).style.display = 'none';
        }
        //To detect escape button
        document.onkeydown = function (evt) {
            evt = evt || window.event;
            if (evt.keyCode == 27) {
                hide('popDiv');
            }
        };
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
          
    <div id="main1" runat="server">
        <h1 id="h1" runat="server">
            <asp:Literal runat="server" Text="welcome"></asp:Literal>,
            <asp:Label ID="lblUser" runat="server"></asp:Label>!</h1>
        <div class="pad20">
            <!-- Big buttons -->
          
            
            <ul class="dash">
                
                <li><a href="#" onclick="display('Items.aspx')" title="Items" class="tooltip">
                    <img src="assets/icons/user.png" alt="" />
                    <span>
                        <asp:Literal ID="Literal3" runat="server" Text="User Account"></asp:Literal></span>
                </a></li>
                </ul>
                <%} %>
    </div>
        </div>
    <%--<hr />--%>
    </form>
</body>
</html>
