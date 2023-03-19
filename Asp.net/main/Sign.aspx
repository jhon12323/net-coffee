<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Sign.aspx.vb" Inherits="Sign" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Coffee Time</title>
     <style>
        body{
    margin: 0;
    padding: 0;
    background: url("images/coffee.png");
    background-size: cover;
    background-position: center;
    font-family: sans-serif;
}

.loginbox{
    width: 323px;
    height:627px;
    background: #000;
    color: #fff;
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 30px;
}

.avatar{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    position: absolute;
    top: -50px;
    left: calc(50% - 50px);
}

h1{
    margin: 0;
    padding: 0 0 20px;
    text-align: center;
    font-size: 22px;
}

.loginbox p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}

.loginbox input{
    width: 100%;
    margin-bottom: 20px;
             height: 26px;
         }

.loginbox input[type="text"], input[type="password"]
{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 40px;
    color: #fff;
    font-size: 16px;
}
.loginbox input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    background: #fb2525;
    color: #fff;
    font-size: 18px;
    border-radius: 20px;
}
.loginbox input[type="submit"]:hover
{
    cursor: pointer;
    background: #ffc107;
    color: #000;
}
.loginbox a{
    text-decoration: none;
    font-size: 12px;
    line-height: 20px;
    color: darkgrey;
}

.loginbox a:hover
{
    color: #ffc107;
}  
    </style>
</head>
<body>
    
        <form id="form2" runat="server">
    
    <div class="loginbox">
    <img src="images/avatar.png" class="avatar">
        <h1>Sign Up Here</h1>
            <h1>&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </h1>
            <p>Username</p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtuser" ErrorMessage="Please Enter Username"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtuser" placeholder="Enter Username" runat="server" ></asp:TextBox>
            <br />
        Email<br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtemail" ErrorMessage="Please Enter Email"></asp:RequiredFieldValidator>
        <br />
            <asp:TextBox ID="txtemail" placeholder="Enter Username" runat="server" ></asp:TextBox>
            <br />
        Mobile<br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtmo" ErrorMessage="Please Enter Moblie"></asp:RequiredFieldValidator>
        <br />
            <asp:TextBox ID="txtmo" placeholder="Enter Username" runat="server" 
            MaxLength="10" ></asp:TextBox>
            <p>Password</p>
            <p>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpass" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtpass" placeholder="Enter Password" runat="server" 
                    TextMode="Password" ></asp:TextBox>
            </p>
            &nbsp;<asp:Button ID="subtn" runat="server" Text="Sign Up" />
    </div>
    </style>
    </form>
<p>
&nbsp;</p>
</body>
</html>
