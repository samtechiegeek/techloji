<%@page import="com.tech.blog.entities.User"%>
<%@page import="java.util.List"%>
<%@page import="com.tech.blog.entities.Post"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<div class="row">
<%
    Thread.sleep(1000);
    PostDao dao =new PostDao(ConnectionProvider.getConnection());
    User u=(User)session.getAttribute("currentUser");
    //HttpSession s=request.getSession();
   Post post =(Post)session.getAttribute("postpic");
 List<Post> list=null;
    int cid=Integer.parseInt(request.getParameter("cid"));
     if(cid==0)
    {
        list=dao.getAllPost();
    }
    else if(cid>0)
    {
         list=dao.getPostByCatid(cid);
    }
    if(list.size()==0)
    {
%>
    
     <div class="container text-center" >
    <h3 class="display:4px" style="margin-top: 200px">No Post...</h3></div>    
    <%}%>
 
<% for(Post p:list)
    {
        
        
%>
<div class="col-md-6">
    <div class="card">
        <div class="card-header" style="background:#b0bec5;">
            
            <div class="col-xs-1">
         <img src="pics/<%=p.getPpic()%>" alt="user_pic" style="width:70px;height:70px;border-radius:50%;">
            </div>
         <div class="col-xs-1">
         <span class="pcontent"><b><%= p.getPtitle()%></b><br>
                 </div>
                 <small>Posted On:-<%= p.getDate()%></small></span>
        </div>
            <div class="card-body">
                <p><%= p.getPcontent() %></p>
                
                    
          
           </div>
                <div class="card-footer">
                    <a href="ReadMore.jsp" class="btn btn-outline-primary">Read More</a>
                            <a href="#" style="margin-left:20px" ><i class="fa fa-thumbs-o-up">
                                    <span class="badge">10 </span>
                        </i></a>
                    <a href="#" style="margin-left:20px" ><i class="fa fa-commenting-o">
                                    <span class="badge">20 </span>
                        </i></a>
                </div>
    
</div>
                <br>
                  
</div>
                 <%}%>   
</div>
                 