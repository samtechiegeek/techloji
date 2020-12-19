<%-- 
    Document   : login_page
    Created on : 27-Jul-2020, 11:56:12 AM
    Author     : Windows
--%>

<%@page import="com.tech.blog.entities.message"%>

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
<style>.banner-background
{
     clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 57%, 91% 86%, 53% 98%, 0 84%, 0 0);
}

</style>
        <title>Login Page</title>
    </head>
    <body>
        <%@include file="normal_navbar.jsp"%>
        <main class="d-flex align-items-center banner-background" style="height:70vh;background-color:#d4e157 ">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            
                            <%
                                message m=(message)session.getAttribute("msg");
                                if(m!=null)
                                {
                                    %>
                                                    <div class="alert <%=m.getCssClass()%>" role="alert"> <%= m.getMessage() %></div>
                                    <%
                                        session.removeAttribute("msg");
                                }%>
                                            
                            <div class="card-body" style="background-color:#e3f2fd">
                                <form action='LoginServlet' method="post">
  <div class="form-group " >
      <label for="exampleInputEmail1"><b>Email address</b></label>
   
    <input type="email" class="form-control " id="exampleInputEmail1" aria-describedby="emailHelp" name="email" placeholder="Email" required>
   
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
      <label for="exampleInputPassword1"><b>Password</b></label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="pass" placeholder="Password" required>
  </div>
  
  <button type="submit" class="btn btn-block" style="background-color:teal;color:white;"><b>Login</b></button>
  <br>
  <a href="register_page.jsp"><small>Sign Up Now!!</small></a>
   <a href="forget_password.jsp" style="float:right;color:red;"><small> Forget Password??</small></a>
</form>
                            </div>
                            
                            </div>
                    </div>
                
                    </main><br><br><br><br><br>
        <%@include file="footer.jsp"%>
    </body>
</html>
