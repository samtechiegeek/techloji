<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
        <meta http-equiv="refresh" content="1000" >
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
         <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<style>
                     .vl {
  border-left: 6px solid #616161 ;
  height: 1550px;
  margin-left: 30px;
}
                    </style>
    </head>
    <body>
        <%@include file="profile_navbar.jsp"%>
        <main>
            <!-- Button trigger modal -->
            <!--main body --->
            <div class="container-fluid">
                <div class="row mt-3 ml-3 ">
                    <!--first Col categories--->
                    <div class="col-md-3">
                        
                        <ul class="list-group" ">
                            <li class="list-group-item "style="list-style:none;">
                                 <img src="pics/list.jpg" style="width:60px;height:60px;border-radius:50%;float:left;">
                                <a href="#" onclick="getPosts(0)" class="c-link" style="text-decoration:none;font-size:20px;margin-left:15px;padding-top:40px;">All Categories</a>
                                
                            </li>
                            <%
                                PostDao dao1=new PostDao(ConnectionProvider.getConnection());
                                ArrayList <Category>list1=dao1.getAllCategories();
                                for(Category c:list1)
                                {
                            %>
                                
                          <li class="list-group-item " style="list-style:none;">
                                <img src="pics/<%=c.getCategorypics()%>" style="width:60px;height:60px;border-radius:50%;float:left;">
                              <a href="#" onclick="getPosts(<%=c.getCid() %>,this)" class="c-link" style="text-decoration:none;font-size:20px;margin-left:15px;padding-top:40px;"> <%= c.getCategory() %></a>
                          
                          </li>
                          <% } %>
                        </ul>
                    </div>
                    <!--Second Col posts --->
                    <div class="vl"></div>
                    
                     <div class="col-md-7 scrollable-content" >
                         <div class="container text-center mt-5" id="loader"><span class="fa fa-refresh fa-3x fa-spin " ></span><br><br><h4>Please Wait...<br>Posts are Loading</h4><br></div>
                          <div class="container-fluid" id="post_container">
                        
                    </div>
                    </div>
                   
                    
                    
                </div> 
            </div>
      


        </main>
                        
                       <script>
                           function getPosts(catid,temp)
                           {
                              $("#loader").show();
                                       $("#post_container").hide();
                                       $(".c-link").removeClass('active');
                              
                                $.ajax(
                              {
                                  url:"loading_post.jsp",
                                    data:{cid:catid},//send to server
                                   type:"post",
                                   success:function(data)
                                   {
                                       //console.log(data);
                                       $("#loader").hide();
                                       $("#post_container").show();
                                       $("#post_container").html(data);
                                       $(temp).addClass('active');
                                   }
                              });
                           }
                  $(document).ready(function(e)
                  {
                        getPosts(0);
                  });
                  </script>
 
       
          <%@include file="footer.jsp" %>
          <style>
              li:hover{
                  background-color:#c5e1a5;
                  color:white;
              }
              .scrollable-content {
  height: 1480px;
  width:500px;
  overflow: auto;
 
}
              </style>
              
    </body>
</html>
