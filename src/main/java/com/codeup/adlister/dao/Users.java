package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

import com.codeup.adlister.models.User;

public interface Users {
    User findbyUsername (String username);
    Long insert (User user);
    Long update (User user);
    User findByUsername(String username);
    int updateContact(User user);
    int updatePassword(User user);
    void updateEmail (String email, Long id);
//    Long userId(String username);
}