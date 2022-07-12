<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="VAT_info.aspx.cs" Inherits="Project_group.Appointment_info" %>
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
      <img class="d-block mx-auto mb-4" src="imgs/VAC.png" alt="">
      <h2>Vaccine Information</h2>
      <p class="lead">Below are the records of the Vaccine.</p>
    </div>
    <div class="container">
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-striped table-hover table-responsive" 
        Width="100%" AutoGenerateColumns="False" HorizontalAlign="Center" DataKeyNames="VID" DataSourceID="VAC_info" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="VID" HeaderText="Vaccine ID" InsertVisible="False" ReadOnly="True" SortExpression="VID" />
            <asp:BoundField DataField="VPlace" HeaderText="Vaccine Place" SortExpression="VPlace" />
            <asp:BoundField DataField="VDate" HeaderText="Vaccine Date" SortExpression="VDate" />
            <asp:BoundField DataField="VTime" HeaderText="Vaccine Time" SortExpression="VTime"  />
            <asp:BoundField DataField="Inventory" HeaderText="Inventory" SortExpression="Inventory" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" edittext="Edit" canceltext="Discard"
            updatetext="Revise" deletetext="Delete" headertext="Operation">
                <ControlStyle BorderStyle="None" CssClass="btn btn-danger" />
                <ItemStyle Wrap="False" HorizontalAlign="Center" />
                </asp:CommandField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="VAC_info" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString2 %>" SelectCommand="SELECT * FROM [VaccineInfo] ORDER BY [VID]" DeleteCommand="DELETE FROM [VaccineInfo] WHERE [VID] = @VID" InsertCommand="INSERT INTO [VaccineInfo] ([VPlace], [VDate], [VTime], [Inventory]) VALUES (@VPlace, @VDate, @VTime, @Inventory)" UpdateCommand="UPDATE [VaccineInfo] SET [VPlace] = @VPlace, [VDate] = @VDate, [VTime] = @VTime, [Inventory] = @Inventory WHERE [VID] = @VID">
        <DeleteParameters>
            <asp:Parameter Name="VID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="VPlace" Type="String" />
            <asp:Parameter Name="VDate" Type="String" />
            <asp:Parameter Name="VTime" Type="String" />
            <asp:Parameter Name="Inventory" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="VPlace" Type="String" />
            <asp:Parameter Name="VDate" Type="String" />
            <asp:Parameter Name="VTime" Type="String" />
            <asp:Parameter Name="Inventory" Type="Int32" />
            <asp:Parameter Name="VID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        <div class="row">
            <div class="card shadow-lg">
               <div class="card-body">
                   <div class="row" >
                        <div class="col-md-5 " ><label class="fr">Vaccine Place:</label></div>
                        <div class="col-md-4">
                            <div class="input-group">
                                <asp:TextBox CssClass="form-control input_custom" ID="Place" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                   <div class="col">
                        <br>
                    </div>
                   <div class="row" >
                        <div class="col-md-5 " ><label class="fr">Vaccine Date:</label></div>
                        <div class="col-md-4">
                        <div class="input-group">
                           <asp:TextBox CssClass="form-control input_custom" ID="Date" runat="server"></asp:TextBox>
                        </div>
                        </div>
                    </div>
                   <div class="col">
                        <br>
                    </div>
                   <div class="row" >
                        <div class="col-md-5 " ><label class="fr">Vaccine Time:</label></div>
                        <div class="col-md-4">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control input_custom" ID="Time" runat="server"></asp:TextBox>
                        </div>
                        </div>
                    </div>
                   <div class="col">
                        <br>
                    </div>
                   <div class="row" >
                        <div class="col-md-5 " ><label class="fr">Vaccine Inventory:</label></div>
                        <div class="col-md-4">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control input_custom" ID="Inventory" runat="server"></asp:TextBox>
                        </div>
                        </div>
                    </div>
                   <div class="col">
                        <br>
                    </div>
                   <center>
                        <div class="btn_custom row ">
	                    <asp:Button  class="btn btn_custom" ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" />

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
