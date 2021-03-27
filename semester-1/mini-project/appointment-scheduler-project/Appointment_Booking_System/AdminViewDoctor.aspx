<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminViewDoctor.aspx.cs" Inherits="AdminViewDoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registered Doctors</title>
    <style type="text/css">
        .auto-style1 {
            width: 49%;
            height: 584px;
        }
        .auto-style2 {
            text-align:right;
            width: 278px;
        }
        .alignData {
            margin-left:auto;
            margin-right:auto;
        }
    </style>
    <link rel="stylesheet" href="styles.css"/>
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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DoctorDetails]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" class="alignData" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="170px" Width="924px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Specialization" HeaderText="Specialization" SortExpression="Specialization" />
                <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            </Columns>
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
    
    </div>
    </form>
</body>
</html>
