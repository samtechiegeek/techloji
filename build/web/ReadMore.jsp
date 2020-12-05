<%-- 
    Document   : ReadMore
    Created on : 31-Oct-2020, 11:44:01 PM
    Author     : Windows
--%>

<%@page import="com.tech.blog.entities.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <% Post p=(Post)session.getAttribute("postpic");
       %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta http-equiv="refresh" content="1000" >
          <link rel="icon" href="Image/manlaptop.jpg" style="height:40px;width:40px;border-radius:20%;">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
         <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <title>Read More</title>
    </head>
    <body>
       <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="pics/<%=p.getPpic()%>" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><%=p.getPtitle()%></h5>
    <p class="card-text"><%=p.getPcontent()%></p>
     <p class="card-text"><%=p.getPcode()%></p>
    
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
    </body>
</html>
