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
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Windows
 */
public class forgetpassServlet extends HttpServlet {

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
            out.println("<title>Servlet forgetpassServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            String email=request.getParameter("femail");
            String newpass=request.getParameter("fpass");
            String confirmpass=request.getParameter("fcpass");
            
            UserDao dao=new UserDao(ConnectionProvider.getConnection());
             User u=new User(email,newpass);
              
            if(dao.NewPassword(u))
             {
                 if(newpass.compareTo(confirmpass)==0)
                 {
                     message m=new message("Password Change","success","alert-success");
                     HttpSession s=request.getSession();
                     s.setAttribute("msg",m);
                     response.sendRedirect("login_page.jsp");
                     
                 }
                 else
                 {
                     
                      message m=new message("Enter Correct Password ","error","alert-danger");
                     HttpSession s=request.getSession();
                     s.setAttribute("msg",m);
                     response.sendRedirect("forget_password.jsp");
                 }
                
             }
            else 
                 {
                      message m=new message("Again Check ","error","alert-danger");
                     HttpSession s=request.getSession();
                     s.setAttribute("msg",m);
                     response.sendRedirect("forget_password.jsp");
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
