<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="food.aspx.cs" Inherits="food" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
      #ImageButton1 
        {
        margin-left:-10px;
        }
        #Image1{
          
        }
        #DataList1
        {
            
            margin:0 0 40px 0;
            text-align: center;
        }
        .style5
        {
            width:85%;
            border: 1px solid #000000;
        }
        .style6
        {
            height: 31px;
            text-align: center;
        }
        .style7
        {
            height: 34px;
            text-align: center;
        }
        .style8
        {
            height: 28px;
        }
        .style9
        {
            height: 41px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AddFood]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AddFood] WHERE ([FoodName] = @FoodName)">
             <SelectParameters>
              <asp:ControlParameter ControlID="searchtextbox" Name="FoodName" PropertyName="Text" Type="String" />
          </SelectParameters>
        </asp:SqlDataSource>
    <br/>
   
       
   
    <div class="container">

           <div style="margin-left:800px;">
          <asp:TextBox ID="searchtextbox" runat="server" placeholder="Enter Food "></asp:TextBox>
              <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
             </div>
          <asp:Button ID="Button2" runat="server" Text="View All Product" OnClick="Button2_Click" />


          
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label5" runat="server" Text="Your cart product is" Visible="False"></asp:Label>
          <asp:Label ID="Label6" runat="server" Text=" lable" Visible="False"></asp:Label>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:HyperLink ID="HyperLink1" runat="server" Visible="False" NavigateUrl="~/AddtoCart.aspx">show cart product</asp:HyperLink>

           <br />



        <asp:DataList ID="DataList1" runat="server"  DataSourceID="SqlDataSource1" 
          RepeatColumns="4" onitemcommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound" 
            >
          <ItemTemplate>
          <div style="width:270px;">
              <table class="style5" >
              
                  <tr>
                      <td class="style7" bgcolor="White">
                          Product Id:<asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="style6" bgcolor="Red">
                          <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
                          <asp:Label ID="Label3" runat="server" Text='<%# Eval("FoodName") %>'></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="style8">
                          <asp:Image ID="Image1" runat="server" Height="150px" 
                              ImageUrl='<%# Eval("FileUpload1") %>' Width="230px" style="align-content:center; margin-left: 0px;"/>
                      </td>
                  </tr>
                  <tr>
                      <td class="style8">
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Price:<asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="style9" height="20px">
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quantity:<asp:DropDownList ID="DropDownList1" runat="server" Width="41px">
                              <asp:ListItem>1</asp:ListItem>
                              <asp:ListItem>2</asp:ListItem>
                              <asp:ListItem>3</asp:ListItem>
                              <asp:ListItem>4</asp:ListItem>
                              <asp:ListItem>5</asp:ListItem>
                              <asp:ListItem>6</asp:ListItem>
                              <asp:ListItem>7</asp:ListItem>
                              <asp:ListItem>8</asp:ListItem>
                              <asp:ListItem>9</asp:ListItem>
                              <asp:ListItem>10</asp:ListItem>
                              <asp:ListItem>11</asp:ListItem>
                              <asp:ListItem>12</asp:ListItem>
                              <asp:ListItem>13</asp:ListItem>
                              <asp:ListItem>14</asp:ListItem>
                              <asp:ListItem>15</asp:ListItem>
                              <asp:ListItem>16</asp:ListItem>
                              <asp:ListItem>17</asp:ListItem>
                              <asp:ListItem>18</asp:ListItem>
                              <asp:ListItem>19</asp:ListItem>
                              <asp:ListItem>20</asp:ListItem>
                              <asp:ListItem>21</asp:ListItem>
                              <asp:ListItem>22</asp:ListItem>
                              <asp:ListItem>23</asp:ListItem>
                              <asp:ListItem>24</asp:ListItem>
                              <asp:ListItem>25</asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;
                      </td>
                  </tr>
                  <tr>
                      <td class="style9" height="20px" style="background-color:red;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;Available:<asp:Label ID="Label7" runat="server"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="style9" height="20px">
                          <asp:ImageButton ID="ImageButton2" runat="server"  CommandArgument='<%# Eval("Id") %>' CommandName="add to cart" Height="50px" ImageUrl="~/images/add to cart.png" OnClick="ImageButton2_Click" Width="230px" />
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" 
                              ImageUrl="~/images/buy now.jpg" Width="230px" 
                              CommandArgument='<%# Eval("Id") %>' CommandName="buy now" OnClick="ImageButton1_Click" />
                          
                          <br />
                          
                      </td>
                  </tr>
                  </div>
              
              <caption>
                  <br />
                  </table>
              </caption>
          </ItemTemplate>
      </asp:DataList>
  </div>
    <br />
    <br />
 </div>
          
       
          
</asp:Content>

