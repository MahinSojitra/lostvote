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
public class ElectionDao {
    
    static PreparedStatement preparedStatement;
    
    public static String insertElection(MysqlDataSource mysqlDataSource, String electionID, String startDate, String endDate, String description, String name, String position) {
        try {
            Connection connection = mysqlDataSource.getConnection();
            String query = "INSERT INTO elections (election_id, start_date, end_date, description, name, position) VALUES(?, ?, ?, ?, ?, ?)";
            
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, electionID);
            preparedStatement.setString(2, startDate);
            preparedStatement.setString(3, endDate);
            preparedStatement.setString(4, description);
            preparedStatement.setString(5, name);
            preparedStatement.setString(6, position);
            
            if (preparedStatement.executeUpdate() > 0) {
                return "Success";
            } else {
                return "Fail";
            }
            
        } catch (SQLException ex) {
            String probability_one = "Duplicate entry '"+ name +"' for key 'name'";
            String probability_two = "Duplicate entry '"+ position +"' for key 'position'";
            
            if (probability_one.equals(ex.getMessage())) {
                return "name should be unique.";
            } else if(probability_two.equals(ex.getMessage())) {
                return "position should be unique.";
            } else {
                return ex.getMessage();
            }
        }
    }
}
