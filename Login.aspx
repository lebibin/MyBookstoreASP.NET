﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Login ID="Login1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD" 
            BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
            CreateUserText="Register as a new user" CreateUserUrl="~/Signup.aspx" 
            Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="182px" 
            TextLayout="TextOnTop" Width="347px">
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#990000" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" 
                ForeColor="White" />
        </asp:Login>
        <br />
        
    
    </div>
    </form>
</body>
</html>
