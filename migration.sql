CREATE TABLE adlister_db.ads
(
    id int(10) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id int(10) unsigned NOT NULL,
    title varchar(240) NOT NULL,
    description text NOT NULL
);
INSERT INTO adlister_db.ads (id, userId, title, description) VALUES (1, 641, 'ads', 'whats up
');
INSERT INTO adlister_db.ads (id, userId, title, description) VALUES (2, 652, 'gross', 'clean that shit off my screen nicole
');
CREATE TABLE adlister_db.category
(
    category_id int(11) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    cat_title varchar(45) NOT NULL
);
CREATE TABLE adlister_db.users
(
    id mediumint(8) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    username varchar(255),
    email varchar(255),
    password varchar(255)
);
INSERT INTO adlister_db.users (id, username, email, password) VALUES (127, 'ck', 'riley@dog.com', 'food');
INSERT INTO adlister_db.users (id, username, email, password) VALUES (648, 'nic', 'n@k.com', 'pass');
INSERT INTO adlister_db.users (id, username, email, password) VALUES (649, 'riley', 'fk@k.com', 'pass');
INSERT INTO adlister_db.users (id, username, email, password) VALUES (650, 'jaxson', 'jax@gmail.com', 'pass');
INSERT INTO adlister_db.users (id, username, email, password) VALUES (651, 'jaxjax', 'jadsk@dk.com', 'pass');
INSERT INTO adlister_db.users (id, username, email, password) VALUES (652, 'nicole', 'dl2@fj.com', '$2a$12$PvQAAu2lfZxgvo6GIdINuu0KxAPdCPYzABjy2Z0HMbrwNp3L5Mwn.');
INSERT INTO adlister_db.users (id, username, email, password) VALUES (653, 'tim', 'tim@cool.com', '$2a$12$2wGc1I0fGP3X28F5GVth7uc9b8aZk15Zzeog3LK/BFWmCTcVVxtZm');