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
            <button class="btn btn-outline-secondary btn-lg" type="button">Example button</button>
          </div>
        </div>

        <div class="row align-items-md-stretch">
          <div class="col-md-6">
            <div class="h-100 p-5 area_1 rounded-3 ">
              <h3>Nucleic acid Test appointment<br />& Vaccination Booking</h3>
              <p>You could use this channel to do the nucleic acid test appointment.</p>
              <button class="btn btn-outline-light" type="button">Make Appointment</button>
            </div>
          </div>
        
          <div class="col-md-6">
            <div class="h-100 p-5 area_2 rounded-3">
              <h2>Daily Health Report</h2>
              <p>Report your health situation everyday to help the community management and safety precautions</p>
              <button class="btn btn-outline-light" type="button">Do the Report</button>
            </div>
          </div>
        </div>
        <div class="card_area">
            <div class="card card_custom" style="width: 18rem;">
              <img src="imgs/figure1.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
              </div>
            </div>
            <div class="card card_custom" style="width: 18rem;">
              <img src="imgs/figure1.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
              </div>
            </div>
            <div class="card card_custom" style="width: 18rem;">
              <img src="imgs/figure1.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
              </div>
            </div>
            <div class="card card_custom" style="width: 18rem;">
              <img src="imgs/figure1.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
              </div>
            </div>
        </div>
     </div>

</asp:Content>
