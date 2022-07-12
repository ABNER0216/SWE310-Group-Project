<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageItem.aspx.cs" Inherits="Project_group.ManageItem" %>
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
   <div>
        <br />
    </div>
    <div class="container ">
      <div class="row">
         <div class="col-md-12">
            <div class="card shadow-lg">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img src="imgs/manage.png" />
                            <h4>Manage Items</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                   <div class="row">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString2 %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [ItemList]" UpdateCommand="update [ItemList] set [ItemName]=@ItemName, [Inventory]=@Inventory, [Price]=@Price, [Image]=@FileUpload1, [Description]=@Description where [ItemID]=@ItemID">
                            <UpdateParameters>
                                <asp:Parameter Name="ItemName" />
                                <asp:Parameter Name="Inventory" />
                                <asp:Parameter Name="Price" />
                                <asp:Parameter Name="Image"/>
                                <asp:Parameter Name="Description" />
                                <asp:Parameter Name="ItemID" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString2 %>" SelectCommand="SELECT * FROM [OrderInfo]"></asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-striped table-hover table-responsive" 
                            AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="ItemID" HeaderText="ItemID" SortExpression="ItemID" />
                                <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                                <asp:BoundField DataField="Inventory" HeaderText="Inventory" SortExpression="Inventory" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                                <asp:CommandField ButtonType="Button" HeaderText="Operation" edittext="Edit" ShowEditButton="True" >
                                    <ControlStyle BorderStyle="None" CssClass="btn btn-danger" />
                                    <ItemStyle Wrap="False" HorizontalAlign="Center" />
                                </asp:CommandField>
                            </Columns>
                        </asp:GridView>
                       </div>
            <div class="row">
                <div class="col-md-5" ><label class="fr">Input item name: </label></div>
                <div class="col-md-4">
                    <div class="input-group"> 
                        <input class="form-control input_custom" id="itemname" runat="server" />
                    </div>
                </div>
            </div>
                   <div class="col">
                        <br />
                    </div>
            <div class="row">
                <div class="col-md-5" ><label class="fr">Input item price:</label></div>
                <div class="col-md-4">
                    <div class="input-group"> 
                        <input class="form-control input_custom"  id="itemprice" runat="server" />
                    </div>
                </div>
            </div>
                   <div class="col">
                        <br />
                    </div>
            <div class="row">
                <div class="col-md-5" ><label class="fr">Input item number:</label></div>
                <div class="col-md-4">
                    <div class="input-group"> 
                        <input class="form-control input_custom" id="itemnumber" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col">
                <br />
            </div>
            <div class="row">
                <div class="col-md-5" ><label class="fr">Upload Item Photo:</label></div>
                <div class="col-md-4">
                    <div class="input-group"> 
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col">
                <br />
            </div>
            <center>
                <div class="btn_custom row ">
	                <button id="createnewitem" class="btn btn_custom" runat="server" OnServerClick="CreateNewItem">Submit</button>
                </div>
            </center>
                   <br />
        <asp:GridView ID="GridView2" runat="server"  CssClass="table table-bordered table-striped table-hover table-responsive"
            AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
            <asp:BoundField DataField="OrderUser" HeaderText="OrderUser" SortExpression="OrderUser" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="OrderAddress" HeaderText="OrderAddress" SortExpression="OrderAddress" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
            <asp:BoundField DataField="Realname" HeaderText="Realname" SortExpression="Realname" />
            <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
        </Columns>
    </asp:GridView>
                   </div>
                </div>
             </div>
          </div>
        </div>
         <div class="btn btn-lg btn-secondary fw-bold border-white bg-white" style="width:400px; color:#696d7d">
            <a href="AdminPage.aspx" style="color:#696d7d"><< Back to Home</a><br>
        </div>
</asp:Content>
