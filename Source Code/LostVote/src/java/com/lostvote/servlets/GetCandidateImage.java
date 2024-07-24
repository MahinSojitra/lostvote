/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lostvote.servlets;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mahin
 */
public class GetCandidateImage extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    Connection connection = null;
    MysqlDataSource mysqlDataSource = null;
    InputStream inputStreamPhoto = null;
    BufferedInputStream bin = null;
    BufferedOutputStream bout = null;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            ServletOutputStream out;
            out = response.getOutputStream(); 
            String voterID = request.getParameter("id");

            mysqlDataSource = (MysqlDataSource) request.getServletContext().getAttribute("connection");
            connection = mysqlDataSource.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement("SELECT photo FROM candidates WHERE candidate_id=?");
            preparedStatement.setString(1, voterID);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                inputStreamPhoto = resultSet.getBinaryStream("photo");
            }
            
            bin = new BufferedInputStream(inputStreamPhoto);  
            bout = new BufferedOutputStream(out);
            
            int ch = 0;
            while((ch = bin.read()) != -1) {  
                bout.write(ch);  
            }

        } catch (IOException | SQLException ex) {
            System.out.println(ex);
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
