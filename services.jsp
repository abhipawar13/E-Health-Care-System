<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>



<style>
@import url('https://fonts.googleapis.com/css?family=Poppins|Ubuntu&display=swap');


*
{
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}
body
{
    background: #fff;
    font-family: 'Ubuntu', sans-serif;

}

.services
{
    display: block;
    position: relative;
    padding: 0;

}
.container
{
    max-width: 1200px;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}

.services-title
{
    display: flex;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
    
}
.services-box
{
    display: flex;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
    margin-top: -15px;
    
}

.title{
    margin-left: 15px;
    position: relative;
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-bottom: 40px;
    text-align: center;
    top: 26px;
}
/**
.services-title>span {
    height: 36px;
    width: 130px;
    margin: 0 auto;
    margin-bottom: 20px;
    display: inline-block;
    font-size: 20px;
    color:rgb(255, 74, 50);
 
}****/
.services-title h2 {
    margin-top: -10px;
    margin-bottom: 6px;
    text-transform: capitalize;
    font-size: 36px;
    line-height: 48px;
    font-weight: 700;
    color: #333;
    font-family: 'ubuntu',sans-serif;

}
.services-title h2 span
{
    color: #3c44a9;
}


.box
{
    position: relative;
    width: 100%;
    
    padding-right: 1px;
    padding-left: 1px;
    max-width: 33.333333%;

}
.ser-box
{    margin-top: 75px;
    padding: 0 60px;
    padding-bottom: 30px;
    min-height: 198px;
    text-align: center;
    border-radius: 10px;
    background-color: #fff;
    -webkit-transition: all .4s ease-in-out;
    -moz-transition: all .4s ease-in-out;
    -ms-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
    -webkit-box-shadow: 0 0 25px 0 rgba(20,27,201,.17);
    box-shadow: 0 0 25px 0 rgba(20,27,201,.17);
}

.ser-box .icon
{
    margin-bottom: 0;
    -webkit-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    transform: translateY(-50%);
    text-align: center;
}
.ser-box h4
{
    font-size: 20px;
    line-height: 1;
    font-weight: 700;
    color: #3c44a9;
    margin-top: -10px;
    font-family: 'Ubuntu', sans-serif;

}
.ser-box p {
    color: #61648e;
    line-height: 24px;
    margin-top: 20px;
    font-family: 'Ubuntu', sans-serif;

}


.ser-box:hover {
 background-image:-moz-linear-gradient(-45deg,#fb0054 0%,#f55b2a 100%);
 background-image:-webkit-linear-gradient(-45deg,#fb0054 0%,#f55b2a 100%);
 background-image:-ms-linear-gradient(-45deg,#fb0054 0%,#f55b2a 100%);
 -webkit-box-shadow:0 0 25px 0 rgba(20,27,201,.05);
 box-shadow:0 0 25px 0 rgba(20,27,201,.05);
 cursor:pointer
}

.ser-box:hover h4,
.ser-box:hover p {
 color:#fff
}



.services-box .box:nth-child(1) .ser-box:hover {
 background-image:-webkit-linear-gradient(-45deg,#34b5bf 0%,#210c59 100%);
 background-image:linear-gradient(-45deg,#34b5bf 0%,#210c59 100%)
}
.services-box .box:nth-child(3) .ser-box:hover {
 background-image:-webkit-linear-gradient(-45deg,#3615e7 0%,#44a2f6 100%);
 background-image:linear-gradient(-45deg,#3615e7 0%,#44a2f6 100%)
}
.services-box .box:nth-child(4) .ser-box:hover{
 background-image:-webkit-linear-gradient(-45deg,#fc6a0e 0%,#fdb642 100%);
 background-image:linear-gradient(-45deg,#fc6a0e 0%,#fdb642 100%);
}
.services-box .box:nth-child(5) .ser-box:hover {
 background-image:linear-gradient(-45deg,#8d40fb 0%,#5a57fb 100%);
 background-image:-webkit-linear-gradient(-45deg,#8d40fb 0%,#5a57fb 100%);

}
.services-box .box:nth-child(6) .ser-box:hover {
 background-image:-webkit-linear-gradient(-45deg,#27b88d 0%,#22dd73 100%);
 background-image:linear-gradient(-45deg,#27b88d 0%,#22dd73 100%)
}






@media (min-width: 768px){
.box 
{
    flex: 0 0 50% !important;
    max-width: 50% !important;
}

}



@media (min-width: 600px){
.box 
{
    flex: 0 0 50% !important;
    max-width: 50% !important;
}

}





@media (min-width: 992px)
{
.box 
{
    flex: 0 0 33.333333% !important;
    max-width: 33.333333% !important;
}
}


@media (min-width: 414px){
.box 
{
    flex: 0 0 100%;
    max-width: 100%;
}

}

@media (min-width: 370px){
.box 
{
    flex: 0 0 100%;
    max-width: 100%;
}

}

@media (min-width: 320px){
.box 
{
    flex: 0 0 100%;
    max-width: 100%;
}

}







</style>





</head>
<body>
 <div class="backnavbar">
    
      <a href="home.jsp">Home</a> 
      <a class="next">&#10095;</a>
      <a>Services<div class="doc-hr"></div></a>
   
<section class="services">

    <div class="container">

        <div class="services-title">
            <div class="title">
                  <!---- <span>S</span> ----->
                   <h2><span> Our </span> Services</h2>
            </div>
        </div>

        <div class="services-box">
           
           <div class="box">
                  <div class="ser-box">
                     <div class="icon">
                         <img src="ambulance.png"  width="120"; height="120";>
                     </div>
                     <h4>Emergency Help</h4>
                     <p>For emergency cases transferring critically ill patients.Tel.No:02425-665422</p>
                  </div>
           </div>

           <div class="box">
                <div class="ser-box">
                   <div class="icon">
                       <img src="stethiscope.png"  width="120"; height="120";>
                   </div>
                   <h4>Qualified Doctors</h4>
                   <p>You may be treated by a number of doctors during your hospital stay the specialist.</p>
                </div>
           </div>

          <div class="box">
            <div class="ser-box">
               <div class="icon">
                   <img src="location.png" width="120"; height="120";>
               </div>
               <h4>Location & Directions</h4>
               <p> Blue Ridge Town Pune,Rajiv Gandhi Infotech Park, Pimpri-Chinchwad, Maharashtra 411057</p>
            </div>
          </div>

          <div class="box">
            <div class="ser-box">
               <div class="icon">
                   <img src="medical.png" width="120"; height="120";>
               </div>
               <h4>Medical Treatments</h4>
               <p>multispecialty health care unit with best in class treatments for cancer,liver transplant, heart, diabetes, kidney ..</p>
            </div>
          </div>

          <div class="box">
          <div class="ser-box">
             <div class="icon">
                 <img src="physiotherapy.png" width="120"; height="120";>
             </div>
             <h4>Physiotherapy</h4>
             <p>We Use Effective & Proven Physio Techniques To Help You Recover From Injury.</p>
          </div>
          </div>

          <div class="box">
           <div class="ser-box">
              <div class="icon">
                 <img src="opd.png"  width="120"; height="120";>
              </div>
             <h4>Outpatient department (OPD)</h4>
             <p>The Outpatient Department (OPD) of any hospital is one of the most significant features.</p>
           </div>
          </div>


        </div>

    </div>
</section>    




</body>
</html>