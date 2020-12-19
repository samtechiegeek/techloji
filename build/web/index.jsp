
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="Image/manlaptop.jpg" style="height:40px;width:40px;">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="font-awesome-animation.min.css">
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
         <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script>  
</script>
<title>TechLoji</title>
<script src="myjs.js" type="text/javascript"></script>
<style>
    .banner-background{
    clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 57%, 73% 83%, 40% 90%, 0 100%, 0 1%);
    background-color: #fdd835 ;
    }
    </style>
    </head>
    <body>
        <%@include file="normal_navbar.jsp"%>
       
        <div class="container-fluid p-0 m-0"  style="background-color:#81c784;"> 
            <div class="jumbotron banner-background"style="background-color:#fff59d;">
                   
                <div class="container">
                    <div class="row">
                 <h3 class="col-md-7 display-3" style="margin-top:-25px;" >Welcome To TechLoji</h3>
                    
                    <div class="col-md-2">
                 <img src="pics/techlogo.jpg" style="width:160px;height:160px;border-radius:50%;margin-top:-34px;">
                    </div>
                    </div>
                <h3 style="font-size:40px; margin-top:-24px;">TechLoji</h3>
                <p>Welcome to TechLoji,As know day's without having the knowledge of technology you cannot stand any where.Now days technolgy is became a crucial part of our life
                So come join us and update your technical skills with us, or you can as us any doubt or question which is on your mind,I and my team help you to find the 
                solution to your problems and you any even share your skillset here.</p>
                <a href="register_page.jsp" class="btn btn-primary">Start It's Free  <span class="brand-icon"><i class="fa fa-arrow-circle-right " style="font-size:20px"></i></span>
                   </a>
                <a href="login_page.jsp" class="btn btn-primary">Login <span class="brand-icon" ><i class="fa fa-key" style="font-size:20px"></i></span></a>
                </div>
                </div>
           
             <div class="row m-3">
            <div class="col-md-4">
               <div class="card">
                    <div class="card-body">
                         <h5 class="card-title"><img src ="pics/pic2.jpg" class="img-fluid" style="border-radius:25%;"><br>Java Programming Language</h5>
                            <p class="card-text">Java is a class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible.
                                It is a general-purpose programming language intended to let application developers write once, run anywhere 
                                (WORA).</p>
                            <a href="samblog.jsp" class="btn btn-primary">Read Post</a>
                          </div>
                   </div>
             </div>
             <div class="col-md-4">
               <div class="card" >
                    <div class="card-body">
                        <h5 class="card-title"><img src ="pics/pic1_1.jpg" class="img-fluid" style="border-radius:25%;"><br>Python Programming Language</h5>
                            <p class="card-text">Python is an interpreted, high-level and general-purpose programming language. Created by Guido van Rossum and first released in 1991,
                                Python's design philosophy emphasizes code readability with its notable use of significant whitespace.</p>
                            <a href="samblog.jsp" class="btn btn-primary">Read Post</a>
                          </div>
                   </div>
             </div>
             <div class="col-md-4">
               <div class="card" >
                    <div class="card-body">
                         <h5 class="card-title"><img src ="pics/pic3.jpg" class="img-fluid" style="border-radius:25%;"><br>React.js Language</h5>
                            <p class="card-text">React is an open-source, front end, JavaScript library for building user interfaces or UI components. 
                                It is maintained by Facebook and a community of individual developers and companies.
                                React can be used as a base in the development of single-page or mobile applications.</p>
                            <a href="samblog.jsp" class="btn btn-primary">Read Post</a>
                          </div>
                   </div>
             </div>
                 <div class="row m-3">
            <div class="col-md-4">
               <div class="card">
                    <div class="card-body">
                         <h5 class="card-title"><img src ="pics/pic4.jpg" class="img-fluid" style="border-radius:25%;"><br>C Programming Language</h5>
                            <p class="card-text">C is a general-purpose, procedural computer programming language supporting structured programming, lexical variable scope, and recursion, with a static type system.
                                By design, C provides constructs that map efficiently to typical machine instructions.
                                 </p>
                            <a href="samblog.jsp" class="btn btn-primary">Read Post</a>
                          </div>
                   </div>
             </div>
             <div class="col-md-4">
               <div class="card" >
                    <div class="card-body">
                         <h5 class="card-title"><img src ="pics/images.jpg" class="img-fluid" style="border-radius:25%;"><br>Machine Learning and Deep Learning</h5>
                            <p class="card-text">Machine learning (ML) is the study of computer algorithms that improve automatically through experience.
                                It is seen as a subset of artificial intelligence. Machine learning algorithms build a mathematical model based on sample data, known as "training data".
                               </p>
                            <a href="samblog.jsp" class="btn btn-primary">Read Post</a>
                          </div>
                   </div>
             </div>
             <div class="col-md-4 ">
               <div class="card" >
                    <div class="card-body">
                         <h5 class="card-title"><img src ="pics/11.jpg" class="img-fluid" style="border-radius:25% ;height:175px;width:175px;"><br>!!Share Your Ideas!!</h5>
                         <p class="card-text"><i>“If you have an apple and I have an apple and we exchange these apples then you and I will still each have one apple. But if you have an idea and I have an idea and we exchange these ideas, then each of us will have two ideas.”</i>
                             <br><b> You Can be the next Tech Blogger.Be a technical geeks by post it or read it. <b/></p>
                            <a href="register_page.jsp" class="btn btn-success">Sign Up</a>
                            <br>
                          </div>
                   </div>
             </div>

        </div>
             </div>
        </div>
        
        
                 
        <%
            Connection con=ConnectionProvider.getConnection();
        %>
        <br><br>
        <%@include file="footer.jsp"%>
        
    </body>
</html>
