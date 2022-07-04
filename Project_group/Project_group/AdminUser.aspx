<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AdminUser.aspx.cs" Inherits="Project_group.AdminUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" DeleteCommand="delete from [UserInfo] where [UserID]=@UserID" SelectCommand="SELECT * FROM [UserInfo]" UpdateCommand="update [UserInfo] set [UserName] = @UserName, [PassWord]=@PassWord, [FullName]=@FullName, [Age]=@Age, [PhoneNo]=@PhoneNo, [UserAddress]=@UserAddress, [Vaccine]=@Vaccine, [HealthCode]=@HealthCode, [ClockInStatus]=@ClockInStatus where UserID=@UserID">
        <DeleteParameters>
            <asp:Parameter Name="UserID" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" />
            <asp:Parameter Name="PassWord" />
            <asp:Parameter Name="FullName" />
            <asp:Parameter Name="Age" />
            <asp:Parameter Name="PhoneNo" />
            <asp:Parameter Name="UserAddress" />
            <asp:Parameter Name="Vaccine" />
            <asp:Parameter Name="HealthCode" />
            <asp:Parameter Name="ClockInStatus" />
            <asp:Parameter Name="UserID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" EmptyDataText="There is no user now." AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1" OnRowEditing="GridView1_RowEditing" >
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
            <asp:BoundField DataField="UserAddress" HeaderText="UserAddress" SortExpression="UserAddress" />
            <asp:BoundField DataField="Vaccine" HeaderText="Vaccine" SortExpression="Vaccine" />
            <asp:BoundField DataField="VaccineTime" ReadOnly="true" HeaderText="VaccineTime" SortExpression="VaccineTime" />
            <asp:BoundField DataField="HealthCode" HeaderText="HealthCode" SortExpression="HealthCode" />
            <asp:CheckBoxField DataField="ClockInStatus" HeaderText="ClockInStatus" SortExpression="ClockInStatus" />
            <asp:ButtonField CommandName="Delete" Text="Delete" />
            <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    Create New User<br />
    Username<input ID="username" runat="server" />
    <br />
    Password<input ID="password" runat="server" /><br />
    <button ID="createnew" runat="server" Text="Create" style="height: 26px" OnServerClick="Create_OnClickClient"/>

</asp:Content>
