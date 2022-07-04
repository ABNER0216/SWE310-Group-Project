<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Daily Report.aspx.cs" Inherits="Project_group.WebForm2" %>
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
                            <h4>Health Report</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                   <div class="row ">
                     <div class="col">
                        <center><asp:Label runat="server" id="time" Text="Label"></asp:Label></center>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>User Name</label>
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control input_custom" ID="tb_UserName" runat="server" placeholder="User Name" ></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-4">
                        <label>Contact Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control input_custom" ID="tb_ContactNumber" runat="server" placeholder="Contact Number" TextMode="Phone"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>User Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control input_custom" ID="tb_UserAddress" runat="server" placeholder="User Address"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                    <div class="col">
                        <hr>
                    </div>
                    <div class="row" >
                        <div class="col-md-5 " ><label class="fr">Temperature:</label></div>
                        <div class="col-md-4">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control input_custom" ID="tb_Temperature" runat="server" placeholder="Input your temperature"></asp:TextBox>
                        </div>
                        </div>
                    </div>
                    <div class="col">
                        <br />
                    </div>
                    <div class="row">
                    <div class="col-md-5" ><label class="fr">Current Address:</label></div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control input_custom" ID="tb_CurrentAddress" runat="server" placeholder="Input your address" TextMode="Search"></asp:TextBox>
                        </div>
                        </div>
                    </div>
                    <div class="col">
                        <br />
                    </div>
                    <div class="row">
                    <div class="col-md-5" ><label class="fr">Contact with a confirmed patient:</label></div>
                    <div class="col-md-4">
                        <div class="input-group"> 
                            <asp:RadioButton CssClass="form-control input_custom" ID="tb_Contact_Yes" runat="server" Text="Yes" GroupName="Contact"></asp:RadioButton>
                            <asp:RadioButton CssClass="form-control input_custom" ID="tb_Contact_No" runat="server" Text="No" GroupName="Contact"></asp:RadioButton>
                        </div>
                        </div>
                    </div>
                    <div class="col">
                        <br />
                    </div>
                    <div class="row">
                    <div class="col-md-5" ><label class="fr">Fever:</label></div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <asp:RadioButton CssClass="form-control input_custom" ID="tb_Fever_Yes" runat="server" Text="Yes" GroupName="Fever"></asp:RadioButton>
                            <asp:RadioButton CssClass="form-control input_custom" ID="tb_Fever_No" runat="server" Text="No" GroupName="Fever"></asp:RadioButton>
                        </div>
                        </div>
                    </div>
                    <div class="col">
                        <br />
                    </div>
                    <div class="row">
                    <div class="col-md-5" ><label class="fr">Cough:</label></div>
                    <div class="col-md-4">
                        <div class="input-group">
                                <asp:RadioButton CssClass="form-control input_custom" ID="tb_Cough_Yes" runat="server" Text="Yes" GroupName="Cough"></asp:RadioButton>
                            <asp:RadioButton CssClass="form-control input_custom" ID="tb_Cough_No" runat="server" Text="No" GroupName="Cough"></asp:RadioButton>
                        </div>
                        </div>
                    </div>
                    <div class="col">
                        <br />
                    </div>
                    <div class="row">
                    <div class="col-md-5" ><label class="fr">Cold:</label></div>
                    <div class="col-md-4">
                        <div class="input-group"> 
                                <asp:RadioButton CssClass="form-control input_custom" ID="tb_Cold_Yes" runat="server" Text="Yes" GroupName="Cold"></asp:RadioButton>
                            <asp:RadioButton CssClass="form-control input_custom" ID="tb_Cold_No" runat="server" Text="No" GroupName="Cold"></asp:RadioButton>
                        </div>
                        </div>
                    </div>
                    <div class="col">
                        <br />
                    </div>
                    <center>
                        <div class="btn_custom row ">
	                    <asp:Button ID="btn_submit_DailyReport" class="btn btn_custom" runat="server" Text="Submit" OnClick="submit_DailyReport" />
                        </div>
                    </center>
               </div>
            </div>
            <a href="StartPage.aspx"><< Back to Home</a><br>
            <br>
         </div>
         
      </div>
   </div>
</asp:Content>
