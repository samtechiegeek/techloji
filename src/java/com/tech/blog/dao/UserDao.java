/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.dao;
import com.tech.blog.entities.Category;
import com.tech.blog.entities.Post;
import com.tech.blog.entities.User;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.*;
public class UserDao {
    private final Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    //method to insert usert to data
    public boolean saveUser(User user)
    {
        boolean f=false;
        try
        {
            String query="insert into user (uname,email,pass,bloginterest,profileinterest) values(?,?,?,?,?)";
            PreparedStatement ps=this.con.prepareStatement(query);
            ps.setString(1,user.getName());
            ps.setString(2,user.getEmail());
            ps.setString(3,user.getPassword());
            ps.setString(4,user.getBloginterest());
            ps.setString(5,user.getProfileinterest());
            ps.executeUpdate();
            f=true;
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    //get user by user emmail and password
    public User getUserByEmailAndPassword(String email,String pass)
    {
        User user= null;
        
        try
        {
            String query="select * from user where(email=? and pass=?)";
            PreparedStatement ps=this.con.prepareStatement(query);
            ps.setString(1,email);
            ps.setString(2,pass);
           ResultSet rs= ps.executeQuery();
           if(rs.next())
           {
               user=new User();
               String name=rs.getString("uname");
               user.setName(name);
                String email1=rs.getString("email");
               user.setEmail(email1);
               String password=rs.getString("pass");
               user.setPassword(password);
                String bloginterest=rs.getString("bloginterest");
               user.setBloginterest(bloginterest);
               String profileinterest=rs.getString("profileinterest");
               user.setProfileinterest(profileinterest);
               Date rdate=rs.getDate("date");
               user.setR_date(rdate);
               String profile=rs.getString("profile");
               user.setProfile(profile);
               int uid=Integer.parseInt(rs.getString("uid"));
               user.setUid(uid);
              
               
              
        }
            
            
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return user;
    }
    public boolean Updateuser(User user)
    {
        boolean f=false;
        try
        {
           
            String query="update user set email=?,pass=?,bloginterest=?,profileinterest=?,profile=? where email=?";
            PreparedStatement ps=this.con.prepareStatement(query);
            ps.setString(1,user.getEmail());
            ps.setString(2,user.getPassword());
            ps.setString(3,user.getBloginterest());
            ps.setString(4,user.getProfileinterest());
            ps.setString(5,user.getProfile());
            ps.setString(6,user.getEmail());
            
           
            ps.executeUpdate();
            f=true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    public boolean NewPassword(User user)
    {
        boolean f=false;
        try
        {
            String query="update user set email=?,pass=? where email=?";
            PreparedStatement ps=this.con.prepareStatement(query);
            ps.setString(1,user.getEmail());
            ps.setString(2,user.getPassword());
             ps.setString(3,user.getEmail());
             ps.executeUpdate();
            f=true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
  
    
}
