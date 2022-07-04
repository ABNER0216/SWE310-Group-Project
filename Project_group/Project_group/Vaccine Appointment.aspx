<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Vaccine Appointment.aspx.cs" Inherits="Project_group.Vaccine_Appointment" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="min-height:800px">
        <div class="content"></div>
        <center>
            <h1>Vaccine Appointment</h1>
        </center>
        <div class="form">
            <center>
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                <asp:TextBox ID="tb_name" runat="server"></asp:TextBox>
            </center>
            <center>
                <asp:Label ID="Label2" runat="server" Text="Choose Place: "></asp:Label>
                <asp:DropDownList ID="ddl_place" runat="server" AutoPostBack="true" DataSourceID="VacPlace" DataTextField="VPlace" DataValueField="VPlace" OnSelectedIndexChanged="ddl_place_SelectedIndexChanged"></asp:DropDownList>
                <asp:SqlDataSource ID="VacPlace" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" SelectCommand="SELECT DISTINCT [VPlace] FROM [VaccineInfo] ORDER BY [VPlace]"></asp:SqlDataSource>
            </center>
            <center>
                <asp:Label ID="Label3" runat="server" Text="Choose Date: "></asp:Label>
                <asp:DropDownList ID="ddl_date" runat="server" AutoPostBack="true" DataSourceID="VacDate" DataTextField="VDate" DataValueField="VDate"></asp:DropDownList>
                <asp:SqlDataSource ID="VacDate" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" SelectCommand="SELECT DISTINCT [VDate] FROM [VaccineInfo] WHERE ([VPlace] = @VPlace)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddl_place" Name="VPlace" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </center>
            <center>
                <asp:Label ID="Label4" runat="server" Text="Choose Time: "></asp:Label>
                <asp:DropDownList ID="ddl_time" runat="server" AutoPostBack="true" DataSourceID="VacTime" DataTextField="VTime" DataValueField="VTime" OnSelectedIndexChanged="ddl_time_SelectedIndexChanged"></asp:DropDownList>
                <asp:SqlDataSource ID="VacTime" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" SelectCommand="SELECT [VTime] FROM [VaccineInfo] WHERE (([VPlace] = @VPlace) AND ([VDate] = @VDate)) ORDER BY [VTime]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddl_place" Name="VPlace" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="ddl_date" Name="VDate" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </center>
            <center>
                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="VacInventory" OnPageIndexChanging="DetailsView1_PageIndexChanging" DataKeyNames="VID">
                    <Fields>
                        <asp:BoundField DataField="Inventory" HeaderText="Inventory" SortExpression="Inventory" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="VacInventory" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" SelectCommand="SELECT [VID], [Inventory] FROM [VaccineInfo] WHERE (([VPlace] = @VPlace) AND ([VDate] = @VDate) AND ([VTime] = @VTime))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddl_place" Name="VPlace" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="ddl_date" Name="VDate" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="ddl_time" Name="VTime" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </center>
            <center>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                
            </center>

        </div>



    </div>

</asp:Content>
