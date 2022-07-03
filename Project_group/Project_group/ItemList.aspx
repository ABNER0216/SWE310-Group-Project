<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ItemList.aspx.cs" Inherits="Project_group.ItemList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
      /* 不知道为什么修改图片文字位置后重叠了，你们帮忙弄一下*/
   </style>
    <asp:SqlDataSource ID="sdsProduct" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [ItemList] WHERE ([Inventory] &gt; @Inventory)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="Inventory" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DataList ID="dlProduct" runat="server" DataSourceID="sdsProduct" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" CellPadding="16" HorizontalAlign="Center" RepeatColumns="2">
        <ItemTemplate>
            <div id ="left">
                <img class="item" src='<%# Eval("Image") %>'/>
            </div>
            <div id ="right">
                <p><%# Eval("ItemName") %></p>
                <p>Description</p>
                <p><%# Eval("Description") %></p>
                <p>Price:<%# Eval("Price") %></p>

                <!--问题功能，暂时不知道怎么把数量传给购物车<p>Num:<asp:TextBox ID="itemnum" runat="server"></asp:TextBox></p>-->
                <p><asp:hyperlink ID="HyperLink" runat="server" NavigateUrl='<%# string.Format("~/ShoppingCart.aspx?ItemId={0}&ItemName={1}&Price={2}&Inventory={3}", Eval("ItemID"), Eval("ItemName"), Eval("Price"), Eval("Inventory")) %>' Text="Add to Shopping Cart"></asp:hyperlink></p>
            </div>
        </ItemTemplate>
    </asp:DataList>
   
</asp:Content>
