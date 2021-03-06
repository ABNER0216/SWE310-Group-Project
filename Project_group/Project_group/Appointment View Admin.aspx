<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Appointment View Admin.aspx.cs" Inherits="Project_group.Appointment_View_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" src="imgs/report.png" alt="">
      <h2>Appointment Information</h2>
      <p class="lead">Below are the information of the appointments.</p>
    </div>
    <div class="container">

    <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-striped table-hover table-responsive" 
        AutoGenerateColumns="False" DataKeyNames="VacAID" DataSourceID="VAC_view" Width="100%">
        <Columns>
            <asp:BoundField DataField="VacAID" HeaderText="Vaccine ID" InsertVisible="False" ReadOnly="True" SortExpression="VacAID" />
            <asp:BoundField DataField="AppointmentDate" HeaderText="Appointment Date" SortExpression="AppointmentDate" />
            <asp:BoundField DataField="AppointmentTime" HeaderText="Appointment Time" SortExpression="AppointmentTime" />
            <asp:BoundField DataField="AppointmentPlace" HeaderText="Appointment Place" SortExpression="AppointmentPlace" />
            <asp:BoundField DataField="ActionTime" HeaderText="Action Time" SortExpression="ActionTime" />
            <asp:BoundField DataField="UserID" HeaderText="User ID" SortExpression="UserID" />
            <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
            <asp:BoundField DataField="VacInfoID" HeaderText="Vaccine info ID" SortExpression="VacInfoID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="VAC_view" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString2 %>" SelectCommand="SELECT * FROM [VacAppointment] ORDER BY [VacAID]"></asp:SqlDataSource>

    <asp:GridView ID="GridView2" runat="server" 
        CssClass="table table-bordered table-striped table-hover table-responsive" 
        AutoGenerateColumns="False" DataKeyNames="NATAID" DataSourceID="NAT_view" Width="100%" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="NATAID" HeaderText="NAT ID" InsertVisible="False" ReadOnly="True" SortExpression="NATAID" />
            <asp:BoundField DataField="NATPlace" HeaderText="NAT Place" SortExpression="NATPlace" />
            <asp:BoundField DataField="ActionTime" HeaderText="Action Time" SortExpression="ActionTime" />
            <asp:BoundField DataField="UserID" HeaderText="User ID" SortExpression="UserID" />
            <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
            <asp:BoundField DataField="ANATDate" HeaderText="NAT Date" SortExpression="ANATDate" />
            <asp:BoundField DataField="ANATTime" HeaderText="NAT Time" SortExpression="ANATTime" />

        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="NAT_view" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString2 %>" SelectCommand="SELECT * FROM [NATAppointment] ORDER BY [NATAID]"></asp:SqlDataSource>
        <div class="btn btn-lg btn-secondary fw-bold border-white bg-white" style="width:400px; color:#696d7d">
            <a href=" " style="color:#696d7d"><< Back to Home</a><br>
    </div>
    </div>
</asp:Content>
