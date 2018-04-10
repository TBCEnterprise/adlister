package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.util.List;

public interface Ads {
    List<Ad> all ();
    Long insert (Ad ad);
    List<Ad> showUserAds (String username);
    List<Ad> search (String searchTerm, String username, String category);
    List<Ad> searchByCategory(String category);
    Ad showSpecificById(Long id);
    void delete (long id);
    Long update (Ad ad);
    Ad findById(long id);


}
