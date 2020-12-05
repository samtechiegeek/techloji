/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.servlet;


import com.tech.blog.dao.PostDao;
import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Post;
import com.tech.blog.entities.User;
import com.tech.blog.entities.message;
import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.helper.Helper;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
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
public class NewPostServlet extends HttpServlet {

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
            
            //fetch all data
            
            String ptitle=request.getParameter("post_title");
            
            String pcontent=request.getParameter("post_content");
            String pcode=request.getParameter("post_code");
            int cid=Integer.parseInt(request.getParameter("post_cid"));
           Part part=request.getPart("post_pic");
            String ppic=part.getSubmittedFileName();
            
            //get the session
            HttpSession s=request.getSession();
            
            User user=(User)s.getAttribute("currentUser");
            Post p=new Post();
            p.setPtitle(ptitle);
            p.setPcontent(pcontent);
            p.setPcode(pcode);
            p.setPpic(ppic);
            p.setCid(cid);
            p.setUserid(user.getUid());
            
            
            HttpSession s1=request.getSession();
            Post p1=new Post(ptitle,pcontent,pcode,ppic,cid,user.getUid());
            s1.setAttribute("postpic",p1);
            
            PostDao dao=new PostDao(ConnectionProvider.getConnection());
            
            boolean ans=dao.savePost(p);
            if(ans)
            {
                
                out.println("updated");
                       
                    }
                else
            {
                out.println("Not Updated");
            }
                
            
            
           //
           
                   
           
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
