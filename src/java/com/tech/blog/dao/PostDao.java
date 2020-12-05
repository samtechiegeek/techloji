/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.dao;

/**
 *
 * @author Windows
 */

import com.tech.blog.entities.Category;
import com.tech.blog.entities.Post;
import com.tech.blog.entities.User;
//import com.tech.blog.entities.Posts;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author Windows
 */

public class PostDao {
    private final Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }

   public ArrayList<Category> getAllCategories()
   {
       ArrayList<Category> list=new ArrayList<>();
       try
       {
           String query="select * from categories";
           PreparedStatement ps=this.con.prepareStatement(query);
           ResultSet rs=ps.executeQuery();
           while(rs.next())
           {
               int id=rs.getInt("cid");
               String category=rs.getString("category");
               String description=rs.getString("description");
               String categorypics=rs.getString("categorypics");
               Category c=new Category(id,category,description,categorypics);
               list.add(c);
           }
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       return list;
   }
    
   public boolean savePost(Post p)
   {
       boolean f=false;
       try
       {
           String query="insert into posts (ptitle,pcontent,pcode,ppic,cid,userid) values(?,?,?,?,?,?)";
           PreparedStatement ps=this.con.prepareStatement(query);
           ps.setString(1,p.getPtitle());
           ps.setString(2,p.getPcontent());
           ps.setString(3,p.getPcode());
           ps.setString(4,p.getPpic());
           ps.setInt(5,p.getCid());
           ps.setInt(6,p.getUserid());
 ps.executeUpdate();
           f=true;
           
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       return f;
   }
   
   //getting all the posts
   
   public List<Post> getAllPost()
   {
       
       List<Post> list=new ArrayList<>();
       //fetch all the post
       try
       {
           String query="select * from posts order by pid desc ";
           PreparedStatement ps=this.con.prepareStatement(query);
           ResultSet rs=ps.executeQuery();
           while(rs.next())
           {
               int pid=rs.getInt("pid");
               String ptitle=rs.getString("ptitle");
               String pcontent=rs.getString("pcontent");
               String pcode=rs.getString("pcode");
               String ppic=rs.getString("ppic");
               Date date=rs.getDate("date");
               int cid=rs.getInt("cid");
               int userid=rs.getInt("userid");
               Post p=new Post(pid,ptitle,pcontent,pcode,ppic,cid,userid,date);
               list.add(p);
           }
           
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       return list;
       
   }
   
   //filter the post by categories
   public List<Post> getPostByCatid(int cid)
   {
       List<Post> list=new ArrayList<>();
       
       try
       {
           String query="select * from posts where cid=?";
           
           PreparedStatement ps=this.con.prepareStatement(query);
           ps.setInt(1,cid);
           ResultSet rs=ps.executeQuery();
           while(rs.next())
           {
               int pid=rs.getInt("pid");
               String ptitle=rs.getString("ptitle");
               String pcontent=rs.getString("pcontent");
               String pcode=rs.getString("pcode");
               String ppic=rs.getString("ppic");
               Date date=rs.getDate("date");
               
               int userid=rs.getInt("userid");
               Post p=new Post(pid,ptitle,pcontent,pcode,ppic,cid,userid,date);
               list.add(p);
           }
           
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       
       return list;
   }
   
   public String getImageUser() throws SQLException
   {
       String str="";
       try{
                    String query="select profile from user as u NATURAL JOIN posts as p";
                   
                    PreparedStatement ps=this.con.prepareStatement(query);
                    
                    ResultSet rs=ps.executeQuery();
                    if(rs.next())
                    {
                        str=rs.getString("profilepic");
                    }
                  //  System.out.println(str);
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       
       return str;
   }
    
}
