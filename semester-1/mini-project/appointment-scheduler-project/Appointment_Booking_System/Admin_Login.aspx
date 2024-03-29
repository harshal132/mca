﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Admin Login</title>
    <style>
        .auto-style1 {
            width: 56%;
            height: 352px;
        }
        .submit {
            cursor: pointer;
            border-radius: 5em;
            color: #fff;
            background: #3b7be3;
            border: 0;
            padding-left: 40px;
            padding-right: 40px;
            padding-bottom: 10px;
            padding-top: 10px;
            font-family: 'Ubuntu', sans-serif;
            margin-left: 35%;
            font-size: 13px;
            box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
        }
    </style>
    <link href="LoginStyleSheet.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css" />
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css" />
  
</head>

<body style="background-image:url('images/hospital.jpg');background-repeat:no-repeat; background-size:100% 100%; height:700px;background-attachment:fixed">
    <form runat="server">
  <div class="main">
    <p class="sign" align="center">Login</p>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="un" placeholder="Username"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" class =" pass" placeholder="Password" Type="password"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Login" 
                style="cursor: pointer;
                    border-radius: 5em;
                    color: #fff;
                    background: #3b7be3;
                    border: 0;
                    padding-left: 40px;
                    padding-right: 40px;
                    padding-bottom: 10px;
                    padding-top: 10px;
                    font-family: 'Ubuntu', sans-serif;
                    margin-left: 35%;
                    font-size: 13px;
                    box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);" 
                OnClick="loginButton" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="Red" style="text-align:center; margin-left:22%"></asp:Label>
    </div>
    </form>
</body>

</html>