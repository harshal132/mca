<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="adminprofile.aspx.cs" Inherits="adminprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .footer li span{
            color:white;
        }
        #Image1
        {

        }

        .nav-justified
        {
            box-shadow:1px 1px 1.5px 1.5px;
            width:600px;
            margin-bottom:20px;
            margin-left:200px;
            margin-top:50px;
            box-sizing:border-box;            
        }       
        .auto-style1 {
            width: 15px;
        }
        .auto-style3 {
            width: 80px;
        }
       
        
        
        
        .auto-style4 {
            width: 162px;
        }
        .auto-style5 {
            width: 162px;
            height: 66px;
        }
        .auto-style6 {
            width: 80px;
            height: 66px;
        }
        .auto-style7 {
            width: 15px;
            height: 66px;
        }
        .auto-style8 {
            width: 162px;
            height: 22px;
        }
        .auto-style9 {
            width: 80px;
            height: 22px;
        }
        .auto-style10 {
            width: 15px;
            height: 22px;
        }
       
        
        
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="container">
        
        

        <table class="nav-justified">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" >
                    <asp:Image ID="Image1" runat="server" Height="207px" Width="219px" />
                </td>
                <td class="auto-style6" >Name:<br />
                    Emailid:<br />
                    PhoneNo:</td>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    <a href="food.aspx">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    </a>
                    <br />
                    <a href="food.aspx">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="103px" />
                    </td>
                <td class="auto-style9"></td>
                <td class="auto-style10">
                    </td>
            </tr>
            <tr style="background-color:#F2F2F2; height:40px;">
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" Text="Insert Image" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;<a href="food.aspx"><asp:Label ID="Label4" runat="server" Text=" "></asp:Label>
                    </a>
                    <br />
&nbsp;Image Should Be JPEG 200*200 max Size 50kb</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
                </td>
            </tr>
        </table>
        
            
        
        </div>
    
</asp:Content>

