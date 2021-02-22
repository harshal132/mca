<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="codrecord.aspx.cs" Inherits="codrecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container" style="margin-top:40px;">
        <div class="col-md-4"></div>

        <div class="col-md-4">

            <div style="margin-bottom:10px;">
                Order ID:#<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp; Name:<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                &nbsp;</div>

            <div>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="First And Middel Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Valid Name" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </div>

            <div>
            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Email" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>

            <div>
            <asp:Label ID="Label3" runat="server" Text="Number"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Number" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Valid Number" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$"></asp:RegularExpressionValidator>
            </div>

            <div>
            <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Address" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Address" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
            </div>

             <div>
            <asp:Label ID="Label5" runat="server" Text="Enter Date"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Date" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                 <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 Total price:<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                 &nbsp;&nbsp;
                 <asp:Button ID="Button1" runat="server" Text="Place Order" OnClick="Button1_Click" />
            &nbsp;
            </div>

        </div>

    </div>
    <script type="text/javascript">
        function preventBack()
        {
            window.history.forward();

        }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
    <script type="text/javascript">
        window.onbeforeunload=function()
        {
            return "you won't  be able to come back to this page again";
        }
    </script>
</asp:Content>

