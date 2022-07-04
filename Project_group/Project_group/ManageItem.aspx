<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ManageItem.aspx.cs" Inherits="Project_group.ManageItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [ItemList]" UpdateCommand="update [ItemList] set [ItemName]=@ItemName, [Inventory]=@Inventory, [Price]=@Price, [Image]=@FileUpload1, [Description]=@Description where [ItemID]=@ItemID">
        <UpdateParameters>
            <asp:Parameter Name="ItemName" />
            <asp:Parameter Name="Inventory" />
            <asp:Parameter Name="Price" />
            <asp:Parameter Name="Image"/>
            <asp:Parameter Name="Description" />
            <asp:Parameter Name="ItemID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" SelectCommand="SELECT * FROM [OrderInfo]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ItemID" HeaderText="ItemID" SortExpression="ItemID" />
            <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
            <asp:BoundField DataField="Inventory" HeaderText="Inventory" SortExpression="Inventory" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <br />
    Input item name: <input id="itemname" runat="server" />
    Input item price:<input id="itemprice" runat="server" />
    Input item number:<input id="itemnumber" runat="server" />
    <button id="createnewitem" runat="server" OnServerClick="CreateNewItem"></button>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
            <asp:BoundField DataField="OrderUser" HeaderText="OrderUser" SortExpression="OrderUser" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="OrderAddress" HeaderText="OrderAddress" SortExpression="OrderAddress" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
            <asp:BoundField DataField="Realname" HeaderText="Realname" SortExpression="Realname" />
            <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
        </Columns>
    </asp:GridView>
   
</asp:Content>
