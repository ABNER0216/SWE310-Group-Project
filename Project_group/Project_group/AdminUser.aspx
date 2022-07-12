<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminUser.aspx.cs" Inherits="Project_group.AdminUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
.form_content {
background-image: url(imgs/wholepaper.jpg);
background-attachment: fixed;
}

.input_custom:hover {
    border-color: #faf3dd;
    box-shadow: 0 0 0 0.25rem rgba(143, 192, 169, 0.25);
}

.input_custom:focus {
    border-color: #faf3dd;
    box-shadow: 0 0 0 0.25rem rgba(143, 192, 169, 0.45);
}
.btn_custom{
    background-color:rgba(143, 192, 169, 0.45);
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="py-4 text-center">
      <img class="d-block mx-auto mb-4" src="imgs/user center.png" alt="">
      <h2>User Management</h2>
      <p class="lead">Below are the Information of the User.</p>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:communityConnectionString2 %>" 
        DeleteCommand="delete from [UserInfo] where [UserID]=@UserID" 
        SelectCommand="SELECT * FROM [UserInfo]" 
        UpdateCommand="update [UserInfo] set [UserName] = @UserName, [PassWord]=@PassWord, [FullName]=@FullName, [Age]=@Age, [PhoneNo]=@PhoneNo, [UserAddress]=@UserAddress, [Vaccine]=@Vaccine, [HealthCode]=@HealthCode, [ClockInStatus]=@ClockInStatus where UserID=@UserID">
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
    <asp:GridView ID="GridView1" runat="server" 
        CssClass="table table-bordered table-striped table-hover table-responsive" 
        EmptyDataText="There is no user now." AutoGenerateColumns="False" 
        DataKeyNames="UserID" DataSourceID="SqlDataSource1" 
        OnRowEditing="GridView1_RowEditing" >
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
            <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowEditButton="True" EditText="Edit">
                <ControlStyle BorderStyle="None" CssClass="btn btn-success" />
                <ItemStyle Wrap="False" />
                </asp:CommandField>
        </Columns>
    </asp:GridView>
        <div class="container">
            <div class="row">
                <div class="card shadow-lg">
                    <div class="card-body">
                        <div class="row">
                          <div class="col">
                              <center>
                            <h4>Create New User</h4></center>
                         </div>
                        </div>
                          <div class="row">
                            <div class="col-md-5" ><label class="fr">Username</labe></div>
                             <div class="col-md-4">
                                 <div class="input-group">
                                    <input class="form-control input_custom" ID="username" runat="server" />
                                </div>
                            </div>
                         </div>
                       <div class="col">
                            <br />
                        </div>
                          <div class="row">
                            <div class="col-md-5" ><label class="fr">Password</label></div>
                            <div class="col-md-4">
                                <div class="input-group">
                                   <input class="form-control input_custom" ID="password" runat="server" />
                                </div>
                            </div>
                         </div>
                       <div class="col">
                            <br />
                        </div>
                          <center>
                            <div class="btn_custom row ">
	                            <button class="btn btn_custom" ID="createnew" runat="server" Text="Create" OnServerClick="Create_OnClickClient">Add</button>
                            </div>
                        </center>
                    </div>
                </div>
            </div>
        </div>
    <div class="btn btn-lg btn-secondary fw-bold border-white bg-white" style="width:400px; color:#696d7d">
            <a href="AdminPage.aspx" style="color:#696d7d"><< Back to Home</a><br>
    </div>
</asp:Content>
