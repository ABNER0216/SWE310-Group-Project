<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="NAT Appointment.aspx.cs" Inherits="Project_group.NAT_Appointment" %>
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
    <div style="min-height:800px">
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
                           <img src="imgs/NAT.png" />
                            <h4>NAT Appointment</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                   <div class="row">
                        <div class="col-md-5 " ><label class="fr">Name:</label></div>
                       <div class="col-md-4">
                            <div class="input-group">
                                <asp:TextBox CssClass="form-control input_custom" ID="tb_Name" runat="server" placeholder="Name"></asp:TextBox>
                            </div>
                       </div>
                   </div>
                   <div class="col">
                        <br />
                    </div>
                      <div class="row">
                          <div class="col-md-5 " ><label class="fr">Appointment Place:</label></div>
                          <div class="col-md-4">
                            <div class="input-group">
                               <asp:DropDownList ID="dll_NATPlace" runat="server" AutoPostBack="True" DataSourceID="NAT_place" DataTextField="NATAddress" DataValueField="NATAddress" OnSelectedIndexChanged="dll_NATPlace_SelectedIndexChanged" Width="150px"></asp:DropDownList>
                                <asp:SqlDataSource ID="NAT_place" runat="server" ConnectionString="Data Source=雷义焘\SQLEXPRESS01;Initial Catalog=community;Integrated Security=True" SelectCommand="SELECT DISTINCT [NATAddress] FROM [NATTime]"></asp:SqlDataSource>
                            </div>
                          </div>
                     </div>
                   <div class="col">
                        <br />
                    </div>
                     <div class="row">
                        <div class="col-md-5 " ><label class="fr">Appointment Date:</label></div>
                         <div class="col-md-4">
                            <div class="form-group">
                               <asp:DropDownList  ID="ddl_NATDate" runat="server" AutoPostBack="True" DataSourceID="NATDATE" DataTextField="NATDate" DataValueField="NATDate" DataFormatString="{0: yyyy/MM/dd}" OnSelectedIndexChanged="ddl_NATDate_SelectedIndexChanged" Width="150px"></asp:DropDownList>
                                <asp:SqlDataSource ID="NATDATE" runat="server" ConnectionString="Data Source=雷义焘\SQLEXPRESS01;Initial Catalog=community;Integrated Security=True" SelectCommand="SELECT DISTINCT [NATDate] FROM [NATTime] WHERE ([NATAddress] = @NATAddress)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="dll_NATPlace" Name="NATAddress" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                         </div>
                     </div>
                    <div class="col">
                        <br />
                    </div>
                    <div class="row" >
                        <div class="col-md-5 " ><label class="fr">Appointment time:</label></div>
                        <div class="col-md-4">
                        <div class="input-group">
                            <asp:DropDownList ID="ddl_NATtime" runat="server" AutoPostBack="true" DataSourceID="NATTime" DataTextField="NATTime" DataValueField="NATTime" OnSelectedIndexChanged="ddl_NATtime_SelectedIndexChanged" Width="150px"></asp:DropDownList>
                            <asp:SqlDataSource ID="NATTime" runat="server" ConnectionString="Data Source=雷义焘\SQLEXPRESS01;Initial Catalog=community;Integrated Security=True" SelectCommand="SELECT [NATTime] FROM [NATTime] WHERE (([NATAddress] = @NATAddress) AND ([NATDate] = @NATDate))">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="dll_NATPlace" Name="NATAddress" PropertyName="SelectedValue" Type="String" />
                                    <asp:ControlParameter ControlID="ddl_NATDate" Name="NATDate" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                        </div>
                    </div>
                    <div class="col">
                        <hr>
                    </div>
                    <center>
                        <div class="btn_custom row ">
	                        <asp:Button ID="Button1" class="btn btn_custom" runat="server" Text="Submit" OnClick="Button1_Click" />

                        </div>
                    </center>
               </div>
            </div>
            <div class="btn btn-lg btn-secondary fw-bold border-white bg-white" style="width:400px; color:#696d7d">
                      <a href="StartPage.aspx" style="color:#696d7d"><< Back to Home</a><br>
                  </div>
         </div>
         
      </div>
   </div>
    
    
        </div>
    
</asp:Content>
