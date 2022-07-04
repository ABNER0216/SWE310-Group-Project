<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="NAT Appointment.aspx.cs" Inherits="Project_group.NAT_Appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="min-height:800px">
    <center>
        <h1>NAT Appointment</h1>
        <asp:Label ID="Label1" runat="server" Text="Name "></asp:Label>
        <asp:TextBox ID="tb_Name" runat="server" placeholder="Name"></asp:TextBox>       
    </center>
    <center>
        <asp:Label ID="Label2" runat="server" Text="Appointment Place "></asp:Label>
        <asp:DropDownList ID="dll_NATPlace" runat="server" AutoPostBack="True" DataSourceID="NAT_place" DataTextField="NATAddress" DataValueField="NATAddress" OnSelectedIndexChanged="dll_NATPlace_SelectedIndexChanged"></asp:DropDownList>
        <asp:SqlDataSource ID="NAT_place" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" SelectCommand="SELECT DISTINCT [NATAddress] FROM [NATTime]"></asp:SqlDataSource>
        
    </center>
    <center>
        <asp:Label ID="Label3" runat="server" Text="Appointment Date"></asp:Label>
        <asp:DropDownList ID="ddl_NATDate" runat="server" AutoPostBack="True" DataSourceID="NATDATE" DataTextField="NATDate" DataValueField="NATDate" DataFormatString="{0: yyyy/MM/dd}" OnSelectedIndexChanged="ddl_NATDate_SelectedIndexChanged"></asp:DropDownList>
        <asp:SqlDataSource ID="NATDATE" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" SelectCommand="SELECT DISTINCT [NATDate] FROM [NATTime] WHERE ([NATAddress] = @NATAddress)">
            <SelectParameters>
                <asp:ControlParameter ControlID="dll_NATPlace" Name="NATAddress" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
    </center>
    <center>
        <asp:Label ID="Label5" runat="server" Text="Appointment time"></asp:Label>
        <asp:DropDownList ID="ddl_NATtime" runat="server" AutoPostBack="true" DataSourceID="NATTime" DataTextField="NATTime" DataValueField="NATTime" OnSelectedIndexChanged="ddl_NATtime_SelectedIndexChanged"></asp:DropDownList>
        <asp:SqlDataSource ID="NATTime" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" SelectCommand="SELECT [NATTime] FROM [NATTime] WHERE (([NATAddress] = @NATAddress) AND ([NATDate] = @NATDate))">
            <SelectParameters>
                <asp:ControlParameter ControlID="dll_NATPlace" Name="NATAddress" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddl_NATDate" Name="NATDate" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
    </center>
    <center>
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    </center>
        </div>
</asp:Content>
