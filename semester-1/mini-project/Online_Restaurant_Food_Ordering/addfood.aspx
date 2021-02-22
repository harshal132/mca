<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="addfood.aspx.cs" Inherits="addfood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/signup.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        
        #food
        {
            text-align:center;
        }
         .footer h3{
            color:black;
        }
        .footer li{
            color:black;
        }
         .footer p{
             color:black;
         }
         .footer p a{
             color:black;
         }
         .footer h5{
             color:white;
         }
    .style1
    {
        color: black;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 id="food">Add Food</h2>
    <div class="container">
 
    <div class="row">
      <div class="col-25">
          <span class="style1">
        <label>ID</label></span>
      </div>
      <div class="col-75">
        <asp:TextBox runat="server" ID="id" ReadOnly="True"></asp:TextBox>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
          <span class="style1">
        <label>Food Name</label></span>
      </div>
      <div class="col-75">
         <asp:TextBox runat="server" ID="foodname" placeholder="Enter Food Name"></asp:TextBox>
          <br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="foodname" ErrorMessage="Enter FoodName"></asp:RequiredFieldValidator>
          <br />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Food Name" ControlToValidate="foodname" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
          <span class="style1">
        <label>Food Description</label></span>
      </div>
      <div class="col-75">
         <asp:TextBox runat="server" ID="fooddes" placeholder="Enter Food Description" OnTextChanged="fooddes_TextChanged" ></asp:TextBox>
          <br />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Food Description" ControlToValidate="fooddes" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
          <span class="style1">
        <label>Price</label></span>
      </div>
      <div class="col-75">
         <asp:TextBox runat="server" ID="price" placeholder="Enter price"></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Valid Price" ControlToValidate="price" ValidationExpression="\d+"></asp:RegularExpressionValidator>
      </div>
    </div>

    <div class="row">
      <div class="col-25">
          <span class="style1">
        <label>Quantity</label></span>
      </div>
      <div class="col-75">
       <asp:TextBox runat="server" ID="quantity" placeholder="Enter Quantity"></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter Valid Quantity" ControlToValidate="quantity" ValidationExpression="\d+"></asp:RegularExpressionValidator>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
          <span class="style1">
        <label>Date</label></span>
      </div>
      <div class="col-75">
          <asp:TextBox ID="date" runat="server" TextMode="Date"></asp:TextBox>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label><span class="style1">Image</span>
      </div>
      <div class="col-75">
          <asp:FileUpload ID="FileUpload1" runat="server" />
       
      </div>
    </div>
    <div class="row">
        <asp:Button runat="server" ID="New" Text="New" CausesValidation="False" OnClick="New_Click" />
   
        <asp:Button ID="insert" runat="server" Text="Insert" OnClick="insert_Click1" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" />
   <asp:Button runat="server" ID="delete" Text="delete" OnClick="delete_Click" />
        <br />
        <br />
        <br />
        <asp:TextBox ID="searchtextbox" runat="server" placeholder="Search Food Name Name"></asp:TextBox>
       
        <asp:Button ID="Button1" runat="server" Text="Search" CausesValidation="False" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="View All Data" CausesValidation="False" OnClick="Button2_Click"/>
        <br />
        <br />
        <br />
        <br />

         
   

         
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="FoodName" HeaderText="FoodName" SortExpression="FoodName" />
                <asp:BoundField DataField="FoodDescription" HeaderText="FoodDescription" SortExpression="FoodDescription" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:d}" SortExpression="Date" />
                <asp:TemplateField HeaderText="FileUpload1" SortExpression="FileUpload1">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FileUpload1") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="150px" ImageUrl='<%# Eval("FileUpload1") %>' Width="200px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <asp:Image ID="Image1" runat="server" Height="159px" ImageUrl='<%# Eval("FileUpload1") %>' Width="156px" />
            </EmptyDataTemplate>
        </asp:GridView>
   
            </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AddFood]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AddFood] WHERE ([FoodName] = @FoodName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="searchtextbox" Name="FoodName" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    
</div>
   
   
    </label>
   
   
</asp:Content>

