package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.sql.ResultSet;
import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();

    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    // find by Ad ID
    Ad findById(long id);

    // get a list of all ads created by a user
    List<Ad> findByUserId(long id);


    List<Ad> findBy(String search);

    List<Ad> lastThree();

    // update an ad via AdEditServlet
    int updateAd(String title, String description, long cat_id, long id);

    // inserts pivot table entries when new adds are created
    long insertPiv(long id, long cat_id);

    // deletes an ad based on ad id. user must confirm with stored password
    int deleteAd(long id);


}
