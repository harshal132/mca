﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cancel_Booking.aspx.cs" Inherits="Cancel_Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cancel Appointment</title>

<link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
 
    <style type="text/css">
        .auto-style1 {
            width: 60%;
            height: 187px;
        }
        .auto-style2 {
            width: 337px;
        }
    </style>
 
</head>
<body style="text-align:center ; background-image:url('images/hospital.jpg');background-repeat:no-repeat; background-size:100% 100%; height:700px;background-attachment:fixed">

<form id="form1" runat="server">
<div id='cssmenu'>
<ul>
   <li><a href="Book_Appointment.aspx">Book Appointment</a></li>
   <li><a href="View_Booking.aspx">View Booking</a></li>
   <li><a href="Cancel_Booking.aspx">Cancel Booking</a></li>
   <li>
       <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LogOut</asp:LinkButton></li>
</ul>
</div>
    
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Email ID</td>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#3366FF" BorderColor="White" BorderStyle="Solid" BorderWidth="5px" Height="49px" Text="Cancel Booking" Width="240px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
