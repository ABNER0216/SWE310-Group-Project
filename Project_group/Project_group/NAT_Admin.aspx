<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="NAT_Admin.aspx.cs" Inherits="Project_group.NAT_Admin" %>
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
      <h2>NAT Information</h2>
      <p class="lead">Below are the records of the NAT.</p>
    </div>

    <div class="container">
    <asp:GridView ID="GridView2" runat="server" CssClass="table table-bordered table-striped table-hover table-responsive" 
        Width="100%" AutoGenerateColumns="false" DataKeyNames="ID" DataSourceID="NAT_info">
        <Columns>           
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="NATAddress" HeaderText="NAT Address" SortExpression="NATAddress" />
            <asp:BoundField DataField="NATDate" HeaderText="NAT Date" SortExpression="NATDate" />
            <asp:BoundField DataField="NATTime" HeaderText="NAT Time" SortExpression="NATTime" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" edittext="Edit" canceltext="Discard"
            updatetext="Revise" deletetext="Delete" headertext="Action" >
                <ControlStyle BorderStyle="None" CssClass="btn btn-danger" />
                <ItemStyle Wrap="False" HorizontalAlign="Center" />
                </asp:CommandField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="NAT_info" runat="server" ConnectionString="<%$ ConnectionStrings:communityConnectionString2 %>" SelectCommand="SELECT * FROM [NATTime] ORDER BY [ID]" DeleteCommand="DELETE FROM [NATTime] WHERE [ID] = @ID" InsertCommand="INSERT INTO [NATTime] ([NATAddress], [NATDate], [NATTime]) VALUES (@NATAddress, @NATDate, @NATTime)" UpdateCommand="UPDATE [NATTime] SET [NATAddress] = @NATAddress, [NATDate] = @NATDate, [NATTime] = @NATTime WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NATAddress" Type="String" />
            <asp:Parameter Name="NATDate" Type="String" />
            <asp:Parameter Name="NATTime" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NATAddress" Type="String" />
            <asp:Parameter Name="NATDate" Type="String" />
            <asp:Parameter Name="NATTime" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <div class="row">
            <div class="card shadow-lg">
               <div class="card-body">
                   <div class="row" >
                        <div class="col-md-5 " ><label class="fr">NAT Place:</label></div>
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
                        <div class="col-md-5 " ><label class="fr">NAT Date:</label></div>
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
                        <div class="col-md-5 " ><label class="fr">NAT Time:</label></div>
                        <div class="col-md-4">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control input_custom" ID="Time" runat="server"></asp:TextBox>
                        </div>
                        </div>
                    </div>
                   <div class="col">
                        <br>
                    </div>
                   <center>
                        <div class="btn_custom row ">
	                    <asp:Button ID="btn_submit" class="btn btn_custom" runat="server" Text="Submit" OnClick="btn_submit_Click" />
                        </div>
                    </center>
    </div>
                </div>
        </div>
        </div>
    <center>
<div class="btn btn-lg btn-secondary fw-bold border-white bg-white" style="width:400px; color:#696d7d">
            <a href="AdminPage.aspx" style="color:#696d7d"><< Back to Home</a><br>
            <a href="Appointment View Admin.aspx" style="color:#696d7d">>> Go to Management</a><br>
 </div>
</center>
</asp:Content>
