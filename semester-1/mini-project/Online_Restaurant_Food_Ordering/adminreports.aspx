<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="adminreports.aspx.cs" Inherits="adminreports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        #text{
            margin-left:360px;
            margin-top:40px;
            margin-bottom:7px;
        }
        #date
        {
            margin-left:300px;
            margin-top:10px;
            margin-bottom:10px;
        }
       .footer h3{
            color:white;
        }
        .footer li span{
            color:white;
        }
         .footer p{
             color:white;
         }
         .footer p a{
             color:white;
         }
         .footer h5{
             color:white;
         }

     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        
        <div id="text">
        <h3>Enter Date For Reports </h3>
            </div>
         
        <div id="date">
                  <asp:TextBox ID="date1" runat="server" TextMode="Date"></asp:TextBox>
                              
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                   
                  <asp:TextBox ID="date2" runat="server" TextMode="Date"></asp:TextBox>    
                        
        </div>

        <div style="margin-left:40px;">
            &nbsp;<asp:Button ID="Button3" runat="server" Text="User's COD Report " Width="163px" OnClick="Button3_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="Online Food Order Report" Width="220px" OnClick="Button4_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button5" runat="server" Text="User Registration" Width="162px" OnClick="Button5_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Employee Report" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Food Report" OnClick="Button2_Click" />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </div>
            <div style="margin-top:20px; margin-left:00px; margin-bottom:10px;">
                <asp:GridView ID="GridView1" runat="server" DataFormatString="{0:d}" Width="100%">
            </asp:GridView>
               
            </div>
        
        
        
    </div>
    </asp:Content>

