<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="VAT_info.aspx.cs" Inherits="Project_group.Appointment_info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="VID" DataSourceID="VAC_info" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            
            <asp:BoundField DataField="VID" HeaderText="Vaccine ID" InsertVisible="False" ReadOnly="True" SortExpression="VID" />
            <asp:BoundField DataField="VPlace" HeaderText="Vaccine Place" SortExpression="VPlace" />
            <asp:BoundField DataField="VDate" HeaderText="Vaccine Date" SortExpression="VDate" />
            <asp:BoundField DataField="VTime" HeaderText="Vaccine Time" SortExpression="VTime" />
            <asp:BoundField DataField="Inventory" HeaderText="Inventory" SortExpression="Inventory" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" edittext="Edit" canceltext="Discard"
            updatetext="Revise" deletetext="Delete" headertext="Action"/>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="VAC_info" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" SelectCommand="SELECT * FROM [VaccineInfo] ORDER BY [VID]" DeleteCommand="DELETE FROM [VaccineInfo] WHERE [VID] = @VID" InsertCommand="INSERT INTO [VaccineInfo] ([VPlace], [VDate], [VTime], [Inventory]) VALUES (@VPlace, @VDate, @VTime, @Inventory)" UpdateCommand="UPDATE [VaccineInfo] SET [VPlace] = @VPlace, [VDate] = @VDate, [VTime] = @VTime, [Inventory] = @Inventory WHERE [VID] = @VID">
        <DeleteParameters>
            <asp:Parameter Name="VID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="VPlace" Type="String" />
            <asp:Parameter Name="VDate" Type="String" />
            <asp:Parameter Name="VTime" Type="String" />
            <asp:Parameter Name="Inventory" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="VPlace" Type="String" />
            <asp:Parameter Name="VDate" Type="String" />
            <asp:Parameter Name="VTime" Type="String" />
            <asp:Parameter Name="Inventory" Type="Int32" />
            <asp:Parameter Name="VID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <label>Vaccine Place</label>
    <asp:TextBox ID="Place" runat="server"></asp:TextBox>

    <label>Vaccine Date</label>
    <asp:TextBox ID="Date" runat="server"></asp:TextBox>

    <label>Vaccine Time</label>
    <asp:TextBox ID="Time" runat="server"></asp:TextBox>

    <label>Vaccine Inventory</label>
    <asp:TextBox ID="Inventory" runat="server"></asp:TextBox>

    <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" />
</asp:Content>
