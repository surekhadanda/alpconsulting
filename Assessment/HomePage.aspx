<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Assessment.HomePage" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Meta -->
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <!-- End of Meta -->
    <meta http-equiv="X-UA-Compatible" content="IE=7; IE=8; IE=edge" />
    <%--<link rel="shortcut icon" href="assets/favicon.ico" type="image/x-icon" />--%>
    <!-- Page title -->
    <title>Home</title>
    <!-- End of Page title -->
    <!-- Libraries -->
    <link type="text/css" href="css/layout.css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="js/easyTooltip.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.7.2.custom.min.js"></script>
    <script type="text/javascript" src="js/jquery.wysiwyg.js"></script>
    <script type="text/javascript" src="js/hoverIntent.js"></script>
    <script type="text/javascript" src="js/superfish.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>
    <!-- End of Libraries -->
   
    <script type="text/javascript">
        function ShowCurrentTime() {
            var dt = new Date();
            document.getElementById("lblDate").innerHTML = dt.toLocaleTimeString();
            window.setTimeout("ShowCurrentTime()", 1000); // Here 1000(milliseconds) means one 1 Sec  
        }
    </script>
    <style type="text/css">
        #autocol
        {
            height: 325px; /*your fixed height*/
            width: 400px;
            -webkit-column-count: 2;
            -moz-column-count: 2; /*column-count: 3;*/ /*3 in those rules is just placeholder -- can be anything*/
        }
        #autocol li
        {
            display: inline; /*display: list-item; */ /*necessary*/
        }
    </style>
    
    <script type="text/javascript">
        function LogOUTFunc() {
            //     var Backlen=history.length;   
            //     history.go(-Backlen);   


            window.location.href = "Login.aspx";
        }
    </script>
    <script type="text/javascript">
        function ToTempPage() {
            window.location.href = "TempPage.aspx";
        }
    </script>
    <script type="text/javascript">
        function display(url) {
            //            Session["apprperm"] = blAppr;
            '<%Session["PostType"] = "Link"; %>';

            //            Session["ApprUserLog"] = LoggedUsr;

            document.getElementById("childframe").src = url;
        }
        function display2(url) {
            //            Session["apprperm"] = blAppr;
            '<%Session["PostType"] = "Link"; %>';

            //            Session["ApprUserLog"] = LoggedUsr;

            document.getElementById("childframe").src = url + "?PT=Link";
        }
    </script>
    <script type="text/javascript">
        function UserReportsDisplay(strurl) {
            var TempLink = strurl.split(':');
            var strRptType = TempLink[1];
            var strLink = TempLink[0];
            // alert(strRptType);
            // document.getElementById("HFHome").value = strRptType;

            document.getElementById("childframe").src = strLink + "?strReportPge=" + strRptType;

        }
    </script>
</head>
<body  onload="ShowCurrentTime()">
    <form id="form1" runat="server">
       
         <!-- Container -->
    <div id="container">
        <!-- Header -->
        <div id="header">
            <!-- Top -->
            <div id="top">
                <!-- Logo -->
                <div class="logo">
                    <a href="HomePage.aspx" title="Home" class="tooltip">
                        
                </div>
                <div class="logo" id="divlic" runat="server" style="background-color: Red; width: 35%;
                    visibility: hidden;" align="center">
                    <span style="color: White; font-size: small; background-color: Red; visibility: hidden;"
                        runat="server" id="licspan" visible="true"></span>
                </div>
                <!-- End of Logo -->
                <!-- Meta information -->
                <div class="meta">
                    <p>
                        Welcome,
                        <asp:Label ID="lblUser1" runat="server"></asp:Label>
                    </p>
                    <table border="0" cellpadding="2" cellspacing="2">
                        <tr>
                           
                            <td align="right">
                                <span style="color: White; font-family: Tahoma,Verdana,Arial,sans-serif; font-size: 150%">
                                    <b>Current Date & Time:</b></span>
                            </td>
                            <td align="right">
                                <span style="color: White; font-family: Tahoma,Verdana,Arial,sans-serif; font-size: 150%;">
                                    <%=DateTime.Now.ToString("dddd, dd MMM yyyy") %>
                                    &nbsp;<asp:Label ID="lblDate" runat="server"></asp:Label>
                                </span>
                            </td>
                        </tr>
                    </table>
                    <ul>
                        <asp:Button ID="btnlogout" runat="server" Text="Logout"
                            BackColor="#CCCCCC" Font-Size="7pt" Height="23px" OnClick="btnlogout_Click" />
                        <%--<li><a href="#" onclick="LogOUTFunc()" title="End session" class="tooltip"><span class="ui-icon ui-icon-power"></span>Logout</a></li>--%>
                        <li><a href="#" onclick="display('changepwd.aspx')" title="Go to your account" class="tooltip">
                            <span class="ui-icon ui-icon-person"></span>My account</a></li>
                    </ul>
                </div>
                <!-- End of Meta information -->
            </div>
            <!-- End of Top-->
            <!-- The navigation bar -->
            <div id="navbar">
                <ul class="nav">
                    <li><a href="HomePage.aspx">Home</a></li>
                    </ul>
               
                <ul class="nav">
                    <li><a href="#" onclick="display('Items.aspx')" >Shared Account</a></li>
                    </ul>
              
               
            </div>
            <!-- End of navigation bar" -->
        </div>
        <!-- End of Header -->
        <!-- Background wrapper -->
        <div id="bgwrap">
            <!-- Main Content -->
            <div id="content">
                <div id="main">
                   <%-- <iframe id="childframe" runat="server" style="width: 100%; height: 1300px; z-index: 1;"
                        src="DefaultHome.aspx" frameborder="0" scrolling="auto"></iframe>--%>
                </div>
            </div>
            <!-- End of Main Content -->
            <!-- Sidebar -->
            <!-- End of Sidebar -->
        </div>
        <!-- End of bgwrap -->
    </div>
    <!-- End of Container -->
    <!-- Footer -->
    <div id="footer">
        <p class="mid">
            <a href="#" title="Top" class="tooltip">Top</a>&middot;<a href="HomePage.aspx" title="Main Page"
                class="tooltip">Home</a>&middot;<a href="#" onclick="display('changepwd.aspx')" title="Change current settings"
                    class="tooltip">Account</a>&middot;&middot;<a href="Login.aspx" title="End session"
                            class="tooltip">Logout</a>
        </p>
        
       
    </div>
    <!-- End of Footer -->
    </form>
</body>
</html>

