CREATE TABLE adlister_db.ad_cat_piv
(
    ads_id mediumint(8) unsigned,
    cats_id int(11) unsigned NOT NULL,
    CONSTRAINT ads_fk FOREIGN KEY (ads_id) REFERENCES ads (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT cat_fk FOREIGN KEY (cats_id) REFERENCES category (category_id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE INDEX ads_fk ON adlister_db.ad_cat_piv (ads_id);
CREATE INDEX cat_fk ON adlister_db.ad_cat_piv (cats_id);
INSERT INTO adlister_db.ad_cat_piv (ads_id, cats_id) VALUES (5, 1);
CREATE TABLE adlister_db.ads
(
    id mediumint(8) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title varchar(200) NOT NULL,
    description varchar(500),
    create_date timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    userId mediumint(8) unsigned NOT NULL,
    cat_id int(10) unsigned NOT NULL,
    CONSTRAINT user_fk FOREIGN KEY (userId) REFERENCES users (id)
);
CREATE UNIQUE INDEX id_UNIQUE ON adlister_db.ads (id);
CREATE INDEX user_fk_idx ON adlister_db.ads (userId);
INSERT INTO adlister_db.ads (id, title, description, create_date, userId, cat_id) VALUES (5, 'buy', 'thins', '2018-04-09 15:57:24', 1, 1);
INSERT INTO adlister_db.ads (id, title, description, create_date, userId, cat_id) VALUES (6, 'dlakj', 'lkjlkj', '2018-04-09 16:57:06', 6, 2);
INSERT INTO adlister_db.ads (id, title, description, create_date, userId, cat_id) VALUES (7, 'buy my stuff', 'right now', '2018-04-09 16:58:26', 6, 1);
INSERT INTO adlister_db.ads (id, title, description, create_date, userId, cat_id) VALUES (8, 'daw', 'daw', '2018-04-09 17:04:30', 6, 1);
INSERT INTO adlister_db.ads (id, title, description, create_date, userId, cat_id) VALUES (9, 'Honda', '''93 Honda Civic like new', '2018-04-09 17:22:57', 6, 0);
INSERT INTO adlister_db.ads (id, title, description, create_date, userId, cat_id) VALUES (10, 'Puppy', 'Like new', '2018-04-09 17:26:08', 6, 0);
INSERT INTO adlister_db.ads (id, title, description, create_date, userId, cat_id) VALUES (11, 'Broken Table', 'Legs need tlc', '2018-04-09 17:30:10', 6, 0);
INSERT INTO adlister_db.ads (id, title, description, create_date, userId, cat_id) VALUES (12, 'Good Job', 'High Pay', '2018-04-09 17:33:27', 6, 0);
INSERT INTO adlister_db.ads (id, title, description, create_date, userId, cat_id) VALUES (13, 'Dodge Pickup', '''88 Ram', '2018-04-09 17:44:21', 6, 1);
CREATE TABLE adlister_db.category
(
    category_id int(10) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    cat_title varchar(45) NOT NULL
);
INSERT INTO adlister_db.category (category_id, cat_title) VALUES (1, 'Cars');
INSERT INTO adlister_db.category (category_id, cat_title) VALUES (2, 'Electronics');
INSERT INTO adlister_db.category (category_id, cat_title) VALUES (3, 'Furniture');
INSERT INTO adlister_db.category (category_id, cat_title) VALUES (4, 'Pets');
INSERT INTO adlister_db.category (category_id, cat_title) VALUES (5, 'Jobs');
CREATE TABLE adlister_db.users
(
    id mediumint(8) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    username varchar(45),
    password varchar(255) NOT NULL,
    email varchar(70) NOT NULL,
    first_name varchar(45) NOT NULL,
    last_name varchar(45) NOT NULL,
    phone int(14) unsigned NOT NULL
);
CREATE UNIQUE INDEX id_UNIQUE ON adlister_db.users (id);
CREATE UNIQUE INDEX username_UNIQUE ON adlister_db.users (username);
CREATE UNIQUE INDEX email_UNIQUE ON adlister_db.users (email);
INSERT INTO adlister_db.users (id, username, password, email, first_name, last_name, phone) VALUES (1, 'jklhkjh', 'lkhlhljh', 'kljhk', 'jhkjhljh', 'ljhkjh', 988795945);
INSERT INTO adlister_db.users (id, username, password, email, first_name, last_name, phone) VALUES (6, 'admin', '$2a$12$q5iVD84b3UC8v5oSoUKnmexAN3l7d9S2QjoLLgwsBjPW/.qps.MyW', 'themvp@mail.com', 'John', 'Kelley', 4153049304);