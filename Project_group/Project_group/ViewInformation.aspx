<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master.Master" CodeBehind="ViewInformation.aspx.cs" Inherits="Project_group.ViewInformation" %>
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
                           <img src="imgs/report.png" />
                            <h4>My Information</h4>
                        </center>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                   <div class="row">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=雷义焘\SQLEXPRESS01;Initial Catalog=community;Integrated Security=True"  SelectCommand="SELECT * FROM [UserInfo] where UserName= @UserName">
                        <SelectParameters>
                                    <asp:ControlParameter ControlID="Label1" Name="UserName" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource> 
          <div class="container" style="display:flex; justify-content:center;">    
        <div style="float:left;margin:30px; text-align: left">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" GridLines ="None">
                <Columns>
                    <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName"/>
                </Columns>
                <HeaderStyle Font-Size="X-Large" />
            </asp:GridView>
            <br />
             <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" GridLines ="None">
                <Columns>
                    <asp:BoundField DataField="FullName" HeaderText="Full Name" SortExpression="FullName"/>
                </Columns>
                <HeaderStyle Font-Size="X-Large"/>
            </asp:GridView>
            <br />
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" GridLines ="None">
                <Columns>
                     <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age"/>
                </Columns>
                <HeaderStyle Font-Size="X-Large"/>
            </asp:GridView>
            <br />           
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" GridLines ="None">
                <Columns>
                     <asp:BoundField DataField="PhoneNo" HeaderText="Phone No" SortExpression="PhoneNo"/>
                </Columns>
                <HeaderStyle Font-Size="X-Large"/>
            </asp:GridView>       
            <br /> 
        </div>               
        <div style="float:right;margin:30px;text-align: left">
            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" GridLines ="None">
                <Columns>
                     <asp:BoundField DataField="UserAddress" HeaderText="Address" SortExpression="UserAddress"/>
                </Columns>
                <HeaderStyle Font-Size="X-Large" />
            </asp:GridView>
            <br />
            <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" GridLines ="None">
                <Columns>
                      <asp:BoundField DataField="Vaccine" HeaderText="Vaccine No" SortExpression="Vaccine"/>
                </Columns>
                <HeaderStyle Font-Size="X-Large" />
            </asp:GridView>
            <br />
            <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" GridLines ="None">
                <Columns>
                      <asp:BoundField DataField="VaccineTime" HeaderText="Last Vaccine Time" SortExpression="VaccineTime"/>
                </Columns>
                <HeaderStyle Font-Size="X-Large"  />
            </asp:GridView>
            <br />  
            <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" GridLines ="None">
                <Columns>
                        <asp:CheckBoxField DataField="ClockInStatus" HeaderText="Clock In Status" SortExpression="ClockInStatus" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="alert-primary" />
                </Columns>
                <HeaderStyle Font-Size="X-Large" />
            </asp:GridView> 
    </div>
              </div>  
                       </div>
    <br />
    <center>
       <div class="btn_custom row ">
	       <asp:Button ID="Button1" class="btn btn_custom"  runat="server" Text="Edit" OnClick="Button1_Click"/>
       </div>
    </center>  
        </div>
                    </div>
            <br>
         </div>
          <div class="btn btn-lg btn-secondary fw-bold border-white bg-white" style="width:400px; color:#696d7d">
            <a href="StartPage.aspx" style="color:#696d7d"><< Back to Home</a><br>
        </div>
      </div>
   </div>
</asp:Content>

