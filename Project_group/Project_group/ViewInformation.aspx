<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master.Master" CodeBehind="ViewInformation.aspx.cs" Inherits="Project_group.ViewInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <h1>My Information</h1>
    </center>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString %>" SelectCommand="SELECT * FROM [UserInfo] where UserName= @UserName">
        <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="UserName" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" GridLines ="None">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" ItemStyle-HorizontalAlign="Center" />
        </Columns>
        <HeaderStyle Font-Size="X-Large" HorizontalAlign="Center" />
    </asp:GridView>
    <br />
     <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" GridLines ="None">
        <Columns>
            <asp:BoundField DataField="FullName" HeaderText="Full Name" SortExpression="FullName" ItemStyle-HorizontalAlign="Center"/>
        </Columns>
        <HeaderStyle Font-Size="X-Large" HorizontalAlign="Center" />
    </asp:GridView>
    <br />
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" GridLines ="None">
        <Columns>
             <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" ItemStyle-HorizontalAlign="Center"/>
        </Columns>
        <HeaderStyle Font-Size="X-Large" HorizontalAlign="Center" />
    </asp:GridView>
    <br />           
    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" GridLines ="None">
        <Columns>
             <asp:BoundField DataField="PhoneNo" HeaderText="Phone No" SortExpression="PhoneNo" ItemStyle-HorizontalAlign="Center"/>
        </Columns>
        <HeaderStyle Font-Size="X-Large" HorizontalAlign="Center" />
    </asp:GridView>       
    <br />     
    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" GridLines ="None">
        <Columns>
             <asp:BoundField DataField="UserAddress" HeaderText="Address" SortExpression="UserAddress" ItemStyle-HorizontalAlign="Center"/>
        </Columns>
        <HeaderStyle Font-Size="X-Large" HorizontalAlign="Center" />
    </asp:GridView>
    <br />
    <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" GridLines ="None">
        <Columns>
              <asp:BoundField DataField="Vaccine" HeaderText="Vaccine No" SortExpression="Vaccine" ItemStyle-HorizontalAlign="Center"/>
        </Columns>
        <HeaderStyle Font-Size="X-Large" HorizontalAlign="Center" />
    </asp:GridView>
    <br />
    <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" GridLines ="None">
        <Columns>
              <asp:BoundField DataField="VaccineTime" HeaderText="Last Vaccine Time" SortExpression="VaccineTime" ItemStyle-HorizontalAlign="Center"/>
        </Columns>
        <HeaderStyle Font-Size="X-Large" HorizontalAlign="Center" />
    </asp:GridView>
    <br />
    <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" GridLines ="None">
        <Columns>
               <asp:BoundField DataField="HealthCode" HeaderText="Health Code Color" SortExpression="HealthCode" ItemStyle-HorizontalAlign="Center"/>
        </Columns>
        <HeaderStyle Font-Size="X-Large" HorizontalAlign="Center" />
    </asp:GridView>
    <br />          
    <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" GridLines ="None">
        <Columns>
                <asp:CheckBoxField DataField="ClockInStatus" HeaderText="Clock In Status" SortExpression="ClockInStatus" ItemStyle-HorizontalAlign="Center"/>
        </Columns>
        <HeaderStyle Font-Size="X-Large" HorizontalAlign="Center" />
    </asp:GridView>
    </center>        
    <br />
    <center>
       <div class="btn_custom row ">
	       <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Edit" OnClick="Button1_Click"/>
       </div>
    </center>  
</asp:Content>

