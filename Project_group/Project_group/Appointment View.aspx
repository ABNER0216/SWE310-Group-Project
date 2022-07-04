<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Appointment View.aspx.cs" Inherits="Project_group.Appointment_View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:GridView ID="VAC_GridView" runat="server" DataSourceID="Vac_info" Width="100%" AutoGenerateColumns="False" DataKeyNames="VacAID" onrowcommand="VaccineGridView_RowCommand">
            <Columns>
                <asp:BoundField DataField="VacAID" HeaderText="VacAID" InsertVisible="False" ReadOnly="True" SortExpression="VacAID" />
                <asp:BoundField DataField="AppointmentDate" HeaderText="AppointmentDate" SortExpression="AppointmentDate" />
                <asp:BoundField DataField="AppointmentTime" HeaderText="AppointmentTime" SortExpression="AppointmentTime" />
                <asp:BoundField DataField="AppointmentPlace" HeaderText="AppointmentPlace" SortExpression="AppointmentPlace" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:ButtonField buttontype="Button" commandname="Cancel" headertext="Action" text="Cancel" />
            </Columns>
        </asp:GridView>       
        <asp:SqlDataSource ID="Vac_info" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" SelectCommand="SELECT [VacAID], [AppointmentDate], [AppointmentTime], [AppointmentPlace], [UserName] FROM [VacAppointment] WHERE ([UserID] = @UserID)">
            <SelectParameters>
                <asp:SessionParameter Name="UserID" SessionField="Userid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <asp:GridView ID="NAT_GridView" runat="server" AutoGenerateColumns="False" DataKeyNames="NATAID" DataSourceID="NAT_info" Width="100%" onrowcommand="NATGridView_RowCommand">
            <Columns>
                <asp:BoundField DataField="NATAID" HeaderText="NATAID" InsertVisible="False" ReadOnly="True" SortExpression="NATAID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="NATPlace" HeaderText="NATPlace" SortExpression="NATPlace" />
                <asp:BoundField DataField="ANATDate" HeaderText="ANATDate" SortExpression="ANATDate" />
                <asp:BoundField DataField="ANATTime" HeaderText="ANATTime" SortExpression="ANATTime" />
                <asp:ButtonField buttontype="Button" commandname="Cancel" headertext="Action" text="Cancel"/>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="NAT_info" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" SelectCommand="SELECT [NATAID], [NATPlace], [UserName], [ANATDate], [ANATTime] FROM [NATAppointment] WHERE ([UserID] = @UserID)">
            <SelectParameters>
                <asp:SessionParameter Name="UserID" SessionField="Userid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
       
    </div>
</asp:Content>
