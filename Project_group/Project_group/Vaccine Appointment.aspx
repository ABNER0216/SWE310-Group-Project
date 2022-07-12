<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Vaccine Appointment.aspx.cs" Inherits="Project_group.Vaccine_Appointment" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
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
                <img src="imgs/report.png" />
                <h4>Vaccine Appointment</h4>
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
                    <asp:TextBox CssClass="form-control input_custom" ID="tb_name" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
            <div class="col">
                <br />
            </div>
        <div class="row">
            <div class="col-md-5 " ><label class="fr">Choose Place: </label></div>
            <div class="col-md-4">
                <div class="input-group">
                    <asp:DropDownList ID="ddl_place" runat="server" AutoPostBack="true" DataSourceID="VacPlace" DataTextField="VPlace" DataValueField="VPlace" OnSelectedIndexChanged="ddl_place_SelectedIndexChanged" Width="150px"></asp:DropDownList>
                    <asp:SqlDataSource ID="VacPlace" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString2 %>" SelectCommand="SELECT DISTINCT [VPlace] FROM [VaccineInfo] ORDER BY [VPlace]" ></asp:SqlDataSource>
                </div>
            </div>
        </div>
            <div class="col">
                <br />
            </div>
        <div class="row">
            <div class="col-md-5 " ><label class="fr">Choose Date:  </label></div>
            <div class="col-md-4">
                <div class="input-group">
                    <asp:DropDownList ID="ddl_date" runat="server" AutoPostBack="true" DataSourceID="VacDate" DataTextField="VDate" DataValueField="VDate" Width="150px"></asp:DropDownList>
                    <asp:SqlDataSource ID="VacDate" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString2 %>" SelectCommand="SELECT DISTINCT [VDate] FROM [VaccineInfo] WHERE ([VPlace] = @VPlace)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddl_place" Name="VPlace" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
            <div class="col">
                <br />
            </div>
        <div class="row">
            <div class="col-md-5 " ><label class="fr">Choose Time:  </label></div>
            <div class="col-md-4">
                <div class="input-group">
                    <asp:DropDownList ID="ddl_time" runat="server" AutoPostBack="true" DataSourceID="VacTime" DataTextField="VTime" 
                        DataValueField="VTime" OnSelectedIndexChanged="ddl_time_SelectedIndexChanged" Width="150px"></asp:DropDownList>
                    <asp:SqlDataSource ID="VacTime" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString2 %>" SelectCommand="SELECT [VTime] FROM [VaccineInfo] WHERE (([VPlace] = @VPlace) AND ([VDate] = @VDate)) ORDER BY [VTime]">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddl_place" Name="VPlace" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="ddl_date" Name="VDate" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
         </div>
            <div class="col">
                <br />
            </div>
        <div class="row">
            <div class="col-md-5 " ><label class="fr">Choose Inventory:  </label></div>
            <div class="col-md-4">
                <div class="input-group">
                    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="VacInventory" OnPageIndexChanging="DetailsView1_PageIndexChanging" DataKeyNames="VID" CellPadding="10">
                        <Fields>
                            <asp:BoundField DataField="Inventory" HeaderText="Inventory" SortExpression="Inventory" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="VacInventory" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString2 %>" SelectCommand="SELECT [VID], [Inventory] FROM [VaccineInfo] WHERE (([VPlace] = @VPlace) AND ([VDate] = @VDate) AND ([VTime] = @VTime))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddl_place" Name="VPlace" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="ddl_date" Name="VDate" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="ddl_time" Name="VTime" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
            <div class="col">
                <br />
            </div>
            <center>
                <div class="btn_custom row ">
                    <asp:Button ID="Button1" class="btn btn_custom" runat="server" Text="Submit" OnClick="Button1_Click" />
                </div>
            </center>
        </div>
            </div>
                </div>
                  <div class="btn btn-lg btn-secondary fw-bold border-white bg-white" style="width:400px; color:#696d7d">
                      <a href="StartPage.aspx" style="color:#696d7d"><< Back to Home</a><br>
                  </div>
                </div>
             </div>
           </div>

</asp:Content>
