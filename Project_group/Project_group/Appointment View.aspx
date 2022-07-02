<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Appointment View.aspx.cs" Inherits="Project_group.Appointment_View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="Vac_info" OnPageIndexChanging="DetailsView1_PageIndexChanging"></asp:DetailsView>
        <asp:SqlDataSource ID="Vac_info" runat="server"></asp:SqlDataSource>
    </div>
</asp:Content>
