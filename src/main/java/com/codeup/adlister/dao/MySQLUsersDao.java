package com.codeup.adlister.dao;

import com.codeup.adlister.Config;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }


    @Override
    public User findByUsername(String username) {
        String query = "SELECT * FROM users WHERE username = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, username);
            return extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    @Override
    public Long insert(User user) {
        String query = "INSERT INTO users(username, email, password, first_name," +
                "last_name, phone) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, Password.hash(user.getPassword()));
            stmt.setString(4, user.getFirstName());
            stmt.setString(5, user.getLastName());
            stmt.setString(6, user.getPhoneNumber());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }

    private User extractUser(ResultSet rs) throws SQLException {
        if (! rs.next()) {
            return null;
        }
        return new User(
            rs.getLong("id"),
            rs.getString("username"),
            rs.getString("email"),
            rs.getString("password"),
            rs.getString("first_name"),
            rs.getString("last_name"),
            rs.getString("phone")
        );
    }

    @Override
    public int updatePassword(User user) {
        String update = "UPDATE users SET password = ? WHERE username = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(update);
            stmt.setString(1, Password.hash(user.getPassword()));
            stmt.setString(2, user.getUsername());
            stmt.executeUpdate();
            return 0;
        } catch (SQLException e) {
            throw new RuntimeException("Error updating password", e);
        }
    }

    @Override
    public int updateContact(User user) {
        String update = "UPDATE users " +
                "SET email = ?," +
                "first_name = ?," +
                "last_name = ?," +
                "phone = ? " +
                "WHERE username = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(update);
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getFirstName());
            stmt.setString(3, user.getLastName());
            stmt.setString(4, user.getPhoneNumber());
            stmt.setString(5, user.getUsername());
            stmt.executeUpdate();
            return 0;
        } catch (SQLException e) {
            throw new RuntimeException("Error updating contact info", e);
        }
    }

}
