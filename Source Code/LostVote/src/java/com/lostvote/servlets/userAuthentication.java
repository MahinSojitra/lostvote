/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lostvote.servlets;

import com.lostvote.helpers.OTPGenerator;
import com.lostvote.helpers.SendEmail;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mahin
 */
public class userAuthentication extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    private String username;
    private String password;
    private Connection connection;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            ServletContext context = getServletContext();
            MysqlDataSource mysqlDataSource = (MysqlDataSource) context.getAttribute("connection");
            connection = mysqlDataSource.getConnection();

            username = request.getParameter("username");
            password = request.getParameter("password");

            PreparedStatement prepareAdmin = connection.prepareStatement("SELECT admin_id, username, password, email, firstname, lastname  FROM admins where username=? AND password=?");
            PreparedStatement prepareVoter = connection.prepareStatement("SELECT voter_id, username, password, email, firstname, lastname FROM voters where username=? AND password=?");
            prepareAdmin.setString(1, username);
            prepareAdmin.setString(2, password);
            prepareVoter.setString(1, username);
            prepareVoter.setString(2, password);

            ResultSet resultSetAdmin = prepareAdmin.executeQuery();
            ResultSet resultSetVoter = prepareVoter.executeQuery();

            HttpSession httpSession = request.getSession();

            if (resultSetAdmin.next()) {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("index");
                httpSession.setAttribute("adminID", resultSetAdmin.getString("admin_id"));
                httpSession.setAttribute("username", resultSetAdmin.getString("username"));
                httpSession.setAttribute("password", resultSetAdmin.getString("password"));
                httpSession.setAttribute("firstname", resultSetAdmin.getString("firstname"));
                httpSession.setAttribute("lastname", resultSetAdmin.getString("lastname"));
                httpSession.setAttribute("email", resultSetAdmin.getString("email"));
                httpSession.setAttribute("verifyStatus", true);
                httpSession.setAttribute("usertype", "admin");

                // redirect to next page.
                requestDispatcher.forward(request, response);

            } else if (resultSetVoter.next()) {

                RequestDispatcher requestDispatcher = request.getRequestDispatcher("verify-email");
                String OTP = OTPGenerator.GetOTP(6);
                String message = "Hello " + resultSetVoter.getString("firstname") + " " + resultSetVoter.getString("lastname") + ",\n"
                        + "You login an account on LostVote, before being able to use your account you need to verify that it's you by entering 6 digit OTP(one time password) to the email verification page.\n\n"
                        + "Your OTP : " + OTP + "\n\n"
                        + "Thank you for joining our LostVote family!\n\n"
                        + "Kind Regards, LostVote.";
                SendEmail.send(new String[]{resultSetVoter.getString("email")}, "Your OTP for login to LostVote", message);
                httpSession.setAttribute("voterID", resultSetVoter.getString("voter_id"));
                httpSession.setAttribute("username", resultSetVoter.getString("username"));
                httpSession.setAttribute("password", resultSetVoter.getString("password"));
                httpSession.setAttribute("firstname", resultSetVoter.getString("firstname"));
                httpSession.setAttribute("lastname", resultSetVoter.getString("lastname"));
                httpSession.setAttribute("email", resultSetVoter.getString("email"));
                httpSession.setAttribute("verifyStatus", false);
                httpSession.setAttribute("usertype", "voter");
                httpSession.setAttribute("otp", OTP);

                // redirect to next page.
                requestDispatcher.forward(request, response);
            } else {

                out.print("<div class=\"row justify-content-center mt-3\"><div class=\"col-4\"><div class=\"alert alert-warning alert-dismissible d-flex align-items-center fade show\">\n"
                        + "                                <i class=\"bi bi-exclamation-triangle-fill\"></i>\n"
                        + "                                <strong class=\"mx-2\">Error!</strong> Username and Password are incorrect !\n"
                        + "                                <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button>\n"
                        + "                            </div></div></div>");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("login");
                requestDispatcher.include(request, response);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
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
