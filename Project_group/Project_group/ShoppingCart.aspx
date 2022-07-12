<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Project_group.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .input_custom:hover {
            border-color: #faf3dd;
            box-shadow: 0 0 0 0.25rem rgba(143, 192, 169, 0.45);
        }

        .input_custom:focus {
            border-color: #faf3dd;
            box-shadow: 0 0 0 0.25rem rgba(143, 192, 169, 0.35);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" src="imgs/cart- full.png" alt="">
      <h2>Shopping Carts</h2>
      <p class="lead">Below are the items you added into your cart.</p>
    </div>
    <div class="container">
        <asp:SqlDataSource ID="ShopCart" runat="server" ConnectionString="Data Source=雷义焘\SQLEXPRESS01;Initial Catalog=community;Integrated Security=True" OnSelecting="ShopCart_Selecting" SelectCommand="SELECT * FROM [ShoppingCart] WHERE ([UserName] = @UserName)" DeleteCommand="delete from [ShoppingCart] where (UserName = @UserName) and ([ItemId] = @ItemId)" UpdateCommand="update [ShoppingCart] set [ItemNum] = @itemnum where (UserName = @UserName) and ([ItemId] = @ItemId)">
            <DeleteParameters>
                <asp:Parameter Name="UserName" />
                <asp:Parameter Name="ItemId" />
            </DeleteParameters>
            <SelectParameters>
                <asp:Parameter Name="UserName" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="CartGrid" runat="server"  
            CssClass="table table-bordered table-striped table-hover table-responsive" 
            AutoGenerateColumns="False" EmptyDataText="The shopping cart is empty." 
            HorizontalAlign="Center" Width="400px" DataKeyNames="UserName,ItemId" 
            DataSourceID="ShopCart" OnRowDataBound="calculateprice" 
            OnSelectedIndexChanged="CartGrid_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="ItemName" HeaderText="Item" SortExpression="ItemName">
                <ItemStyle HorizontalAlign="Center" Width="40px" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="num">
                    <ItemTemplate>
                        <asp:TextBox CssClass="form-control input_custom" ID="itemnum" runat="server" Text='<%# Bind("ItemNum") %>' OnTextChanged="TextBox_TextChanged" Width="60px" AutoPostBack="True"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="itemnum" ErrorMessage="Please input a valid number." MaximumValue="9999" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    </ItemTemplate>
                    <ItemStyle Width="40px" />
                </asp:TemplateField>
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                <ItemStyle HorizontalAlign="Center" Width="40px" />
                </asp:BoundField>
                <asp:ButtonField CommandName="Delete" Text="Delete" HeaderText="Operation" >
                    <ControlStyle BorderStyle="None" CssClass="btn btn-danger" />
                    <ItemStyle Wrap="False" HorizontalAlign="Center" Width="40px" />
                    </asp:ButtonField>
            </Columns>
        </asp:GridView>
        <center>
            <p class="lead">
                <asp:Label class="lead" ID="PriceTotal" runat="server" Text=""></asp:Label>
            </p>
        
        <div class="btn btn-lg btn-secondary fw-bold border-white bg-white" style="width:400px; color:#696d7d">
            <a href="ItemList.aspx" style="color:#696d7d"><< Back to Store</a><br>
            <a href="CheckOut.aspx" style="color:#696d7d">>> Check Out</a><br>
        </div>
        </center>
    </div>
</asp:Content>
