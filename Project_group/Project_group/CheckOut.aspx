<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="Project_group.CheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <asp:Panel ID="content" runat="server">
            <p>Order Information</p>
            <asp:SqlDataSource ID="orderitems" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" OnSelecting="Orderitems_Selecting" SelectCommand="SELECT * FROM [ShoppingCart] WHERE ([UserName] = @UserName)">
                <SelectParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="orderitems" OnRowDataBound="GridView1_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="ItemName" HeaderText="Name" SortExpression="ItemName" />
                    <asp:BoundField DataField="ItemNum" HeaderText="Number" SortExpression="ItemNum" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Inventory" HeaderText="Inventory" SortExpression="Inventory" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="accountdata" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" OnSelecting="accountdata_Selecting" SelectCommand="SELECT * FROM [UserInfo] WHERE ([UserName] = @UserName)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="UserName" QueryStringField="UserName" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <table class="w-100">
                <tr>
                        <td colspan="2">Name:<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FullName") %>' Width="236px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">Address:<br /><asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Address") %>' Height="50px" OnTextChanged="TextBox2_TextChanged" Width="276px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">Contant Number:<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PhoneNo") %>'></asp:TextBox>
                        </td>
                    </tr>
            </table>
            <asp:Button ID="SubmitOrder" runat="server" Text="Submit" OnClick="SubmitOrder_Click" />
            <br />
        <div class="total">
            Total price: <asp:Label ID="totalprice" runat="server" Text="0"></asp:Label>
        </div>
    </asp:Panel>
    <asp:Panel ID="complete" runat="server" Visible="False">
        <div class="successinfo">
            <p>Your order has been submitted successful.</p>

        </div>
    </asp:Panel>
</asp:Content>
