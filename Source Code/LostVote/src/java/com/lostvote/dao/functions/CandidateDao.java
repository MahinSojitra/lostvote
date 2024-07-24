/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lostvote.dao.functions;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author mahin
 */
public class CandidateDao {

    static PreparedStatement preparedStatement;
    static PreparedStatement selectPosition;

    public static String insertCandidate(MysqlDataSource mysqlDataSource, String candidateID, String electionID, String employeeID, String firstName, String lastName, String email, String photoPath, String phone, String birthDate, String gender, String city, String about) {
        try {
            Connection connection = mysqlDataSource.getConnection();
            String query = "INSERT INTO candidates (candidate_id, election_id, employee_id, firstname, lastname, email, photo, phone, birth_date, gender, city, position, about) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            String position_name = "";

            // select position according to election_id
            selectPosition = connection.prepareStatement("SELECT position FROM elections WHERE election_id=?");
            selectPosition.setString(1, electionID);
            ResultSet resultSet = selectPosition.executeQuery();
            while (resultSet.next()) {
                position_name = resultSet.getString("position");
            }
            
            File file = new File(photoPath);
            File absoluteFile = file.getAbsoluteFile();
            System.out.println(absoluteFile.getAbsolutePath());

//            preparedStatement = connection.prepareStatement(query);
//            preparedStatement.setString(1, candidateID);
//            preparedStatement.setString(2, electionID);
//            preparedStatement.setString(3, employeeID);
//            preparedStatement.setString(4, firstName);
//            preparedStatement.setString(5, lastName);
//            preparedStatement.setString(6, email);
//            preparedStatement.setBlob(7, photo);
//            preparedStatement.setString(8, phone);
//            preparedStatement.setString(9, birthDate);
//            preparedStatement.setString(10, gender);
//            preparedStatement.setString(11, city);
//            preparedStatement.setString(12, position_name);
//            preparedStatement.setString(13, about);
//            
//            if (preparedStatement.executeUpdate() > 0) {
//                return "Success";
//            } else {
//                return "Fail";
//            }
            return "Success";

        } catch (Exception ex) {
            String probability_one = "Duplicate entry '" + electionID + "' for key 'election_id'";
            String probability_two = "Duplicate entry '" + employeeID + "' for key 'employee_id'";
            String probability_three = "Duplicate entry '" + email + "' for key 'email'";

            if (probability_one.equals(ex.getMessage())) {
                return "electionID should be unique.";
            } else if (probability_two.equals(ex.getMessage())) {
                return "employeeID should be unique.";
            } else if (probability_three.equals(ex.getMessage())) {
                return "email should be unique.";
            } else {
                return ex.getMessage();
            }
        }
    }

}
