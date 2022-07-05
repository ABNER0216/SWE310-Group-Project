<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="NAT_Admin.aspx.cs" Inherits="Project_group.NAT_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView2" runat="server" Width="100%" AutoGenerateColumns="false" DataKeyNames="ID" DataSourceID="NAT_info">
        <Columns>           
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="NATAddress" HeaderText="NAT Address" SortExpression="NATAddress" />
            <asp:BoundField DataField="NATDate" HeaderText="NAT Date" SortExpression="NATDate" />
            <asp:BoundField DataField="NATTime" HeaderText="NAT Time" SortExpression="NATTime" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" edittext="Edit" canceltext="Discard"
            updatetext="Revise" deletetext="Delete" headertext="Action" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="NAT_info" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" SelectCommand="SELECT * FROM [NATTime] ORDER BY [ID]" DeleteCommand="DELETE FROM [NATTime] WHERE [ID] = @ID" InsertCommand="INSERT INTO [NATTime] ([NATAddress], [NATDate], [NATTime]) VALUES (@NATAddress, @NATDate, @NATTime)" UpdateCommand="UPDATE [NATTime] SET [NATAddress] = @NATAddress, [NATDate] = @NATDate, [NATTime] = @NATTime WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NATAddress" Type="String" />
            <asp:Parameter Name="NATDate" Type="String" />
            <asp:Parameter Name="NATTime" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NATAddress" Type="String" />
            <asp:Parameter Name="NATDate" Type="String" />
            <asp:Parameter Name="NATTime" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <label>NAT Place</label>
    <asp:TextBox ID="Place" runat="server"></asp:TextBox>

    <label>NAT Date</label>
    <asp:TextBox ID="Date" runat="server"></asp:TextBox>

    <label>NAT Time</label>
    <asp:TextBox ID="Time" runat="server"></asp:TextBox>

    <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" />
</asp:Content>
