package com.codeup.adlister.models;

import java.io.InputStream;
import java.sql.Blob;

public class Ad {
    private String cat_title;
    private String create_date;
    private long cat_id;
    private long id;
    private long userId;
    private String title;
    private String description;
    private String username;
    private Blob pic;

    public Ad(String cat_title, String create_date, long cat_id, long id, long userId, String title, String description, String username, Blob pic) {
        this.cat_title = cat_title;
        this.create_date = create_date;
        this.cat_id = cat_id;
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.username = username;
        this.pic = pic;
    }

    public Ad(long id, long userId, String title, String description) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    public Ad(long user_id, String title, String description, String
            username, long cat_id, String create_date) {
        this.userId = user_id;
        this.title = title;
        this.description = description;
        this.username = username;
        this.cat_id = cat_id;
        this.create_date = create_date;
    }

    public Ad(long user_id, String title, String description, String cat_title, String
            create_date) {
        this.userId = user_id;
        this.title = title;
        this.description = description;
        this.cat_title = cat_title;
        this.create_date = create_date;
    }

    public Ad(long id, long userId, String title, String description, String username,
              long cat_id) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.username = username;
        this.cat_id = cat_id;
    }

    public Ad(long id, String newTitle, String newDesc, String username, long cat_id) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.username = username;
        this.cat_id = cat_id;
    }

    public Blob getPic() {
        return pic;
    }

    public void setPic(Blob pic) {
        this.pic = pic;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getCreate_date() { return create_date; }

    public void setCreate_date(String create_date) { this.create_date = create_date; }

    public long getCat_id() { return cat_id; }

    public void setCat_id(long cat_id) { this.cat_id = cat_id; }

    public String getCat_title() { return cat_title; }

    public void setCat_title(String cat_title) { this.cat_title = cat_title; }
}
