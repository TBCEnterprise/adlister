SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema adlister_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema adlister_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `adlister_db` DEFAULT CHARACTER SET utf8 ;
USE `adlister_db` ;

-- -----------------------------------------------------
-- Table `adlister_db`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `adlister_db`.`users` (
    `id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(45) NULL DEFAULT NULL,
    `password` VARCHAR(255) NOT NULL,
    `email` VARCHAR(70) NOT NULL,
    `first_name` VARCHAR(45) NOT NULL,
    `last_name` VARCHAR(45) NOT NULL,
    `phone` INT(14) UNSIGNED NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `email_UNIQUE` (`email` ASC),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC),
    UNIQUE INDEX `username_UNIQUE` (`username` ASC))
    ENGINE = InnoDB
    AUTO_INCREMENT = 5
    DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `adlister_db`.`ads`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `adlister_db`.`ads` (
    `id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(200) NOT NULL,
    `description` VARCHAR(500) NULL DEFAULT NULL,
    `create_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `user_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `cat_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    PRIMARY KEY (`id`, `create_date`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC),
    INDEX `user_fk_idx` (`user_id` ASC),
    CONSTRAINT `user_fk`
    FOREIGN KEY (`user_id`)
    REFERENCES `adlister_db`.`users` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `adlister_db`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `adlister_db`.`category` (
    `category_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
    `cat_title` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`category_id`))
    ENGINE = InnoDB
    AUTO_INCREMENT = 8
    DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `adlister_db`.`ad_cat_piv`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `adlister_db`.`ad_cat_piv` (
    `ad_id_piv` MEDIUMINT(8) UNSIGNED NOT NULL,
    `cat_id_piv` MEDIUMINT(8) UNSIGNED NOT NULL,
    INDEX `ad_fk_piv_idx` (`ad_id_piv` ASC),
    INDEX `cat_fk_piv_idx` (`cat_id_piv` ASC),
    CONSTRAINT `ad_fk_piv`
    FOREIGN KEY (`ad_id_piv`)
    REFERENCES `adlister_db`.`ads` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT `cat_fk_piv`
    FOREIGN KEY (`cat_id_piv`)
    REFERENCES `adlister_db`.`category` (`category_id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE)
    ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;