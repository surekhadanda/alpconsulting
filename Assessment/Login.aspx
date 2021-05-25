<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assessment.Login" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Login</title>
   <link type="text/css" href="css/login.css" rel="stylesheet" />	
		<link type="text/css" href="css/smoothness/jquery-ui-1.7.2.custom.html" rel="stylesheet" />	
		
		<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="js/easyTooltip.js"></script>
		<script type="text/javascript" src="js/jquery-ui-1.7.2.custom.min.js"></script>
     <style type ="text/css" >
   .footer{ 
       position: fixed;     
       text-align: center;    
       bottom: 0px; 
       width: 50%;
   }  
</style>
     <style type="text/css">
        .modalBackground
        {
            background-color: Gray;
            filter: alpha(opacity=70);
            opacity: 0.9;
            z-index: 10000;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server">
        <div id="container">
		    <div class="logo">
			    <a href="#"><img src="assets/logo1.png" alt="" /></a>
				<%--<b>Bridgesol payment Gateway</b>--%>
		    </div>
		    <div id="box">
				
			    <form action="Login.aspx" method="post">
                    <p class="main">
				        <label>Login ID: </label>
				        <asp:TextBox ID="txtUser" runat="server" TabIndex="1" Width="186px" style="text-transform:uppercase"  ></asp:TextBox>
			            <label>Password: </label>
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" TabIndex="2" Width="186px" ></asp:TextBox>
                    </p>
                    <p class="space">
			            <asp:Button ID="btnLogin" Text="Submit" cssclass="login" runat="server" TabIndex="3" OnClick="btnLogin_Click"/>					
		                <asp:Button ID="btnClear" runat="server" Text="Clear" cssclass="login"  TabIndex="4" OnClick="btnClear_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><span><a href ="ForgotPwd.aspx" >Forgot Password ?</a></span></span></p>
			    <asp:Label ID="Label1" runat="server"></asp:Label>
                </form>
                
		    </div>
           
		</div>
       </form>
</body>
</html>
