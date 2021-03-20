<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/signup.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        
         .footer h3{
            color:black;
        }
        .footer li{
            color:black;
        }
            .footer li span {
                color: black;
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
        .style1
        {
            color: black;
        }
        #RequiredFieldValidator1,#RequiredFieldValidator2,#RequiredFieldValidator3,#RequiredFieldValidator4,#RequiredFieldValidator5
        {
            color:Red;
        }
        #RegularExpressionValidator1,#RegularExpressionValidator2,#RegularExpressionValidator3,#CompareValidator1
        {
            color:Red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User Registration </h2>
<div class="container">
  
    <div class="row">
      <div class="col-25">
        <label>Name</label>
      </div>
      <div class="col-75">
       
          <asp:TextBox ID="name" runat="server" placeholder="Enter first name"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" ControlToValidate="name"></asp:RequiredFieldValidator>
          &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Name" ControlToValidate="name" ValidationExpression="^[a-zA-z][a-zA-Z\\s]+$"></asp:RegularExpressionValidator>
         </div>
       
    </div>
      <div class="row">
      <div class="col-25">
        <label>Phone Number</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="number" runat="server" placeholder="Enter Number"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Number" ControlToValidate="number"></asp:RequiredFieldValidator>
          &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
              runat="server" ErrorMessage="Invalid Number" 
              ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$" 
              ControlToValidate="number"></asp:RegularExpressionValidator>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label>Email</label>
      </div>
      <div class="col-75">   
          <asp:TextBox ID="email" runat="server" placeholder="Enter Email"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Email" ControlToValidate="email"></asp:RequiredFieldValidator>
          &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
              runat="server" ErrorMessage="Invalid Email" 
              ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
              ControlToValidate="email"></asp:RegularExpressionValidator>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label>City</label>
      </div>
      <div class="col-75">
          <asp:DropDownList ID="city" runat="server" >
              <asp:ListItem>Mumbai</asp:ListItem>
              <asp:ListItem>Nasik</asp:ListItem>
              <asp:ListItem>Pune</asp:ListItem>
              <asp:ListItem>Thane</asp:ListItem>
              <asp:ListItem>Goa</asp:ListItem>

          </asp:DropDownList>
      </div>
    </div>
    <br />
    <div class="row">
      <div class="col-25">
        <label>Password</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="password" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Password" ControlToValidate="password"></asp:RequiredFieldValidator>
          </div>
         </div>
            <div class="row">
      <div class="col-25">
          <span class="style1">
        <label>Confirm Password</label></span>
      </div>
      <div class="col-75">
          <asp:TextBox ID="cpassword" runat="server" TextMode="Password" placeholder="Enter Confirm Password"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Name" ControlToValidate="cpassword"></asp:RequiredFieldValidator>
          &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="invalid password" ControlToCompare="password" ControlToValidate="cpassword"></asp:CompareValidator>
      
         </div>
         </div>
   
    <div>
         <asp:Button ID="Button1" runat="server" Text="Login" CausesValidation="False" PostBackUrl="~/login.aspx"  />
       <asp:Button runat="server" ID="submit" Text="Sign up" OnClick="submit_Click"  />
    </div>
    
</div>
</asp:Content>

