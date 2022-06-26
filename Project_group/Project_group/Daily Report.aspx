<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Daily Report.aspx.cs" Inherits="Project_group.WebForm2" %>
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
                           <h4>Health Report</h4>
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
                     <div class="col-md-4">
                        <label>User Name</label>
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="User Name"></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-4">
                        <label>Contact Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="User Address"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>User Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="User Address"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="col">
                    <hr>
                    </div>
                   <div class="row" >
                     <div class="col-md-4" ><label class="fr">Temperature:</label></div>
                     <div class="col-md-4">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Input your temperature"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                    <div class="col">
                        <br />
                    </div>
                  <div class="row">
                    <div class="col-md-4" ><label class="fr">Current Address:</label></div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Input your address"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="col">
                        <br />
                    </div>
                  <div class="row">
                    <div class="col-md-4" ><label class="fr">Contact with a confirmed patient:</label></div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Input your address"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="col">
                        <br />
                    </div>
                  <div class="row">
                    <div class="col-md-4" ><label class="fr">Fever:</label></div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Input your address"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="col">
                        <br />
                    </div>
                  <div class="row">
                    <div class="col-md-4" ><label class="fr">Cough:</label></div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Input your address"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="col">
                        <br />
                    </div>
                  <div class="row">
                    <div class="col-md-4" ><label class="fr">Cold:</label></div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Input your address"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="col">
                        <br />
                    </div>
                  <center>
                      <div class="btn_custom row ">
	                    <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Submit" />
                     </div>
                  </center>
               </div>
            </div>
            <a href="WebForm1.aspx"><< Back to Home</a><br>
            <br>
         </div>
         
      </div>
   </div>
</asp:Content>
