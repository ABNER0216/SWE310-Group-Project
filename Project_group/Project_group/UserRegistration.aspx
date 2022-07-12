<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="Project_group.UserRegistration" %>
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
                           <img src="imgs/register.png" />
                            <h4>Registration</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                   <div class="row">
                        <div class="col-md-5" ><label class="fr">User Name</label></div>
                        <div class="col-md-4">
                            <div class="input-group">
                                <asp:TextBox CssClass="form-control input_custom" ID="TextBox1" runat="server" Width="308px"></asp:TextBox><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                   </div>
                   <div class="col">
                        <br />
                    </div>
                   <div class="row">
                        <div class="col-md-5" ><label class="fr">Password</label></div>
                        <div class="col-md-4">
                            <div class="input-group">
                                <asp:TextBox CssClass="form-control input_custom" ID="TextBox2" runat="server" Width="308px" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <br />
                    </div>
                       <div class="row">
                        <div class="col-md-2" ><label class="fr">Full Name</label></div>
                        <div class="col-md-4">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control input_custom" ID="TextBox3" runat="server" Width="308px"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-2" ><label class="fr">Age</label></div>
                        <div class="col-md-3">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control input_custom" ID="TextBox4" runat="server" Width="308px"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    <br />

                 <div class="row">
                        <div class="col-md-2" ><label class="fr">Phone Number</label></div>
                        <div class="col-md-4">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control input_custom" ID="TextBox5" runat="server" Width="308px"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-2" ><label class="fr">User Address</label></div>
                        <div class="col-md-3">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control input_custom" ID="TextBox6" runat="server" Width="308px"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-md-2" ><label class="fr">Vaccine Number</label></div>
                        <div class="col-md-4">
                        <div class="input-group">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="308px" Height="40px">
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-2" ><label class="fr">Last Vaccine Date</label></div>
                        <div class="col-md-3">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control input_custom" ID="TextBox8" runat="server" Width="308px" TextMode="Date"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    <br />
          <div class="col">
            <br />
          </div>
          <center>
            <div class="btn_custom row ">
            <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn_custom" OnClick="Button1_Click"/>
            </div>
         </center>
          </div>
                </div>
             </div>
          <div class="btn btn-lg btn-secondary fw-bold border-white bg-white" style="width:400px; color:#696d7d">
            <a href="LoginPage.aspx" style="color:#696d7d"><< Log in</a><br>
            </div>
        
   </div>
</div>
</asp:Content>
