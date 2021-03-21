<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminAddDoctor.aspx.cs" Inherits="AdminAddDoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Doctors</title>
    <style type="text/css">
        .auto-style3 {
            width: 44%;
            height: 498px;
        }
    </style>
<link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
 
</head>
<body style="text-align:center ; background-image:url('images/hospital.jpg');background-repeat:no-repeat; background-size:100% 100%; height:700px;background-attachment:fixed">

<form id="form1" runat="server">
<div id='cssmenu'>
<ul>
   <li><a href="AdminAddDoctor.aspx">Add Doctor</a></li>
   <li><a href="AdminViewDoctor.aspx">View Doctors</a></li>
   <li><a href="AdminViewAppointments.aspx">View Appointments</a></li>
   <li>
       <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LogOut</asp:LinkButton></li>
</ul>
</div>
    
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style3">
            <tr>
                <td>Doctor ID</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Doctor Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Set Password</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Specialization</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                         <asp:ListItem>Bone</asp:ListItem>
                        <asp:ListItem>Heart</asp:ListItem>
                        <asp:ListItem>Dentist</asp:ListItem>
                        <asp:ListItem>Neurologist</asp:ListItem>
                        <asp:ListItem>Kidney</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Degree</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                         <asp:ListItem>MBBS</asp:ListItem>
                        <asp:ListItem>BDS</asp:ListItem>
                        <asp:ListItem>BAMS</asp:ListItem>
                        <asp:ListItem>BUMS</asp:ListItem>
                        <asp:ListItem>BHMS</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>Age</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Add Doctor" OnClick="Button1_Click" /></td>
                <td>
        <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            
        </table>
        <br />
    
    </div>
    </form>
</body>
</html>
