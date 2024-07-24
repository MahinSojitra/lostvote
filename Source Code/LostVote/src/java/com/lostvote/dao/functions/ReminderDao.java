/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lostvote.dao.functions;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author mahin
 */
public class ReminderDao {
    
    static PreparedStatement preparedStatement;
    
    public static String insertReminder(MysqlDataSource mysqlDataSource, String reminderID, String title, String description) {
        try {
            Connection connection = mysqlDataSource.getConnection();
            String query = "INSERT INTO reminders (reminder_id, title, description) VALUES(?, ?, ?)";
            
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, reminderID);
            preparedStatement.setString(2, title);
            preparedStatement.setString(3, description);
            
            if (preparedStatement.executeUpdate() > 0) {
                return "Success";
            } else {
                return "Fail";
            }
            
        } catch (SQLException ex) {
            String probability_one = "Duplicate entry '"+ title +"' for key 'title'";
            
            if (probability_one.equals(ex.getMessage())) {
                return "title should be unique.";
            } else {
                return ex.getMessage();
            }
        }
    }
}
