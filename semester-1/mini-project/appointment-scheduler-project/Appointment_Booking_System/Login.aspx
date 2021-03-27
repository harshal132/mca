<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-image:url('images/hospital.jpg');background-repeat:no-repeat; background-size:100% 100%; height:700px;background-attachment:fixed">
<head runat="server">
    <title>Login Page</title>
    <link href="LoginStyleSheet.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css"/>
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css"/>
  
</head>

<body style="background-image:url('images/hospital.jpg');background-repeat:no-repeat; background-size:100% 100%; height:700px;background-attachment:fixed">
    <form runat="server" style="align-content:center">
  
    <br /><br /><br /><br />
        <p class="sign" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Choose Your login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    
        <asp:Button ID="Button1" align="center" runat="server" Text="PATIENT LOGIN" Font-Size="Larger" class="submit" OnClick="Button1_Click" Height="90" Width="350" /><br /><br />

        <asp:Button ID="Button2" align="center" runat="server" Text="DOCTOR LOGIN" Font-Size="Larger" class="submit" OnClick="Button2_Click" Height="90" Width="350" /><br /><br />

        <asp:Button ID="Button3" align="center" runat="server" Text="ADMIN LOGIN" Font-Size="Larger" class="submit" OnClick="Button3_Click" Height="90" Width="350" />
       
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
       
    </form>
</body>
</html>
