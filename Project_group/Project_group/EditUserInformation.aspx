<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="EditUserInformation.aspx.cs" Inherits="Project_group.EditUserInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    <div class="container">
      <div class="row">
         <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Personal Information</h4>
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
                        <div class="col-md-5" ><label class="fr">User Name</label></div>
                        <div class="col-md-4">
                            <div class="input-group">
                                <asp:TextBox ID="TextBox1" runat="server" Width="308px"></asp:TextBox><asp:Label ID="Label2" runat="server"></asp:Label>
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
                                <asp:TextBox ID="TextBox2" runat="server" Width="308px" TextMode="Password"></asp:TextBox><asp:Label ID="Label3" runat="server" Text="Please enter your paaword to check and edit your information." Font-Size="Small"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <br />
                    </div>
                   <center>
                    <div class="btn_custom row ">
	                    <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Change Password" OnClick="Button2_Click"/>
                     </div>
                    </center>
                   <div class="col">
                        <br />
                    </div>
                   <div id="ChangePassword" runat="server" >
                     <div class="row">
                        <div class="col-md-5" ><label class="fr">New Password</label></div>
                        <div class="col-md-4">
                            <div class="input-group">
                                <asp:TextBox ID="TextBox7" runat="server" Width="308px" TextMode="Password"></asp:TextBox><asp:Label ID="Label4" runat="server" Text="Please enter your new password." Font-Size="Small"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <br />
                    </div>
                   </div>
                       </div>
                       <div class="row">
                        <div class="col-md-2" ><label class="fr">Full Name</label></div>
                        <div class="col-md-4">
                        <div class="input-group">
                            <asp:TextBox ID="TextBox3" runat="server" Width="308px"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-2" ><label class="fr">Age</label></div>
                        <div class="col-md-3">
                        <div class="input-group">
                            <asp:TextBox ID="TextBox4" runat="server" Width="308px"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    <br />

                 <div class="row">
                        <div class="col-md-2" ><label class="fr">Phone Number</label></div>
                        <div class="col-md-4">
                        <div class="input-group">
                            <asp:TextBox ID="TextBox5" runat="server" Width="308px"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-2" ><label class="fr">User Address</label></div>
                        <div class="col-md-3">
                        <div class="input-group">
                            <asp:TextBox ID="TextBox6" runat="server" Width="308px"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-md-2" ><label class="fr">Vaccine Number</label></div>
                        <div class="col-md-4">
                        <div class="input-group">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="308px">
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
                            <asp:TextBox ID="TextBox8" runat="server" Width="308px"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    <br />

                      
                       <div class="row">
                            <div class="col-md-6" ><label class="fr">Profile</label></div>
                            <div class="col-md-4">
                                    <asp:FileUpload ID="FileUpload1" runat="server"/><br />
                             </div>
                       </div>
             </div>
          </div>
          <div class="col">
            <br />
          </div>
          <center>
            <div class="btn_custom row ">
            <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-lg btn-block btn-success" OnClick="Button1_Click"/>
            </div>
         </center>
        <a href="ViewInformation.aspx"><< Back to My Information</a><br>
   </div>
</div>
</asp:Content>

