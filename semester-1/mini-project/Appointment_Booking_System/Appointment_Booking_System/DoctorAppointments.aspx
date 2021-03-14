<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DoctorAppointments.aspx.cs" Inherits="DoctorAppointments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
 
    <style type="text/css">
        .auto-style1 {
            width: 48%;
            height: 185px;
        }
        .auto-style2 {
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
    <h1 style="color:white ; background-color:black"> Appointments </h1>
    </div>
       <table class="auto-style1">
           <tr>
               <td class="auto-style2">Doctor Name</td>
               <td>
                   <asp:Label ID="Label1" runat="server"></asp:Label>
               </td>
           </tr>
           <tr>
               <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="144px" Width="749px">
                   <AlternatingRowStyle BackColor="White" />
                   <EditRowStyle BackColor="#7C6F57" />
                   <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                   <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                   <RowStyle BackColor="#E3EAEB" />
                   <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                   <SortedAscendingCellStyle BackColor="#F8FAFA" />
                   <SortedAscendingHeaderStyle BackColor="#246B61" />
                   <SortedDescendingCellStyle BackColor="#D4DFE1" />
                   <SortedDescendingHeaderStyle BackColor="#15524A" />
               </asp:GridView>
                        </tr>
       </table>
    </form>
</body>
</html>
