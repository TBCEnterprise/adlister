package com.codeup.adlister.dao;

import com.codeup.adlister.Config;
import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
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
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement(
                    "SELECT * FROM ads LEFT JOIN users u ON ads.userId = u.id " +
                            "LEFT JOIN ad_cat_piv a ON ads.id = a.ads_id " +
                            "LEFT JOIN category c ON a.cats_id = c.category_id");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(userId, title, description, cat_id," +
                    " create_date) VALUES (?, ?, ?, ?, ?)";

            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);

            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.setLong(4, ad.getCat_id());
            stmt.setString(5, ad.getCreate_date());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getLong("id"),
            rs.getLong("userId"),
            rs.getString("title"),
            rs.getString("description"),
            rs.getString("username"),
            rs.getLong("cat_id")
        );
    }

    @Override
    public Ad findById(long id) {
        String query = "SELECT * FROM ads\n" +
                        "JOIN users u on ads.userId = u.id\n" +
                        "WHERE ads.id = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return extractAd(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error finding that ad", e);
        }
    }

    @Override
    public List<Ad> findByUserId(long id) {
        String search = "SELECT * FROM ads JOIN users u on ads.userId = u.id WHERE u" +
                ".id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(search);
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error finding that ad", e);
        }
    }


    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

    @Override
    public int updateAd(String title, String description, long cat_id, long id) {
        String update = "UPDATE ads " +
                "SET title = ?," +
                "description = ?," +
                "cat_id = ? " +
                "WHERE ads.id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(update);
            stmt.setString(1, title);
            stmt.setString(2, description);
            stmt.setLong(3, cat_id);
            stmt.setLong(4, id);
            stmt.executeUpdate();
            return 0;
        } catch (SQLException e) {
            throw new RuntimeException("Error updating contact info", e);
        }
    }

}
