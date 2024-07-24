/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lostvote.dao.functions;

import static com.lostvote.dao.functions.AdminDao.preparedSelect;
import com.lostvote.helpers.SendEmail;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author mahin
 */
public class VoterDao {

    static PreparedStatement preparedStatement;

    public static String insertVoter(MysqlDataSource mysqlDataSource, String voterID, String firstName, String lastName, String userName, String email, String phone, String aadharNO, String employeeID, String password, String gender) {

        try {
            Connection connection = mysqlDataSource.getConnection();
            String query = "INSERT INTO voters (voter_id, employee_id, username, password, firstname, lastname, email, phone, aadhar_no, gender, photo) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            String subject = "Your Credentials From LostVote";
            String message = "Hello from LostVote, "
                    + "\n\nCongratulations! You've successfully registered at LostVote by admin."
                    + "\n\nNow it's time to vote, here is your credentials."
                    + "\nUsername : " + userName + "\nPassword : " + password;
            
            InputStream inputStream = VoterDao.class.getResourceAsStream("user-image.jpg");

            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, voterID);
            preparedStatement.setString(2, "EMP" + employeeID);
            preparedStatement.setString(3, userName);
            preparedStatement.setString(4, password);
            preparedStatement.setString(5, firstName);
            preparedStatement.setString(6, lastName);
            preparedStatement.setString(7, email);
            preparedStatement.setString(8, phone);
            preparedStatement.setString(9, aadharNO);
            preparedStatement.setString(10, gender);
            preparedStatement.setBlob(11, inputStream);

            if (preparedStatement.executeUpdate() > 0) {
                if (SendEmail.send(new String[]{email}, subject, message)) {
                    return "Success";
                } else {
                    return "SendEmailError";
                }
            } else {
                return "Fail";
            }

        } catch (Exception ex) {
            String probability_one = "Duplicate entry '" + voterID + "' for key 'voter_id'";
            String probability_two = "Duplicate entry '" + employeeID + "' for key 'employee_id'";
            String probability_three = "Duplicate entry '" + userName + "' for key 'username'";
            String probability_four = "Duplicate entry '" + email + "' for key 'email'";

            if (probability_one.equals(ex.getMessage())) {
                return "voterID should be unique.";
            } else if (probability_two.equals(ex.getMessage())) {
                return "employeeID should be unique.";
            } else if (probability_three.equals(ex.getMessage())) {
                return "username should be unique.";
            } else if (probability_four.equals(ex.getMessage())) {
                return "email should be unique.";
            } else {
                return ex.getMessage();
            }
        }
    }

    public static String updateVoterPassword(MysqlDataSource mysqlDataSource, String voterID, String currentPassword, String newPassword, String confirmPassword) {

        try {
            Connection connection = mysqlDataSource.getConnection();
            String query = "UPDATE voters SET password=? WHERE voter_id=?";
            String password = "";

            // match newPassword and confirmPassword
            if (!newPassword.equals(confirmPassword)) {
                return "newPassword and currentPassword are not match.";
            }

            // select password according to adminID
            preparedSelect = connection.prepareStatement("SELECT password FROM voters WHERE voter_id=?");
            preparedSelect.setString(1, voterID);

            ResultSet resultSet = preparedSelect.executeQuery();
            while (resultSet.next()) {
                password = resultSet.getString("password");
            }

            if (password.equals(currentPassword)) {
                preparedStatement = connection.prepareStatement(query);
                preparedStatement.setString(1, newPassword);
                preparedStatement.setString(2, voterID);

                if (preparedStatement.executeUpdate() > 0) {
                    return "Success";
                } else {
                    return "Fail";
                }
            } else {
                return "password is wrong.";
            }

        } catch (SQLException ex) {
            return ex.getMessage();
        }
    }

}
