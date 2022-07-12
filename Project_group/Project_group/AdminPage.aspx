<%@ Page Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Project_group.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style>
       .card_area{
           justify-content:center;
           display:flex;
           padding:20px;
       }
       .card_custom{
           margin:10px;
       }
       .area_1{
           background-color:#98A88A;
       }
       .area_2{
           background-color:#C19AA0;
       }
       .white_area_container{
           background-color:#EFF0ED;
       }
   </style>
    <script>
        const carousel = new bootstrap.Carousel('#myCarousel')
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container py-4">
        <div class="p-5 mb-4 white_area_container rounded-3">
          <div class="container-fluid py-5">
            <h1 class="display-5 fw-bold">Shopping Mall Management</h1>
              <p class="col-md-8 fs-4">We offer the channel for you to buy the supplies needed for epidemic prevention and control. </p>
              <asp:Button class="btn btn-outline-secondary btn-lg" ID="Button1" runat="server" Text="Item Management" onclick="button1_click"/>
          </div>
        </div>

        <div class="row align-items-md-stretch">
          <div class="col-md-6">
            <div class="h-100 p-5 area_1 rounded-3 ">
              <h3>User Management</h3>
              <p>You could use this channel to do the nucleic acid test appointment.</p>
                <asp:Button class="btn btn-outline-light" ID="Button2" runat="server" Text="Manage User" onclick="button2_click"/>
            </div>
          </div>
        
          <div class="col-md-6">
            <div class="h-100 p-5 area_2 rounded-3">
              <h2>Daily Report Management</h2>
              <p>Report your health situation everyday to help the community management and safety precautions</p>
                <asp:Button class="btn btn-outline-light" ID="Button3" runat="server" Text="Manage Report" onClick="button3_click"/>
            </div>
          </div>
        </div>
        <div style="height:30px;"></div>
        <div class="row align-items-md-stretch">
          <div class="col-md-6">
            <div class="h-100 p-5 area_2 rounded-3 ">
              <h3>Nucleic Acid Test Appointment Management</h3>
              <p>You could use this channel to do the nucleic acid test appointment.</p>
              <asp:Button class="btn btn-outline-light" ID="Button4" runat="server" Text="Manage Appointment" onclick="button4_click"/>
            </div>
          </div>
        
          <div class="col-md-6">
            <div class="h-100 p-5 area_1 rounded-3">
              <h3>Vaccine Information Management</h3>
              <p>Report your health situation everyday to help the community management and safety precautions</p>
                <asp:Button class="btn btn-outline-light" ID="Button5" runat="server" Text="Manage Appointment" onclick="button5_click"/>
            </div>
          </div>
        </div>
     </div>

</asp:Content>
