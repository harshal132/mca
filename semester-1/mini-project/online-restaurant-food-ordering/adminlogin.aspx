<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />



    <style>
        
         
    form {
    border: 3px solid #f1f1f1;
    font-family: Arial;
}
        #login {
            margin:190px 0px 50px 0px;
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
    </head>
    <body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [number], [email], [password] FROM [admintable]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
        <div id="login">  
         <div class="container" style="background-color:white;">
             <div class="col-lg-3"></div>
              <div class ="col-lg-3">
              Admin Login
                  <asp:TextBox ID="name" runat="server" placeholder="Enter Name" ></asp:TextBox>
          <asp:TextBox ID="number" runat="server" placeholder="Enter Number" ></asp:TextBox>
             <asp:TextBox runat="server" ID="password" placeholder="Enter Password" TextMode="Password" 
                 ></asp:TextBox> 
             <br />
             <asp:Label ID="Label1" runat="server" Text="Invalid Name,Number and Password" Visible="False"></asp:Label> 
             <asp:Button runat="server" ID="login1" Text="Login" OnClick="login1_Click" /><br />
                 </div>
             <div class="col-lg-3"></div>
            </div>
            </div>
       
        </form>
</body>
    </html>