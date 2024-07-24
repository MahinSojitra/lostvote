/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lostvote.helpers;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.SQLException;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 *
 * @author mahin
 */
public class LVListener implements ServletContextListener {

    MysqlDataSource mysqlDataSource;
    
    @Override
    public void contextInitialized(ServletContextEvent event) {
        
        // get connection properties from web.xml file
        String jdbcURL = event.getServletContext().getInitParameter("jdbcURL");
        String dataBaseName = event.getServletContext().getInitParameter("dataBaseName");
        String userName = event.getServletContext().getInitParameter("userName");
        String password = event.getServletContext().getInitParameter("password");
        
        try {
            // create mysqldatasource object and set all properties
            mysqlDataSource = new MysqlDataSource();
            mysqlDataSource.setURL(jdbcURL + dataBaseName);
            mysqlDataSource.setDatabaseName(dataBaseName);
            mysqlDataSource.setUser(userName);
            mysqlDataSource.setPassword(password);
            mysqlDataSource.setPort(3306);
            
            // set attribute of connection
            event.getServletContext().setAttribute("connection", mysqlDataSource);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        try {
            mysqlDataSource.getConnection().close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
