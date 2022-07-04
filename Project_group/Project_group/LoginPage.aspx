<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Project_group.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
      <div class="row">
         <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Login</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img src="imgs/healthy.png" />
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
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
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
                             <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
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
	                    <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Login" OnClick="Button1_Click"/>
                     </div>
                  </center>
            </div>
            <a href="WebForm1.aspx"><< Back to Home</a><br>
            <br>
         </div>
        </div> 
      </div>
   </div>
</asp:Content>
