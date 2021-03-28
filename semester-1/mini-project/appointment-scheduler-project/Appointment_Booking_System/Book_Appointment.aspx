<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Book_Appointment.aspx.cs" Inherits="Book_Appointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Appointment</title>
    <style type="text/css">
        .auto-style1 {
            width: 49%;
            height: 584px;
        }
        .auto-style2 {
            text-align:right;
            width: 278px;
        }
    </style>
<link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
 
</head>
<body style="text-align:center ; background-image:url('images/hospital.jpg');background-repeat:no-repeat; background-size:100% 100%; height:700px;background-attachment:fixed">

 <form id="form1" runat="server" >
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
    
    </div>
        
            <asp:Label ID="Label1"  runat="server" ForeColor="#000066" Text="Add New Appointment" Height="55px" Width="309px" Font-Underline="True" Font-Size="Larger"></asp:Label>

        
        <table class="auto-style1" >

            <tr>
                <td class="auto-style2">Email ID</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="38px" Width="232px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Category</td>
                <td>
                    <asp:DropDownList ID="Category" runat="server" Height="63px" Width="233px">
                        <asp:ListItem>Bone</asp:ListItem>
                        <asp:ListItem>Heart</asp:ListItem>
                        <asp:ListItem>Dentist</asp:ListItem>
                        <asp:ListItem>Neurologist</asp:ListItem>
                        <asp:ListItem>Kidney</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Doctor Name</td>
                <td>
                    <asp:DropDownList ID="DoctorName" runat="server" Height="38px" Width="232px" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name"></asp:DropDownList>
                </td>
            </tr>
             <tr>
                <td class="auto-style2">Patient Name</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="38px" Width="232px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">Date</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="38px" Width="195px"></asp:TextBox>  

                    <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" ImageUrl="~/images/calendar.png" OnClick="ImageButton1_Click" Width="30px" />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="350px" OnDayRender="Calendar1_DayRender">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">Time</td>
                <td>
                    <asp:DropDownList ID="Time" runat="server" Height="38px" Width="232px">
                        <asp:ListItem>9:00-9:30</asp:ListItem>
                        <asp:ListItem>9:30-10:00</asp:ListItem>
                        <asp:ListItem>10:00-10:30</asp:ListItem>
                        <asp:ListItem>10:30-11:00</asp:ListItem>
                        <asp:ListItem>11:00-11:30</asp:ListItem>
                        <asp:ListItem>11:30-12:00</asp:ListItem>
                        <asp:ListItem>1:30-2:00</asp:ListItem>
                        <asp:ListItem>2:00-2:30</asp:ListItem>
                        <asp:ListItem>2:30-3:00</asp:ListItem>
                        <asp:ListItem>3:00-3:30</asp:ListItem>
                        <asp:ListItem Selected="True">--Select--</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#3366FF" BorderColor="White" BorderStyle="Solid" BorderWidth="5px" Height="45px" Text="Book Appointment" Width="238px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>

        
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [DoctorDetails]"></asp:SqlDataSource>

        
    </form>
&nbsp;
</html>
