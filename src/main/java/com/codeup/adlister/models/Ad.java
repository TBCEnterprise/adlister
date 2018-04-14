package com.codeup.adlister.models;

public class Ad {
    private String pic;
    private String cat_title;
    private String create_date;
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
            cat_id) {
        this.userId = user_id;
        this.title = title;
        this.description = description;
        this.username = username;
        this.cat_id = cat_id;
    }

    public Ad(long id, String title, String description, String username, long cat_id, String create_date) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.username = username;
        this.cat_id = cat_id;
        this.create_date = create_date;
    }

    public Ad(long id, long userId, String title, String description, String username, long cat_id, String cat_title, String create_date) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.username = username;
        this.cat_id = cat_id;
        this.cat_title = cat_title;
        this.create_date = create_date;

    }

    public Ad(long userId, String title, String description, String username, long cat_id, String cat_title, String create_date, String pic) {
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.username = username;
        this.cat_id = cat_id;
        this.cat_title = cat_title;
        this.pic = pic;
        this.create_date = create_date;
    }

    public Ad(long id, long userId, String title, String description, String username, long cat_id, String cat_title, String create_date, String pic) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.username = username;
        this.cat_id = cat_id;
        this.cat_title = cat_title;
        this.create_date = create_date;
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

    public String getCreate_date() {
        return create_date;
    }

    public void setCreate_date(String create_date) {
        this.create_date = create_date;
    }

    public long getCat_id() {
        return cat_id;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public void setCat_id(long cat_id) {
        this.cat_id = cat_id;
    }

    public String getCat_title() {
        return cat_title;
    }

    public void setCat_title(String cat_title) {
        this.cat_title = cat_title;
    }
}
