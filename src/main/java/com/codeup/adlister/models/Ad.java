package com.codeup.adlister.models;

import java.sql.Timestamp;

public class Ad {
    private Timestamp create_date;
    private String pic;
    private String cat_title;
    private String email;
    private long cat_id;
    private long id;
    private long userId;
    private String title;
    private String description;
    private String username;

    public Ad(long id, long userId, String title, String description) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    public Ad(long user_id, String title, String description, String username, long
            cat_id, String pic, Timestamp currentTimeStamp) {
        this.userId = user_id;
        this.title = title;
        this.description = description;
        this.username = username;
        this.cat_id = cat_id;
        this.pic = pic;
        this.create_date = currentTimeStamp;
    }

    public Ad(long id, long userId, String title, String description, String username,
              long cat_id, String cat_title, String pic, Timestamp create_date) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.username = username;
        this.cat_id = cat_id;
        this.cat_title = cat_title;
        this.pic = pic;
        this.create_date = create_date;
    }

    public Ad(long id, long userId, String title, String description, String username, String email, long cat_id, String cat_title, String pic, Timestamp create_date) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.username = username;
        this.email = email;
        this.cat_id = cat_id;
        this.cat_title = cat_title;
        this.pic = pic;
        this.create_date = create_date;
    }


    public long getId() {
        return id;
    }

    public Timestamp getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Timestamp create_date) {
        this.create_date = create_date;
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

    public long getCat_id() { return cat_id; }

    public String getPic() { return pic; }

    public void setPic(String pic) { this.pic = pic; }

    public void setCat_id(long cat_id) { this.cat_id = cat_id; }

    public String getCat_title() { return cat_title; }

    public void setCat_title(String cat_title) { this.cat_title = cat_title; }

    public String getEmail() { return email; }

    public void setEmail(String email) { this.email = email; }
}
