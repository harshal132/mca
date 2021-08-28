﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BorrowBook.aspx.cs" Inherits="BorrowBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Borrow Book Registration</title>
    <style>
    body {
        background-color: #F3EBF6;
        font-family: 'Ubuntu', sans-serif;
        background-image: url('images.jpg');
        background-repeat:no-repeat; 
        background-size:100% 100%;
    }
    
    .main {
        background-color: #FFFFFF;
        width: 400px;
        height: 500px;
        margin: 7em auto;
        border-radius: 1.5em;
        box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
    }
    
    .sign {
        padding-top: 40px;
        color: #8C55AA;
        font-family: 'Ubuntu', sans-serif;
        font-weight: bold;
        font-size: 23px;
    }
    
    .un {
    width: 76%;
    color: rgb(38, 50, 56);
    font-weight: 700;
    font-size: 14px;
    letter-spacing: 1px;
    background: rgba(136, 126, 126, 0.04);
    padding: 10px 20px;
    border: none;
    border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid rgba(0, 0, 0, 0.02);
    margin-bottom: 50px;
    margin-left: 46px;
    text-align: center;
    margin-bottom: 27px;
    font-family: 'Ubuntu', sans-serif;
    }
    
    form.form1 {
        padding-top: 40px;
    }
    
    .pass {
            width: 76%;
    color: rgb(38, 50, 56);
    font-weight: 700;
    font-size: 14px;
    letter-spacing: 1px;
    background: rgba(136, 126, 126, 0.04);
    padding: 10px 20px;
    border: none;
    border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid rgba(0, 0, 0, 0.02);
    margin-bottom: 50px;
    margin-left: 46px;
    text-align: center;
    margin-bottom: 27px;
    font-family: 'Ubuntu', sans-serif;
    }
    
   
    .un:focus, .pass:focus {
        border: 2px solid rgba(0, 0, 0, 0.18) !important;
        
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
    
    .forgot {
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: #E1BEE7;
        padding-top: 15px;
    }
    
    a {
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: #E1BEE7;
        text-decoration: none
    }
    @media (max-width: 600px) {
        .main {
            border-radius: 0px;
        }
    }  
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
        <p class="sign" align="center">Please Enter Book Details</p>    
          <asp:TextBox ID="TextBox1" runat="server" CssClass="un" placeholder="Membership ID" TextMode="Number" required="required" MaxLength="10"></asp:TextBox>
          <asp:TextBox ID="TextBox2" runat="server" CssClass="un" placeholder="Book Name" required="required"  MaxLength="20"></asp:TextBox>
          <asp:TextBox ID="bookID" runat="server" CssClass="un" placeholder="Book ID" TextMode="Number" required="required"></asp:TextBox>
          <asp:TextBox ID="TextBox4" runat="server" CssClass="un" placeholder="Author Name" required="required" MaxLength="20"></asp:TextBox>
          <asp:Button ID="Button1" runat="server" Text="Submit" class ="submit" OnClick="sendUserData"/>
          </div>
    </form>
</body>
</html>
