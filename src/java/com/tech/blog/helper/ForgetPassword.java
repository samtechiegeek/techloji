/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.helper;

import com.email.durgesh.Email;
import com.mysql.jdbc.Connection;

/**
 *
 * @author Windows
 */
public class ForgetPassword {
    
    private final Connection con;
    
    public ForgetPassword(Connection con)
    {
        this.con=con;
    }
    
    public boolean sendmail()
    {
        boolean f=false;
        try{
                
            
            
            Email email=new Email("bakawas26@gmail.com","26bakawas");

                email.setFrom("bakawas26@gmail.com","TechLoji New Password");
                email.setContent("<p><a href='forget_password.jsp'>Click link to reset password</a></p>", "text/html");
                email.addRecipient("samarthmadhuj@gmail.com");
                f=true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    
}
