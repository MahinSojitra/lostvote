/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lostvote.dao.functions;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author mahin
 */
public class AdminDao {

    static PreparedStatement preparedStatement;
    static PreparedStatement preparedSelect;

    public static String updateAdmin(MysqlDataSource mysqlDataSource, String adminID, String userName, String firstName, String lastName, String email, String phone) {
        try {
            Connection connection = mysqlDataSource.getConnection();
            String query = "UPDATE admins SET username=?, firstname=?, lastname=?, email=?, phone=? WHERE admin_id=?";

            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, userName);
            preparedStatement.setString(2, firstName);
            preparedStatement.setString(3, lastName);
            preparedStatement.setString(4, email);
            preparedStatement.setString(5, phone);
            preparedStatement.setString(6, adminID);

            if (preparedStatement.executeUpdate() > 0) {
                return "Success";
            } else {
                return "Fail";
            }

        } catch (SQLException ex) {
            String probability_one = "Duplicate entry '" + userName + "' for key 'name'";
            String probability_two = "Duplicate entry '" + email + "' for key 'position'";

            if (probability_one.equals(ex.getMessage())) {
                return "username should be unique.";
            } else if (probability_two.equals(ex.getMessage())) {
                return "email should be unique.";
            } else {
                return ex.getMessage();
            }
        }
    }

    public static String updateAdminPassword(MysqlDataSource mysqlDataSource, String adminID, String currentPassword, String newPassword, String confirmPassword) {
        try {
            Connection connection = mysqlDataSource.getConnection();
            String query = "UPDATE admins SET password=? WHERE admin_id=?";
            String password = "";
            
            // match newPassword and confirmPassword
            if (!newPassword.equals(confirmPassword)) {
                return "newPassword and currentPassword are not match.";
            }

            // select password according to adminID
            preparedSelect = connection.prepareStatement("SELECT password FROM admins WHERE admin_id=?");
            preparedSelect.setString(1, adminID);

            ResultSet resultSet = preparedSelect.executeQuery();
            while (resultSet.next()) {
                password = resultSet.getString("password");
            }

            if (password.equals(currentPassword)) {
                preparedStatement = connection.prepareStatement(query);
                preparedStatement.setString(1, newPassword);
                preparedStatement.setString(2, adminID);

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
