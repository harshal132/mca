<%@ Page Title="" Language="C#" MasterPageFile="MasterPage2.master" enableEventValidation="false" AutoEventWireup="true" CodeFile="addempdata.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/signup.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #employee
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
         
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 id="employee">Add Employee</h2>
    <div class="container">  
    <div class="row">
      <div class="col-25">
          <label>ID</label>
      </div>
      <div class="col-75">
        <asp:TextBox runat="server" ID="Id" ReadOnly="True"></asp:TextBox>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label>Name</label>
      </div>
      <div class="col-75">
         <asp:TextBox runat="server" ID="name" placeholder="Enter Name" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" ControlToValidate="name"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Name" ControlToValidate="name" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label>Number</label>
      </div>
      <div class="col-75">
         <asp:TextBox runat="server" ID="number" placeholder="Enter Number"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Name" ControlToValidate="number"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Number" ControlToValidate="number" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$"></asp:RegularExpressionValidator>

      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label>Email Id</label>
      </div>
      <div class="col-75">
         <asp:TextBox runat="server" ID="email" placeholder="Enter EmailID"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Email" ControlToValidate="email"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Email" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label>Address</label>
      </div>
      <div class="col-75">
       <asp:TextBox runat="server" ID="address" placeholder="Enter Address" TextMode="MultiLine"></asp:TextBox>
      </div>
    </div>

     <div class="row">
      <div class="col-25">
        <label>Joining Date</label>
      </div>
      <div class="col-75">
       <asp:TextBox runat="server" ID="date" placeholder="Enter Date" TextMode="Date"></asp:TextBox>
      </div>
    </div>
        <div class="row">
      <div class="col-25">
        <label>Password</label>
      </div>
      <div class="col-75">
      <asp:TextBox runat="server" ID="password" placeholder="Enter Password" TextMode="Password" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Password" ControlToValidate="password"></asp:RequiredFieldValidator>
      </div>
    </div>




 
    
    <div class="row">
<asp:Button runat="server" ID="new" Text="New" CausesValidation="False" OnClick="new_Click"  />
   <asp:Button runat="server" ID="insert" Text="Insert" OnClick="insert_Click1" />
   <asp:Button runat="server" ID="update" Text="update" OnClick="update_Click1"/>
   <asp:Button runat="server" ID="delete" Text="delete" OnClick="delete_Click1"  />
        <br />
        <br />
        <br />
        <asp:TextBox ID="searchtextbox" runat="server" placeholder="Search Employee By The Name"></asp:TextBox>
       
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="number" HeaderText="number" SortExpression="number" />
                <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="joininingdate" HeaderText="joininingdate" DataFormatString="{0:d}" SortExpression="joininingdate" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [employeedata]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [employeedata] WHERE ([name] = @name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="searchtextbox" Name="name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
   <br />

    </div>
  
</div>

</asp:Content>

