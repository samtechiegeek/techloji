/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.servlet;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.entities.message;
import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.helper.Helper;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Windows
 */
@MultipartConfig

public class EditServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
                      
            out.println("</head>");
            out.println("<body>");
           
            //new Data
            String useremail=request.getParameter("uedit_email");
            String userblog=request.getParameter("uedit_blog");
            String userprofileinterest=request.getParameter("uedit_profile");
            String userpass=request.getParameter("uedit_pass");
            Part part =request.getPart("uedit_pic");
            String imageName=part.getSubmittedFileName();
            
            
            //get user from session
            
            HttpSession s=request.getSession();
            
            User u=(User)s.getAttribute("currentUser");
            u.setEmail(useremail);
            u.setBloginterest(userblog);
            u.setProfileinterest(userprofileinterest);
            u.setPassword(userpass);
            u.setProfile(imageName);
            
            UserDao dao=new UserDao(ConnectionProvider.getConnection());
            
            if(dao.Updateuser(u))
            {
                String path=request.getRealPath("/")+"pics"+File.separator+u.getProfile();
                   if(Helper.saveFile(part.getInputStream(), path))
                    {
                        message m=new message("Profile Updated","success","alert-success");
                        s.setAttribute("msg",m);
                        response.sendRedirect("profile.jsp");
                        
                    }
                
            }
            else
            {
                out.println("Not Updated..");
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
