<%-- 
    Document   : normal_navbar
    Created on : 27-Jul-2020, 9:59:25 AM
    Author     : Windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
       
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
             <a href="index.jsp"> <img src="Image/techloji.png" alt="website-logo" style="height:100px;width:100px;border-radius:20%"></a>
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
       
      <li class="nav-item ">
             
        <a class="nav-link" href="samblog.jsp" style="font-size:20px;color:white;" href="#">Sam Blog</a>
      </li>
      <li class="nav-item">
           
        <a class="nav-link" href="ContactUs.jsp" style="font-size:20px;color:white;"href="#">Contact Us</a>
      </li>
       <li class="nav-item">
      <a class="nav-link" href="login_page.jsp" style="font-size:20px;color:white;">Login </a>
       </li>
      <li class="nav-item dropdown">
    
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"  style="font-size:20px;color:white;"aria-expanded="false">
          Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="ComingsoonPage.jsp">Programming Language</a>
          <a class="dropdown-item" href="ComingsoonPage.jsp">Project Implementation</a>
           <a class="dropdown-item" href="ComingsoonPage.jsp">Data Structure And Algorithm </a>
            <a class="dropdown-item" href="ComingsoonPage.jsp">C Programming </a>
             <a class="dropdown-item" href="ComingsoonPage.jsp">Django </a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Other Programming Language </a>
        </div>
      
    </ul>
     </div>
</nav>
    </body>
</html>
