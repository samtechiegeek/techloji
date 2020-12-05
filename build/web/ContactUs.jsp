<%-- 
    Document   : ContactUs
    Created on : 01-Nov-2020, 12:24:00 AM
    Author     : Windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="icon" href="Image/manlaptop.jpg" style="height:40px;width:40px;border-radius:20%;">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
         <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <title>Contact Us Here</title>
        <style>
            * {
  box-sizing: border-box;
}

/* Style inputs */
input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

/* Style the container/contact section */
.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 10px;
}

/* Create two columns that float next to eachother */
.column {
  float: left;
  width: 50%;
  margin-top: 6px;
  padding: 20px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
        </style>
    </head>
    <body>
      <div class="jumbotron" style="background-color:grey;color:white;">
  <div style="text-align:center">
      <h1><b>Contact Us</b></h1>
    <p>Meet us here if you want to know more about us</p>
  </div>
  <div class="row">
    <div class="column">
      <img src="pics/location.jpg" style="width:100%">
    </div>
    <div class="column">
      <form action="/action_page.php">
        <label for="fname">First Name</label>
        <input type="text" id="fname" name="firstname" placeholder="Your name..">
        <label for="lname">Last Name</label>
          <input type="text" id="lname" name="lastname" placeholder="Your last name..">
         <label for="fname">Email</label>
        <input type="text" id="email" name="email" placeholder="Your Email..">
      
        <label for="country">City</label>
        <select id="country" name="country">
          <option value="australia">Indore</option>
          <option value="canada">Raipur</option>
          <option value="usa">Hyderabad</option>
        </select>
        <label for="subject">Subject</label>
        <textarea id="subject" name="subject" placeholder="Write something.." style="height:170px"></textarea>
        <a class="btn btn-success " type="submit">Submit </a>
               <a class="btn btn-warning" href="index.jsp" >Back To Home</a>
      </form>
      
    </div>
     
  </div>
</div>
        <br><br>
        <div class="container-fluid"style="background: #283048;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #859398, #283048);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #859398, #283048); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
; height:300px; padding-bottom:30px;">
            <div class="row">
         <div class="col-md-2">
            <img src="pics/developerphoto.jpeg" alt="developer-photo" style="width:200px;height:250px;border-radius:50%;margin-top:30px;">
         </div>
            <div class="col-md-5">
                <h3 class="display-5" style="padding-top:42px;padding-right:50px;color:white;font-size:40px">About Developer</h3>
                <p style="color:white;"> Hello Members,Hope You all like the website very much.This is just a demo website I am currently working on the upgrade version of this website
                    where you can get answer as soon as possible.Oooo.. Sorry I forgot to introduce myself.I am Samarth Madhu Jain currently pursing my master from National
                Institute of Technology,Raipur and also a freelance website Developer.</p>
        </div>
                <div class="col-md-4" style="color:white;font-size:25px;padding-top:53px;float:right;margin-right:10px;">
                 
                        <div class="col-md-10">
                    <h3 style="font-size:25px;padding-top:43px;float:right;margin-right:10px;padding-left:3px;margin-right:-15px"> Find me Here :<br></h3>
                        </div>
                        <div class="col-md-11">
                    <a href="#" style="color:white; float:right;margin-right:15px;padding-top:88px;padding-left:3px;"><i class="fab fa-facebook-square fa-2x" style="float:right;margin-right:-185px;"></i></a>
                    <a  style="color:white; float:right;margin-right:15px;padding-top:88px;" href="#"><i class="fab fa-instagram fa-2x"style="float:right;margin-right:-140px;"></i></a>
                    <a href="#" style="color:white; float:right;margin-right:15px; padding-top:88px;"><i class="fab fa-twitter-square fa-2x"style="float:right;margin-right:-95px;"></i></a>
                      <a href="#" style="color:white; float:right;margin-right:15px; padding-top:88px;"><i class="fab fa-linkedin fa-2x"style="float:right;margin-right:-45px;"></i></a>
                </div>
                   
                </div>
              
                <br><br>
        <style>
            i:hover{
                color:blue;
               
            }
            
            i{
               align-items:flex-end;
            }
            
        </style>
        
        
    </body>
    
    
</html>
