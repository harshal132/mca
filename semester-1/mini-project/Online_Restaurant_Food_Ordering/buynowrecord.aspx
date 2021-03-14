<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="buynowrecord.aspx.cs" Inherits="buynowrecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
        .auto-style6 {
            width: 132px;
        }
        .auto-style10 {
            width: 132px;
            height: 18px;
        }
        .auto-style11 {
            width: 123px;
        }
        .auto-style12 {
            width: 123px;
            height: 18px;
        }
        .auto-style13 {
            width: 92px;
        }
        .auto-style14 {
            width: 92px;
            height: 18px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="container">
    <p>
        &nbsp;</p>
        <asp:Image ID="Image1" runat="server" />
     <table class="nav-justified">
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style11">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AddFood] WHERE ([Id] = @Id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            
            <td class="auto-style12">
                &nbsp;</td>
            
            <td class="auto-style10">
                &nbsp;</td>
            
        </tr>
        <tr>
            <td class="auto-style13">
                
                &nbsp;</td>
            <td class="auto-style11">
                
                OrderID:<asp:Label ID="Label7" runat="server"></asp:Label><br />
            </td>
            <td class="auto-style6">
                
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="190px" ImageUrl='<%# Eval("FileUpload1") %>' Width="209px" />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td class="auto-style11">Product Id<br />
                Name<br />Price<br /> Quantity<br /> Total</td>
            <td class="auto-style6">
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style11"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Pay Now Using Card" /></td>
            <td class="auto-style6"><asp:Button runat="server" Text="Cash On Delivery" ID="Button2" OnClick="Button2_Click"></asp:Button></td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
    </table>
        </div>
</asp:Content>


