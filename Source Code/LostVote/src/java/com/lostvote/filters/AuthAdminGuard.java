/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lostvote.filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mahin
 */
public class AuthAdminGuard implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // init filter 
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        HttpSession session = request.getSession();
        
        if (session.getAttribute("verifyStatus") != null) {

            if (true == (boolean) session.getAttribute("verifyStatus")) {
                
                // get usertype from session
                String userType = String.valueOf(session.getAttribute("usertype"));
                
                if (userType.matches("admin")) {
                    chain.doFilter(request, response);
                } else {

                    /**
                     * invalidate session and redirect to login page if any
                     * INTERFERENCE are found.
                     */
                    session.invalidate();
                    response.sendRedirect("../login");
                }
                
            } else {
                
                /**
                 * invalidate session and redirect to login page if any
                 * INTERFERENCE are found.
                 */
                session.invalidate();
                response.sendRedirect("../login");
            }

        } else {
            
            /**
             * invalidate session and redirect to login page if any INTERFERENCE
             * are found.
             */
            session.invalidate();
            response.sendRedirect("../login");
        }

    }

    @Override
    public void destroy() {
        // destory filter
    }

}
