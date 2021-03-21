<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Booking.aspx.cs" Inherits="View_Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Appointments</title>

<link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
 
    <style type="text/css">
        .auto-style1 {
            width: 49%;
            height: 379px;
        }
        .auto-style2 {
            width: 343px;
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
    <h1 style="color:white;background-color:black"> My Appointment</h1><br />

        <asp:Label ID="Label7" runat="server"></asp:Label>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Email ID</td>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Category</td>
                <td>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Doctor Name</td>
                <td>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Patient Name</td>
                <td>
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Date</td>
                <td>
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Time</td>
                <td>
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        

        <br />


    </div>
    </form>
</body>
</html>
