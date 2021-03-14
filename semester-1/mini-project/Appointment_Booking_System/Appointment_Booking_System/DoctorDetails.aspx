<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DoctorDetails.aspx.cs" Inherits="DoctorDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
 
    <style type="text/css">
        .auto-style1 {
            width: 49%;
            float: left;
            height: 462px;
            background-color: #008080;
        }
    </style>
 
</head>
<body style="text-align:center ; background-image:url('images/hospital.jpg');background-repeat:no-repeat; background-size:100% 100%; height:700px;background-attachment:fixed">

<form id="form1" runat="server">
<div id='cssmenu'>
<ul>
   <li><a href="DoctorDetails.aspx">My Details</a></li>
   <li><a href="DoctorAppointments.aspx">Appointments</a></li>
   <li>
       <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LogOut</asp:LinkButton></li>
</ul>
</div>
   
    <div>
    <h1 style="color:white ; background-color:black"> My Profile </h1>

    </div>
       <table align="center" cellpadding="2" class="auto-style1">
           <tr>
               <td>Doctor ID</td>
               <td>
                   <asp:Label ID="Label1" runat="server"></asp:Label>
               </td>
           </tr>
           <tr>
               <td>Name</td>
               <td>
                   <asp:Label ID="Label2" runat="server"></asp:Label>
               </td>
           </tr>
           <tr>
               <td>Specialization</td>
               <td>
                   <asp:Label ID="Label3" runat="server"></asp:Label>
               </td>
           </tr>
           <tr>
               <td>Degree</td>
               <td>
                   <asp:Label ID="Label4" runat="server"></asp:Label>
               </td>
           </tr>
           <tr>
               <td>Gender</td>
               <td>
                   <asp:Label ID="Label5" runat="server"></asp:Label>
               </td>
           </tr>
           <tr>
               <td>Age</td>
               <td>
                   <asp:Label ID="Label6" runat="server"></asp:Label>
               </td>
           </tr>
       </table>
    </form>
</body>
</html>
