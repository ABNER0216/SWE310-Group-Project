<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Project_group.LoginPage" %>
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
    <div class="container">
      <div class="row">
         <div class="col-md-12">
            <div class="card shadow-lg">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                            <img src="imgs/report.png" />
                           <h4>Login</h4>
                        </center>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4" ><label class="fr">User Name</label></div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control input_custom" ID="TextBox1" runat="server"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="col">
                        <br />
                    </div>
                   <div class="row">
                    <div class="col-md-4" ><label class="fr">Password</label></div>
                    <div class="col-md-4">
                        <div class="input-group">
                             <asp:TextBox CssClass="form-control input_custom" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                     <div class="row">
                     <div class="col">
                        <br />
                     </div>
                  </div>
                  <center>
                      <div class="btn_custom row ">
	                    <asp:Button ID="Button1" class="btn btn_custom" runat="server" Text="Login" OnClick="Button1_Click"/>
                     </div>
                  </center>
            </div>
            
         </div>
             <div class="btn btn-lg btn-secondary fw-bold border-white bg-white" style="width:400px; color:#696d7d">
                <a href="StartPage.aspx" style="color:#696d7d"><< Back to Home</a><br>
            </div>
            <br>
        </div> 
      </div>
   </div>
</asp:Content>
