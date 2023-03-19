<%@ Page Language="VB" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Coffee Time</title>
    <style>
     #form1
        {
        	height:600px;
        	width:573px;
        	background-color:white;
        	margin-left:auto;
        	margin-right:auto;
        	opacity:0.8;  	
        }
        body
        {
        	background-image:url("images/coffee.png");
        	background-repeat:inherit;
        }
        .container
        {
        	margin-left:25px;
        }
        .txtbox
        {
        	border:1px solid blue;
        	border-radius:5px;
        	font-size:15px;
        }
        .btn
        {
        	border:1px solid black;
        	border-radius:5px;
        	background-color:lightgreen;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <img src="images/coffee-shop-logo.png" style="height:120px;width:573px" />
    </div>
    <div class="container">
    
        <asp:TextBox ID="txtfname" class="txtbox" placeholder="Enter First Name" 
            runat="server" Height="37px" 
            style="margin-bottom: 0px" Width="214px"></asp:TextBox>
        <asp:TextBox ID="txtlname" class="txtbox"  placeholder="Enter Last Name" 
            runat="server" Height="37px" 
            style="margin-bottom: 0px" Width="214px"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="txtmob" class="txtbox" placeholder="Enter mobile Name" 
            runat="server" Height="37px" 
            style="margin-bottom: 0px; margin-left: 0px;" Width="425px"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="txtemail" class="txtbox" placeholder="Enter email id" runat="server" Height="37px" 
            style="margin-bottom: 0px" Width="426px"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" class="btn" runat="server" Text="Sign Up" Width="426px" 
            Height="41px" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Cancel" Width="426px" 
            Height="40px" />
        <br />
    
    </div>
    </form>
</body>
</html>
