<%-- 
    Document   : normal_navbar
    Created on : 27-Jul-2020, 9:59:25 AM
    Author     : Windows
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tech.blog.entities.Category"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.entities.message"%>
<%@page import="com.tech.blog.entities.User"%>
<%@page errorPage="error_page.jsp"%> 
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    User user=(User)session.getAttribute("currentUser");
    if(user==null)
    {
        
        response.sendRedirect("login_page.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="refresh" content="1000" >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="icon" href="Image/manlaptop.jpg" style="height:40px;width:40px;border-radius:20%;">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </head>
    <body>
       
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary" >
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
           
        <a class="nav-link" href="ContactUs.jsp" style="font-size:20px;color:white;" href="#">Contact Us</a>
      </li>
       
      <li class="nav-item dropdown">
    
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"  style="font-size:20px;color:white;"role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
          <li class="nav-item">
           
        <a class="nav-link" href="#" style="font-size:20px;color:white;"  data-toggle="modal" data-target="#exampleModal">Add Post</a>
      </li>
  
    </ul>
      <ul class="navbar-nav mr-right">
          <li>
             
              
              <a href="#" class="nav-link" style="font-size:20px;color:white;" data-toggle="modal"  data-target="#profile-model"><span><img src="pics/<%=user.getProfile()%>" style="border-radius:75%; width:40px;height:40px;color:white"> </span><%= user.getName()%></a>
              
          </li>
          <li>
              <a href="#" class="notification">
  <span><i class="fa fa-bell fa-1x" aria-hidden="true"></i></span>Notification
  <span class="badge">3</span>
</a>
          </li>
          <li>
              <a href="LogoutServlet"  style="font-size:20px;color:white;"class="nav-link">LogOut</a>
          </li>
      </ul>

          
  </div>
</nav>
          
          <!-- Modal -->
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="profile-model" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center" style="background-color:#ff5252 ">
          <div class="container text-center"><img src="pics/<%=user.getProfile() %>" class="img-fluid" style="border-radius:50%;max-width:140px;" rel="profileimg"><br>
          <h5 class="modal-title text-center" id="exampleModalLabel" style="color:white;"><%=user.getName() %></h5>
          </div>
          <br>
        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
         
          
      <div class="modal-body" id="profile-detail">
          
          <h5>Blog Interest: <%=user.getBloginterest() %></h5><br>
          <h5>Profile Occupation: <%=user.getProfileinterest() %></h5><br>
          <h5>Registration Date: <%=user.getR_date() %></h5><br>
          <h5>Email: <%=user.getEmail() %></h5><br>
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
     
      <div id="profile-edit" style="display:none;">
          <center><h5 class="display:2px">Edit Carefully</h5></center>
          
          <form action="EditServlet" method="post" enctype="multipart/form-data">
             
              <table class="table">
                  <tr>
                      <td ><h3 class="display:2px"><%=user.getName() %></h3></td></tr>
                  <tr>  <td><h5>Update Email :</h5><input type="email" name="uedit_email" class="form-control" value="<%=user.getEmail() %>"></td></tr>
                  <tr><td><h5>Update Blog Interest :</h5><input type="text" name="uedit_blog" class="form-control" value="<%=user.getBloginterest() %>"></td></tr>
                  <tr><td><h5>Update Profiler Occupation :</h5><input type="text" name="uedit_profile" class="form-control" value="<%=user.getProfileinterest() %>"></td></tr>
                  <tr><td><h5>Update Password :</h5><input type="text" name="uedit_pass" class="form-control" value="<%=user.getPassword() %>"></td></tr>
                   <tr><td><h5>New Profile Pic :</h5><input type="file" name="uedit_pic" class="form-control" ></td></tr>
                  
                  </tr>
              </table>
                  <div class="container text-center">
                       <button type="submit" id="save-profile-btn" class="btn btn-outline-primary">Save</button>
                          
                  </div>
          </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" id="edit-profile-btn" class="btn btn-primary">Edit</button>
     
      </div>
    
    </div>
  </div>
</div>
                  <!-- Button trigger modal -->


<!-- Modal -->
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header" style="background:#4dd0e1; color:white">
        <h5 class="modal-title" id="exampleModalLabel" >Add Post</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
       
      <div class="modal-body">
          <form action="NewPostServlet" method="post" enctype="multipart/form-data" id="idpost"> 
                                    <div class="form-group">
                                      <label for="ptitle">Post Title</label>
                                      <input type="text" class="form-control" name="post_title">
                                     
                                    </div>
                                    <div class="form-group">
                                        <label for="pcontent">Post Content</label>
                                        <textarea class="form-control" name="post_content" rows="3"></textarea>
                                      </div>
                                      <div class="form-group">
                                        <label for="pcode">Post Code</label>
                                        <textarea class="form-control" name="post_code" rows="3"></textarea>
                                      </div>
                                     <div class="form-group">
                                          <label for="pcategory">Category</label>
                                     <select class="form-control form-control-xs" name="post_cid">
                                         <% PostDao dao=new PostDao(ConnectionProvider.getConnection());
                                             ArrayList<Category>list=dao.getAllCategories();
                                             for(Category c:list)
                                             {
                                                 
                                             
                                         %>
                                         <option value="<%=c.getCid()%>"><%= c.getCategory()%></option>
                                             <% } %>    
                                     </select>
                                    
                                     </div>
                                     <div class="form-group">
                                      <label for="p_pic">Post Image</label>
                                      <input type="file" class="form-control" name="post_pic">
                                     
                                    </div>
                                     <div class="container text-center">
                                    <button type="submit" class="btn btn-outline-primary">Add Post</button>
                                    </div>
                                    </form>
                                   
                      
          
  </div>
</div>
  </div>
</div>
    




<!--script--->



       <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
       <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
      <script>
          $(document).ready(function()
          {
              let editStatus=false;
              $("#edit-profile-btn").click(function()
              {
                  if(editStatus===false)
                  {
                      $("#profile-edit").show();
                      $("#profile-detail").hide();
                      
                      editStatus=true;
                      $(this).text("Back");
                  }
                  else
                  {
                      $("#profile-edit").hide();
                      $("#profile-detail").show();
                       
                      editStatus=false;
                       $(this).text("Edit");
                  }
              });
          });
          </script>
          <!--add post js--->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
          <script>
              $(document).ready(function(e)
              {
                  $("#idpost").on('submit',function(e)
                  {
                      //this code gets called when form is submitted
                      e.preventDefault();
                      let form=new FormData(this);
                      console.log("your form is submitted");
                      //know request to server
                      $.ajax(
                              {
                                 url:"NewPostServlet" ,//which servlet u want to call
                                 type:"POST",
                                 data:form,
                                 success:function(data)
                                 {
                                    if(data.trim()==='updated')//check whether data is update or not
                                    {
                                        swal({
                                                    title: "Good Job",
                                                    text: "Post Added Successfully",
                                                    icon: "success",
                                                    button: "Done"
                                                  });
                                                  
                                    }
                                    else
                                    {
                                          swal({
                                                    title: "Opps SomeThing Went Wrong !!!",
                                                    text: "Try Again",
                                                    icon: "error",
                                                    button: "Done"
                                                  });
                                                  
                                    }
                                },
                                 error:function()
                                 {
                                      swal({
                                                    title: "Opps SomeThing Went Wrong !!!",
                                                    text: "Try Again",
                                                    icon: "error",
                                                    button: "Done"
                                                  });
                                 },
                                
                                 processData:false, 
                                 contentType:false
                                
                              });
                  });
              });
              
              </script>
              
              <!--loading post using ajax--->
              <style>
                  .notification {
 
 color:white;
  text-decoration: none;
  padding: 16px 26px;
  position: relative;
  display: block;
  border-radius: 2px;
  font-size:17px;
   margin-bottom:5px;
}

.notification:hover
{
    text-decoration: none;
    color:white;
}

.notification .badge {
  position: absolute;
  top: -2px;
  right: 5px;
  padding: 7px 7px;
 
  border-radius: 50%;
 background:red;
  color: white;
}

              </style>
              
    </body>
</html>
