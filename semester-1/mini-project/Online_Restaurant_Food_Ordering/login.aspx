<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="css/login.css" rel="stylesheet" type="text/css" />
    <style>
        #login
        {
            text-align:center;
        }
        .footer h3{
            color:black;
        }
        .footer li{
            color:black;
        }
        .footer li span {
        color:black
        }
         .footer p{
             color:black;
         }
         .footer p a{
             color:black;
         }
         .footer h5{
             color:white;
         }
    form {
    border: 3px solid #f1f1f1;
    font-family: Arial;
}


.container {
    padding: 20px;
    background-color: #f1f1f1;
}

input[type=text], input[type=submit] {
    width: 100%;
    padding: 12px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

input[type=checkbox] {
    margin-top: 16px;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    border: none;
}

input[type=submit]:hover {
    opacity: 0.8;
}
</style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 id="login"> User Login</h2>
<div class="container">

<div class="col-md-6">
    &nbsp;</div>
         <div class="container" style="background-color:white">
             <asp:TextBox ID="name" runat="server"  placeholder="Enter first Name"></asp:TextBox>
             
             <asp:TextBox runat="server" ID="password" placeholder="Enter Password" TextMode="Password" 
                 ></asp:TextBox> 
             <br />
             <asp:Label ID="Label1" runat="server" Text="Invalid Email and Password" Visible="False"></asp:Label>
  </div>

  <div class="container">
<asp:Button runat="server" ID="login1" Text="Login" OnClick="login1_Click" /><br />
<asp:Button runat="server" ID="signup" Text="Signup" OnClick="signup_Click1" /><br />
      <asp:Button runat="server" ID="logout" Text="LogOut"  Visible="False" OnClick="logout_Click"  />

  </div>


</div>
</asp:Content>

