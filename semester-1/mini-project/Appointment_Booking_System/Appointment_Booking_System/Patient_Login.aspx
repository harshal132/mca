<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Patient_Login.aspx.cs" Inherits="Patient_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
<link href="LoginStyleSheet.css" rel="stylesheet" />
<link rel="stylesheet" href="css/style.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  
</head>

<body style="background-image:url('images/hospital.jpg');background-repeat:no-repeat; background-size:100% 100%; height:700px;background-attachment:fixed">
    <form runat="server">
  <div class="main">
    <p class="sign" align="center">Login</p>
    
        <asp:TextBox ID="TextBox1" runat="server" CssClass="un" placeholder="Username"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" class =" pass" placeholder="Password" Type="password"></asp:TextBox>
      <asp:Button ID="Button1" runat="server" Text="Login" class ="submit" OnClick="Button1_Click"/>
      <p class="forgot" align="center"><a href="Patient_Registration.aspx">Register for new account</p>

      <asp:Label ID="Label1" runat="server" ></asp:Label>
      
      
      
            
                
    </div>
     </form>
</body>

</html>