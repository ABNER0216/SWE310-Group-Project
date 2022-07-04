<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DailyReportManage.aspx.cs" Inherits="Project_group.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" src="imgs/report.png" alt="">
      <h2>Daily Reports</h2>
      <p class="lead">Below are the records of the community daily health report.</p>
    </div>

    <div class="container">
        <asp:GridView runat="server" id="GridView1" CssClass="table table-bordered table-striped table-hover table-responsive" 
        AutoGenerateColumns="False" ForeColor="#4A4D59" OnRowDeleting="Unnamed1_RowDeleting" DataKeyNames="ClockInID" AllowSorting="True" DataSourceID="SqlDataSource1">
    
            <Columns>  
                <asp:BoundField DataField="ClockInID" HeaderText="Report ID" InsertVisible="False" ReadOnly="True" SortExpression="ClockInID" />
                <asp:BoundField DataField="ClockInTime" HeaderText="Report Time" SortExpression="ClockInTime" />
                <asp:BoundField DataField="CIUserName" HeaderText="Reporter" SortExpression="CIUserName" />
                <asp:BoundField DataField="CIUserPhone" HeaderText="Contact Number" SortExpression="CIUserPhone" />
                <asp:BoundField DataField="CAddress" HeaderText="Address" SortExpression="CAddress" />
                <asp:BoundField DataField="Temperature" HeaderText="Temperature" SortExpression="Temperature" />
                <asp:BoundField DataField="IsContact" HeaderText="Exposure to risk" SortExpression="IsContact" />
                <asp:BoundField DataField="Cough" HeaderText="Cough" SortExpression="Cough" />
                <asp:BoundField DataField="Cold" HeaderText="Cold" SortExpression="Cold" />
                <asp:BoundField DataField="Fever" HeaderText="Fever" SortExpression="Fever" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" >
                <ControlStyle BorderStyle="None" CssClass="btn btn-danger" />
                <ItemStyle Wrap="False" />
                </asp:CommandField>
              </Columns>
            
            <HeaderStyle HorizontalAlign="Center" CssClass="table"/>
    
        </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" SelectCommand="SELECT [IsContact], [ClockInID], [ClockInTime], [CIUserName], [CIUserPhone], [CAddress], [Temperature], [Cough], [Cold], [Fever] FROM [ClockIN]"></asp:SqlDataSource>
    </div>
    <div class="btn btn-lg btn-secondary fw-bold border-white bg-white" style="width:400px; color:#696d7d">
        <a href="StartPage.aspx" style="color:#696d7d"><< Back to Home</a><br>
    </div>
</asp:Content>
