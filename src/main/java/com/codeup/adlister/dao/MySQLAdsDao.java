package com.codeup.adlister.dao;

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
            String insertQuery = "INSERT INTO ads(userId, title, description, cat_id, pic, create_date) VALUES (?, ?, ?, ?, ?, ?)";

            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);

            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.setLong(4, ad.getCat_id());
            stmt.setString(5, ad.getPic());
            stmt.setTimestamp(6, ad.getCreate_date());
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
                rs.getString("email"),
                rs.getLong("cat_id"),
                rs.getString("cat_title"),
                rs.getString("pic"),
                rs.getTimestamp("create_date")
        );
    }

    @Override
    public Ad findById(long id) {
        String query = "SELECT t.*, t2.username, t2.email, t3.cat_title " +
                "FROM ads t LEFT JOIN users t2 ON t.userId = t2.id " +
                "LEFT JOIN ad_cat_piv ON cat_id " +
                "LEFT JOIN category t3 ON ad_cat_piv.cats_id = t3.category_id " +
                "WHERE t.id = ? LIMIT 1";
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
        String search = "SELECT * FROM ads " +
                "LEFT JOIN users t2 on ads.userId = t2.id " +
                "LEFT JOIN ad_cat_piv a on ads.id = a.ads_id " +
                "LEFT JOIN category t3 ON a.cats_id = t3.category_id " +
                "WHERE ads.userId = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(search);
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error finding that ad", e);
        }
    }

    @Override
    public List<Ad> findBy(String search) {
        String query = "SELECT ads.*, u.username, c.cat_title " +
                "FROM ads " +
                "LEFT JOIN users u on ads.userId = u.id " +
                "LEFT JOIN ad_cat_piv " +
                "ON ads.id = ad_cat_piv.ads_id " +
                "LEFT JOIN category c " +
                "ON ad_cat_piv.cats_id = c.category_id " +
                "WHERE c.cat_title LIKE ? " +
                "OR u.username LIKE ? " +
                "OR ads.title LIKE ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, search);
            stmt.setString(2, search);
            stmt.setString(3, search);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error finding that ad", e);
        }
    }

    @Override
    public List<Ad> lastThree() {
        String query = "SELECT * FROM ads LEFT JOIN users u " +
                "ON ads.userId = u.id " +
                "LEFT JOIN ad_cat_piv a ON ads.id = a.ads_id " +
                "LEFT JOIN category c ON a.cats_id = c.category_id " +
                "ORDER BY create_date DESC LIMIT 3";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }


    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            Ad ad = extractAd(rs);
            ads.add(ad);
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


    @Override
    public long insertPiv(long id, long cat_id) {
        String query = "INSERT INTO ad_cat_piv(ads_id, cats_id) VALUES (?, ? )";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1, id);
            stmt.setLong(2, cat_id);
            stmt.executeUpdate();
            return 0;
        } catch (SQLException e) {
            throw new RuntimeException("Whoops");
        }
    }

    @Override
    public int deleteAd(long id) {
        String query = "DELETE FROM ads WHERE ads.id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1, id);
            stmt.executeUpdate();
            return 0;
        } catch (SQLException e) {
            throw new RuntimeException("Cannot delete that Ad");
        }
    }
}
