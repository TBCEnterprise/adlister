package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

public interface Users {

    // utility method used to find a user by column 'username'
    User findByUsername(String username);

    // utility method used to find a user by column 'email'
    User findByEmail(String email);

    // method used to add user to dB
    Long insert(User user);

    // update password method
    int updatePassword(User user);

    // update contact info method
    int updateContact(String email, String firstName, String lastName, String phone, String username);
}
