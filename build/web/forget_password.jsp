<%-- 
    Document   : forget_password
    Created on : 30-Jul-2020, 1:28:48 AM
    Author     : Windows
--%>


<%@page import="com.tech.blog.entities.message"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
         <link rel="stylesheet" href="font-awesome-animation.min.css">
         <link rel="icon" href="Image/manlaptop.jpg" style="height:40px;width:40px;">
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
         <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forget Password</title>
    </head>
   
     
     <nav class="navbar navbar-expand-lg navbar-light" style="background-color:#ff5252;">
 

  
    <ul class="navbar-nav mr-auto">
        <center></center>
        <h2 style="margin-left:490px;"><img src="pics/oops.jpg" style="width:90px;height:90px;border-radius:50%;margin-top:0px"><b>Recover Password Page</b></h2>
      
      
      
    </ul>
         
    <form class="form-inline my-2 my-lg-0">
      
       <a class="btn btn-primary " href="login_page.jsp" style="float:right;" >Login</a>
        <a class="btn btn-warning my-2 my-sm-0" href="index.jsp" style="float:right;" >Back To Home</a>
    </form>
  </div>
</nav>
       <body style="background-color: #e6ee9c;">  
      <div class="card"style="width:300px;height:370px;margin-top: 40px;margin-left:550px;background-color:#66bb6a">
  <div class="card-body" >  
        <form action="forgetpassServlet" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1" style="float:left;" >Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="femail" required>
    <small id="emailHelp" class="form-text text-muted"><b>Please write it very carefully</b></small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1"style="float:left;"> New Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="New Password" name="fpass" required>
  </div>
            <div class="form-group">
    <label for="exampleInputPassword1" style="float:left;"> Confirm New Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Confirm Password" name="fcpass" required>
  </div>
  
  <button type="submit" class="btn btn-danger">Reset Password</button>
</form>
  </div>
      </div>
           <%
                                message m=(message)session.getAttribute("msg");
                                if(m!=null)
                                {
                                    %>
                                                    <div class="alert <%=m.getCssClass()%>" role="alert"> <%= m.getMessage() %></div>
                                    <%
                                        session.removeAttribute("msg");
                                }%>
    </body>
</html>
