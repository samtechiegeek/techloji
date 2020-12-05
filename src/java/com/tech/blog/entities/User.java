/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.entities;
import java.sql.*;
/**
 *
 * @author Windows
 */
public class User {
    private int uid;
    private String name;
    private String email;
    private String password;
    private String bloginterest;
    private String profileinterest;
    private Date r_date;
    private String profile;

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public User(String name, String email, String password, String bloginterest, String profileinterest) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.bloginterest = bloginterest;
        this.profileinterest = profileinterest;
    }

    public User() {
        
    }

    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getBloginterest() {
        return bloginterest;
    }

    public void setBloginterest(String bloginterest) {
        this.bloginterest = bloginterest;
    }

    public String getProfileinterest() {
        return profileinterest;
    }

    public void setProfileinterest(String profileinterest) {
        this.profileinterest = profileinterest;
    }

    public Date getR_date() {
        return r_date;
    }

    public void setR_date(Date r_date) {
        this.r_date = r_date;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public User(String name, String email, String password, String bloginterest, String profileinterest, Date r_date, String profile) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.bloginterest = bloginterest;
        this.profileinterest = profileinterest;
        this.r_date = r_date;
        this.profile = profile;
    }

    public User(String name, String email, String password, String bloginterest, String profileinterest, String profile) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.bloginterest = bloginterest;
        this.profileinterest = profileinterest;
        this.profile = profile;
    }

    
}
