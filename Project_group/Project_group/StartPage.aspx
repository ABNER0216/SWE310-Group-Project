<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="StartPage.aspx.cs" Inherits="Project_group.WebForm3" %>
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
           background-color:#8FC0A9;
       }
       .area_2{
           background-color:#C8D5B9;
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
            <h1 class="display-5 fw-bold">Supplies</h1>
              <p class="col-md-8 fs-4">We offer the channel for you to buy the supplies needed for epidemic prevention and control. </p>
              <asp:Button class="btn btn-outline-secondary btn-lg" ID="Button1" runat="server" Text="Go Shopping" onclick="button1_click"/>
          </div>
        </div>

        <div class="row align-items-md-stretch">
          <div class="col-md-6">
            <div class="h-100 p-5 area_1 rounded-3 ">
              <h3>Vaccination Booking</h3>
              <p>You could use this channel to do the nucleic acid test appointment.</p>
                <asp:Button class="btn btn-outline-light" ID="Button2" runat="server" Text="Make Appointment" onclick="button2_click"/>
            </div>
          </div>
        
          <div class="col-md-6">
            <div class="h-100 p-5 area_2 rounded-3">
              <h2>Daily Health Report</h2>
              <p>Report your health situation everyday to help the community management and safety precautions</p>
                <asp:Button class="btn btn-outline-light" ID="Button3" runat="server" Text="Do the Report" onclick="button3_click"/>
            </div>
          </div>
        </div>
        <div style="height:30px;"></div>
        <div class="row align-items-md-stretch">
          <div class="col-md-6">
            <div class="h-100 p-5 area_2 rounded-3 ">
              <h3>Nucleic acid Test appointments</h3>
              <p>You could use this channel to do the nucleic acid test appointment.</p>
              <asp:Button class="btn btn-outline-light" ID="Button4" runat="server" Text="Make Appointment" onclick="button4_click"/>
            </div>
          </div>
        
          <div class="col-md-6">
            <div class="h-100 p-5 area_1 rounded-3">
              <h2>View Personal Information</h2>
              <p>Report your health situation everyday to help the community management and safety precautions</p>
                <asp:Button class="btn btn-outline-light" ID="Button5" runat="server" Text="View Information" onclick="button5_click"/>
            </div>
          </div>
        </div>
        
        <div class="card_area">
            <div class="card card_custom" style="width: 18rem;">
              <img src="imgs/lyt.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                  <center>
                <h5 class="card-title">Lei Yitao</h5>
                  <h5 class="card-subtitle">SWE1909475</h5>
                <p class="card-text">Shopping and shop store, user management and item management</p>
                </center>
              </div>
            </div>
            <div class="card card_custom" style="width: 18rem;">
              <img src="imgs/xiaoyihong.jpg" class="card-img-top" alt="..." >
              <div class="card-body">
                  <center>
                <h5 class="card-title">Xiao Yihong</h5>
                  <h5 class="card-subtitle">DMT1909204</h5>
                <p class="card-text">User register, login, user information management, management interface refinement and bug fix</p>
                </center>
              </div>
            </div>
            <div class="card card_custom" style="width: 18rem;">
              <img src="imgs/xz.jpg" class="card-img-top" alt="..." >
              <div class="card-body">
                  <center>
                <h5 class="card-title">Wu Yuxuan</h5>
                  <h5 class="card-subtitle">SWE1909497</h5>
                <p class="card-text">Vacinne and NAT appointment and management, and management interface functions supplement.</p>
                </center>
              </div>
            </div>
            <div class="card card_custom" style="width: 18rem;">
              <img src="imgs/yx.jpg" class="card-img-top" alt="..." >
              <div class="card-body">
                  <center>
                <h5 class="card-title">Wu Yijin</h5>
                  <h5 class="card-subtitle">SWE1909494</h5>
                <p class="card-text">Front end，master page， start page， health report， health report management.</p>
                </center>
              </div>
            </div>
        </div>
     </div>

</asp:Content>
