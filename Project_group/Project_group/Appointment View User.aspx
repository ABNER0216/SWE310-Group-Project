<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Appointment View User.aspx.cs" Inherits="Project_group.Appointment_View_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" src="imgs/report.png" alt="">
      <h2>Vaccine Appointment Information</h2>
      <p class="lead">Below is the information of your Vaccine and NAT information</p>
    </div>

    <div class="container">
    <div>
        <div class="lead">
                <center>
                    <asp:Label ID="Label1" runat="server" ForeColor="#FF6600" Font-Bold="True"></asp:Label>
                </center>
            </div>
        <asp:GridView ID="VAC_GridView" runat="server" CssClass="table table-bordered table-striped table-hover table-responsive" DataSourceID="Vac_info" Width="100%" AutoGenerateColumns="False" DataKeyNames="VacAID" onrowcommand="VaccineGridView_RowCommand">
            <Columns>
                <asp:BoundField DataField="VacAID" HeaderText="VacAID" InsertVisible="False" ReadOnly="True" SortExpression="VacAID" />
                <asp:BoundField DataField="UserName" HeaderText="Appointment Person" SortExpression="UserName" />
                <asp:BoundField DataField="AppointmentPlace" HeaderText="Appointment Place" SortExpression="AppointmentPlace" />
                <asp:BoundField DataField="AppointmentDate" HeaderText="Appointment Date" SortExpression="AppointmentDate" />
                <asp:BoundField DataField="AppointmentTime" HeaderText="Appointment Time" SortExpression="AppointmentTime" />
                <asp:ButtonField buttontype="Button" commandname="Cancel" headertext="Action" text="Cancel" >
                <ControlStyle BorderStyle="None" CssClass="btn btn-danger" />
                    <ItemStyle Wrap="False" />
                </asp:ButtonField>
            </Columns>
            <HeaderStyle HorizontalAlign="Center" CssClass="table"/>
        </asp:GridView>       
        <asp:SqlDataSource ID="Vac_info" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString2 %>" SelectCommand="SELECT [VacAID], [AppointmentDate], [AppointmentTime], [AppointmentPlace], [UserName] FROM [VacAppointment] WHERE ([UserID] = @UserID)">
            <SelectParameters>
                <asp:SessionParameter Name="UserID" SessionField="Userid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
            <div class="lead">
                <center>
                    <asp:Label ID="Label2" runat="server" ForeColor="#FF6600" Font-Bold="True"></asp:Label>
                </center>
            </div>
            <asp:GridView ID="NAT_GridView" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped table-hover table-responsive" DataKeyNames="NATAID" DataSourceID="NAT_info" Width="100%" onrowcommand="NATGridView_RowCommand">
                <Columns>
                    <asp:BoundField DataField="NATAID" HeaderText="NAT ID" InsertVisible="False" ReadOnly="True" SortExpression="NATAID" />
                    <asp:BoundField DataField="UserName" HeaderText="Appointment Person" SortExpression="UserName" />
                    <asp:BoundField DataField="NATPlace" HeaderText="NATPlace" SortExpression="NATPlace" />
                    <asp:BoundField DataField="ANATDate" HeaderText="ANATDate" SortExpression="ANATDate" />
                    <asp:BoundField DataField="ANATTime" HeaderText="ANATTime" SortExpression="ANATTime" />
                    <asp:ButtonField buttontype="Button" commandname="Cancel" headertext="Action" text="Cancel" >
                    <ControlStyle BorderStyle="None" CssClass="btn btn-danger" />
                        <ItemStyle Wrap="False" />
                    </asp:ButtonField>
                </Columns>
                <HeaderStyle HorizontalAlign="Center" CssClass="table"/>
            </asp:GridView>
            <asp:SqlDataSource ID="NAT_info" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString2 %>" SelectCommand="SELECT [NATAID], [NATPlace], [UserName], [ANATDate], [ANATTime] FROM [NATAppointment] WHERE ([UserID] = @UserID)">
                <SelectParameters>
                    <asp:SessionParameter Name="UserID" SessionField="Userid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
       
        </div>
     </div>
    <center>
    <div class="btn btn-lg btn-secondary fw-bold border-white bg-white" style="width:400px; color:#696d7d">
        <a href="AdminPage.aspx" style="color:#696d7d"><< Back to Home</a><br>
    </div>
        </center>
</asp:Content>
