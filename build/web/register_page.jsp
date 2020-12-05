

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="font-awesome-animation.min.css">
        <link rel="icon" href="Image/manlaptop.jpg" style="height:40px;width:40px;">
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
         <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
 <style>
     .banner-background
{
     clip-path: polygon(100% 0, 100% 79%, 50% 100%, 0 80%, 0 0);
}
.card{
    z-index:9;
}
footer{
    margin-top:10px;
}
</style>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<title>Registration Page</title>
    </head>
    <body>
        <%@include file="normal_navbar.jsp"%>
        <main class="d-flex align-items-center banner-background" style="height:85vh; background-color: #d4e157">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            
                            <div class="card-body" style="background-color:#e3f2fd">
                               
                              <form class="needs-validation"  action="SignUpServlet" method="post" id="reg-form">
  <div class="form-group">
       <div class="form-group">
    <label for="username">Username</label>
    <input type="text" class="form-control" id="username" name="user_name" required>
  </div>
    
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="user_email" required>
   
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="user_pass" required>
  </div>
                                     <div class="form-group">
    <label for="bloginterest">Blog Interest</label>
    <input type="text" class="form-control" id="bloginterest" name="user_bloginterest" required>
  </div>
                                  
                                  <div class="form-group">
                                       <label for="profiler">User Occupation</label>
    
                                  <select class="form-control form-control-xs" name="user_profileinterest" >
                                      
  <option>Python Programmer</option>
  <option>Android Developer</option>
  <option>DataBase Expert</option>
  <option>Data Structure Expert</option>
  <option>Tech Editor</option>
</select>
                                  </div>
  <div class="container text-center" id="loader" style="display:none;"><span class="fa fa-refresh fa-2x fa-spin " ></span><br><h4>Please Wait</h4><br></div>
  
  <center> <button type="submit" id="submit_button" class="btn btn-primary">Register</button></center>
   </form> 
                        </div>
                           
                    </div>
            </div>
                   
        </main>
        <footer>
        <%@include file="footer.jsp"%> 
        
        </footer>
     <script>
                                    $(document).ready(function(){
                                        console.log("hurrrrr");
                                    $("#reg-form").on("submit",function(e) {
                                        e.preventDefault();
                                        $("#submit_button").hide();
                                        $("#loader").show();
                                        let form=new FormData(this);
                                   
                                    $.ajax({
                                    url: "SignUpServlet",
                                    type: "post",
                                    data:form,
                                    success : function(data){
                                    console.log(data);
                                    $("#loader").hide();
                                    $("#submit_button").show();
                                    swal({
                                                    title: "Good job!",
                                                    text: "Register Successfully",
                                                    icon: "success",
                                                    button: "Ok"
                                                  });
                                                  window.location="login_page.jsp";
                                    },
                                    error:function()
                                    {
                                        console.log('error');
                                        $("#loader").hide();
                                    $("#submit_button").show();
                                    },
                                    processData:false,
                                    contentType:false
                                    });
                                    });
                                    });
                                    
                                   
                                    </script>
          
        
          
    
    </body>
</html>
