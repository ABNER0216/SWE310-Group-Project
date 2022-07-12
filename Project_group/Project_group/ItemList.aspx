<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ItemList.aspx.cs" Inherits="Project_group.ItemList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       .card_area{
           justify-content:center;
           display:flex;
           padding:20px;
       }
       .card_custom{
           margin:10px;
       }
       .area_1{
           background-color:#8FC0A9;
       }
       .area_2{
           background-color:#C8D5B9;
       }
       .white_area_container{
           background-color:#EFF0ED;
       }
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
                           <img src="imgs/cart- full.png" />
                            <h4>Shop</h4>
                        </center>
                     </div>
                  </div>
                    <asp:SqlDataSource ID="sdsProduct" runat="server" ConnectionString="Data Source=雷义焘\SQLEXPRESS01;Initial Catalog=community;Integrated Security=True" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [ItemList] WHERE ([Inventory] &gt; @Inventory)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="0" Name="Inventory" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DataList ID="dlProduct" runat="server" DataSourceID="sdsProduct" 
                        OnSelectedIndexChanged="DataList1_SelectedIndexChanged" CellPadding="16" 
                        HorizontalAlign="Center" RepeatColumns="4">
                        <ItemTemplate>
                            <div class="card card_custom" style="width: 14rem;">
                                <img class="item" src='<%# Eval("Image") %>' height="160"/>
                              <div class="card-body">
                                  <center>
                                    <h5 class="card-title"><%# Eval("ItemName") %></h5>
                                    <p class="card-text"><%# Eval("Description") %></p>
                                    <p class="card-text">Price:<%# Eval("Price") %></p>
                                    <div class="row ">
                                        <center>
                                            <asp:hyperlink class="btn btn_custom" style="width:200px;"
                                                ID="HyperLink" runat="server" 
                                                NavigateUrl='<%# string.Format("~/ShoppingCart.aspx?ItemId={0}&ItemName={1}&Price={2}&Inventory={3}", Eval("ItemID"), Eval("ItemName"), Eval("Price"), Eval("Inventory")) %>' 
                                                Text="Add to Cart"></asp:hyperlink>
                                        </center>
                                    </div>
                                </center>
                              </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
        </div>
    </div>
   
</asp:Content>