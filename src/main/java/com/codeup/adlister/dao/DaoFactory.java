package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

public class DaoFactory {
    private static Ads adsDao;
    private static Users usersDao;
    private static Config config = new Config();

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config) {
                @Override
                public User findByUsername(String username) {
                    return null;
                }

                @Override
                public int updateContact(User user) {
                    return 0;
                }

                @Override
                public int updatePassword(User user) {
                    return 0;
                }
            };
        }
        return usersDao;
    }
}
