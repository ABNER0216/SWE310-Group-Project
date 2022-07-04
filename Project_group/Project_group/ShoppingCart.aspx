<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Project_group.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="shoppingDiv">
        <p>Shopping Carts</p>
        <asp:SqlDataSource ID="ShopCart" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" OnSelecting="ShopCart_Selecting" SelectCommand="SELECT * FROM [ShoppingCart] WHERE ([UserName] = @UserName)" DeleteCommand="delete from [ShoppingCart] where (UserName = @UserName) and ([ItemId] = @ItemId)" UpdateCommand="update [ShoppingCart] set [ItemNum] = @itemnum where (UserName = @UserName) and ([ItemId] = @ItemId)">
            <DeleteParameters>
                <asp:Parameter Name="UserName" />
                <asp:Parameter Name="ItemId" />
            </DeleteParameters>
            <SelectParameters>
                <asp:Parameter Name="UserName" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="CartGrid" runat="server" AutoGenerateColumns="False" EmptyDataText="The shopping cart is empty." HorizontalAlign="Center" Width="400px" DataKeyNames="UserName,ItemId" DataSourceID="ShopCart" OnRowDataBound="calculateprice" OnSelectedIndexChanged="CartGrid_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="ItemName" HeaderText="Item" SortExpression="ItemName">
                <ItemStyle HorizontalAlign="Center" Width="40px" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="num">
                    <ItemTemplate>
                        <asp:TextBox ID="itemnum" runat="server" Text='<%# Bind("ItemNum") %>' OnTextChanged="TextBox_TextChanged" Width="20px" AutoPostBack="True"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="itemnum" ErrorMessage="Please input a valid number." MaximumValue="9999" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    </ItemTemplate>
                    <ItemStyle Width="40px" />
                </asp:TemplateField>
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                <ItemStyle HorizontalAlign="Center" Width="40px" />
                </asp:BoundField>
                <asp:ButtonField CommandName="Delete" Text="Delete" />
            </Columns>
        </asp:GridView>
        <p>
            <asp:Label ID="PriceTotal" runat="server" Text=""></asp:Label>
        </p>
        <p><asp:HyperLink runat="server" NavigateUrl="~/ItemList.aspx"></asp:HyperLink></p>
        <p><a href="CheckOut.aspx">Check Out结账了</a></p>
    </div>
</asp:Content>
