package com.codeup.adlister.dao;

import com.mysql.cj.jdbc.Driver;
import com.codeup.adlister.models.User;

import java.sql.*;

public abstract class MySQLUsersDao implements Users {
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
    public User findbyUsername(String username) {
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
        String query = "INSERT INTO users(username, email, password) VALUES (?, ?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            long id = rs.getLong(1);
            user.setId(id);
            return id;
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }

    @Override
    public Long update(User user) {
        String query = "UPDATE users SET username=?, email=?, password=? where id=?";
        try{
            PreparedStatement stmt=connection.prepareStatement(query);
            stmt.setString(1,user.getUsername());
            stmt.setString(2,user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.setLong(4,user.getId());
            stmt.executeUpdate();
            return 0L;
        } catch (SQLException e) {
            throw new RuntimeException("Error updating user info",e);
        }
    }

    public void updateEmail (String email, Long id){
        String query = "UPDATE users SET email=? WHERE id=?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, email);
            stmt.setLong(2, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //Function gets userId from the user based on username.
//    @Override
//    public Long userId(String username) {
//        String query = "SELECT id FROM users WHERE username=?";
//        try {
//            PreparedStatement stmt = connection.prepareStatement(query);
//            stmt.setString(1, username);
//            ResultSet rs = stmt.executeQuery();
//            while(rs.next()){
//                return rs.getLong("id");
//            }
//        } catch (SQLException e) {
//
//            throw new RuntimeException("There was an error retrieving the ID " + e.getMessage());
//        }
//
//    }

    private User extractUser(ResultSet rs) throws SQLException {
        if (!rs.next()) {
            return null;
        }
        return new User(
                rs.getLong("id"),
                rs.getString("username"),
                rs.getString("password"),
                rs.getString("email")
        );
    }

}
