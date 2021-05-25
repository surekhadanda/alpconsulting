<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Assessment.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <!-- Meta -->
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<!-- End of Meta -->
		
		<!-- Page title -->
         
		<title>bsPaymentGateway</title>
		<!-- End of Page title -->
		
		<!-- Libraries -->
		<link type="text/css" href="css/login.css" rel="stylesheet" />	
		<link type="text/css" href="css/smoothness/jquery-ui-1.7.2.custom.html" rel="stylesheet" />	
		
		<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="js/easyTooltip.js"></script>
		<script type="text/javascript" src="js/jquery-ui-1.7.2.custom.min.js"></script>
		<!-- End of Libraries -->	
       
    <style type="text/css">
        .auto-style1 {
            width: 979px;
        }
    </style>
       
</head>
<body>
   <form id="form1" runat="server">
        <div id="container" class="auto-style1">
		    <div class="logo">
			    <a href="#"><img src="assets/logo1.png" alt="" /></a>
				
		    </div>
		    <div id="box">
			    <table class="center" >
                   
					<tr>
						<td><asp:Label ID="Label2" Font-Size="13px" ForeColor="#000" runat="server" Text="Login ID:"></asp:Label></td>
						<td><asp:TextBox ID="txtUserId" runat="server" TabIndex="2" Width="186px"  BorderColor="#d3d3d3" BorderWidth="1px" BorderStyle="Solid" Height="23px" style="margin-right:40px;margin-top:20px"></asp:TextBox></td>
						</tr>
					
                   <tr>
                        <td><asp:Label ID="Label3" Font-Size="13px" ForeColor="#000"  runat="server" Text="First Name:"></asp:Label></td>
                        <td><asp:TextBox ID="txtFName"   runat="server" TabIndex="2" Width="186px"  BorderColor="#d3d3d3" BorderWidth="1px" BorderStyle="Solid" Height="23px" style="margin-right:40px;margin-top:10px"></asp:TextBox></td>
						</tr>
					<tr>
					   <td><asp:Label ID="Label4" Font-Size="13px" ForeColor="#000"  runat="server" Text="Last Name:"></asp:Label></td>
						<td><asp:TextBox ID="txtLName"  runat="server" TabIndex="2" Width="186px"  BorderColor="#d3d3d3" BorderWidth="1px" BorderStyle="Solid" Height="23px"  style="margin-right:40px;margin-top:10px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Label5" Font-Size="13px" ForeColor="#000" runat="server" Text="Email:"></asp:Label></td>
                        <td><asp:TextBox ID="txtMail"  runat="server" TabIndex="2" Width="186px"  BorderColor="#d3d3d3" BorderWidth="1px" BorderStyle="Solid" Height="23px" style="margin-right:40px;margin-top:10px"></asp:TextBox></td>
						</tr>
					<tr>
						<td><asp:Label ID="Label6" Font-Size="13px" ForeColor="#000" runat="server" Text="Password:"></asp:Label></td>
						<td><asp:TextBox ID="txtNewPwd"  TextMode="Password" runat="server" TabIndex="2" Width="186px"  BorderColor="#d3d3d3" BorderWidth="1px" BorderStyle="Solid" Height="23px" style="margin-right:40px;margin-top:10px"></asp:TextBox></td>
						<%--<td><asp:Label ID="Label8" Font-Size="13px" ForeColor="#000" runat="server" Text="(Password must be at least 6 chars long,one uppercase letter, one lowercase letter and one number.)"></asp:Label></td>--%>
						<!-- Add validator for minimum 8 characters -->
						<td><asp:RegularExpressionValidator Display="Dynamic" ForeColor="Red" ControlToValidate="txtNewPwd" ID="MyPassordMinLengthValidator" ValidationExpression="^[\s\S]{6,}$" runat="server" ErrorMessage="Password must be at least 6 characters long."></asp:RegularExpressionValidator>
						<!-- Add validator for minimum required characters -->
						<asp:RegularExpressionValidator Display="Dynamic" ForeColor="Red" ControlToValidate="txtNewPwd" ID="MyPassordRequiredCharacterValidator" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$" runat="server" ErrorMessage="Must contain at least one uppercase letter, one lowercase letter and one number."></asp:RegularExpressionValidator></td>
                    </tr>
					<tr>
                        <td><asp:Label ID="Label7" Font-Size="13px" ForeColor="#000" runat="server" Text="Confirm Password:"></asp:Label></td>
                        <td><asp:TextBox ID="txtCNewPwd"  TextMode="Password" runat="server" TabIndex="2" Width="186px"  BorderColor="#d3d3d3" BorderWidth="1px" BorderStyle="Solid" Height="23px" style="margin-right:40px;margin-top:10px"></asp:TextBox></asp:TextBox></td>
						
                    </tr>
                </table>

					
                    <p class="space">
			            <asp:Button ID="btnSignup" Text="Signup" cssclass="login" runat="server" TabIndex="3" OnClick="btnSignup_Click"/>					
		                <asp:Button ID="btnClear" runat="server" Text="Clear" cssclass="login"  TabIndex="4" OnClick="btnClear_Click"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><span>Already account?<a href ="Login.aspx" >Login</a></span>
							</p>
			    
                
		  </div>
			
			
				
		</div>
	   
    </form>
</body>
</html>
