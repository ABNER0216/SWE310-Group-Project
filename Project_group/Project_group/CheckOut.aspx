<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="Project_group.CheckOut" %>
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
    <div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" src="imgs/report.png" alt="">
      <h2>Order Information</h2>
      <p class="lead">Below are the information of the order.</p>
    </div>

    <div class="container">
                            
   <asp:Panel ID="content" runat="server">
            <asp:SqlDataSource ID="orderitems" runat="server" ConnectionString="Data Source=雷义焘\SQLEXPRESS01;Initial Catalog=community;Integrated Security=True" OnSelecting="Orderitems_Selecting" SelectCommand="SELECT * FROM [ShoppingCart] WHERE ([UserName] = @UserName)">
                <SelectParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-striped table-hover table-responsive"
                AutoGenerateColumns="False" DataSourceID="orderitems" OnRowDataBound="GridView1_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="ItemName" HeaderText="Name" SortExpression="ItemName" />
                    <asp:BoundField DataField="ItemNum" HeaderText="Number" SortExpression="ItemNum" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Inventory" HeaderText="Inventory" SortExpression="Inventory" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="accountdata" runat="server" ConnectionString="Data Source=雷义焘\SQLEXPRESS01;Initial Catalog=community;Integrated Security=True" OnSelecting="accountdata_Selecting" SelectCommand="SELECT * FROM [UserInfo] WHERE ([UserName] = @UserName)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="UserName" QueryStringField="UserName" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
       
       <div class="card shadow-lg">
               <div class="card-body">
                    <div class="row" >
                        <div class="col-md-5 " ><label class="fr">Name:</label></div>
                        <div class="col-md-4">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control input_custom"  required="required" ID="TextBox1" runat="server" Text='<%# Bind("FullName") %>' Width="236px"></asp:TextBox>
                        </div>
                        </div>
                    </div>
                   <div class="col">
                        <br />
                    </div>
                   <div class="row" >
                        <div class="col-md-5 " ><label class="fr">Address:</label></div>
                        <div class="col-md-4">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control input_custom"  required="required" ID="TextBox2" runat="server" Text='<%# Bind("Address") %>' Height="50px" OnTextChanged="TextBox2_TextChanged" Width="276px"></asp:TextBox>
                        </div>
                        </div>
                    </div>
                   <div class="col">
                        <br />
                    </div>
                   <div class="row" >
                        <div class="col-md-5 " ><label class="fr">Contant Number:</label></div>
                        <div class="col-md-4">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control input_custom"  required="required" ID="TextBox3" runat="server" Text='<%# Bind("PhoneNo") %>'></asp:TextBox>
                        </div>
                        </div>
                    </div>
                   </div>
                   <div class="col">
                        <br />
                    </div>
                    <center>
                        <div class="btn_custom row ">
	                        <asp:Button ID="SubmitOrder" class="btn btn_custom" runat="server" Text="Submit" OnClick="SubmitOrder_Click" />
                        </div>
                    </center>
                    <div class="total">
                        <center>
                            <p class="lead">Total price: <asp:Label class="lead" ID="totalprice" runat="server" Text="0"></asp:Label></p>
                            
                            <div class="btn btn-lg btn-secondary fw-bold border-white bg-white" style="width:400px; color:#696d7d">
                              <a href="ShoppingCart.aspx" style="color:#696d7d"><< Shopping Cart</a><br>
                          </div>
                        </center>
                    </div>
           </div>
        </asp:Panel>
        </div>
    <asp:Panel ID="complete" runat="server" Visible="False">
        <div class="successinfo">
            <center>
            <p class="lead" style="font-size:44px;color:darkorange">Your order has been submitted successfully.</p>
            </center>
        </div>
    </asp:Panel>
     <div class="btn btn-lg btn-secondary fw-bold border-white bg-white" style="width:400px; color:#696d7d">
            <a href="StartPage.aspx" style="color:#696d7d"><< Back to Home</a><br>
        </div>
</asp:Content>
