-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema colorwheeldb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `colorwheeldb` ;

-- -----------------------------------------------------
-- Schema colorwheeldb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `colorwheeldb` DEFAULT CHARACTER SET utf8 ;
USE `colorwheeldb` ;

-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user` ;

CREATE TABLE IF NOT EXISTS `user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NULL,
  `enabled` TINYINT NULL,
  `role` VARCHAR(45) NULL,
  `email` VARCHAR(45) NOT NULL,
  `created_at` VARCHAR(45) NULL,
  `updated_at` VARCHAR(45) NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `color`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `color` ;

CREATE TABLE IF NOT EXISTS `color` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `hex_code` VARCHAR(45) CHARACTER SET 'utf8' NULL,
  `rgb_value` VARCHAR(45) CHARACTER SET 'utf8' NULL,
  `meaning` TEXT CHARACTER SET 'utf8' NULL,
  `tint` VARCHAR(45) NULL,
  `shade` VARCHAR(45) NULL,
  `user_id` INT NOT NULL,
  `created_by` VARCHAR(75) NULL,
  `created_at` VARCHAR(45) NULL,
  `updated_at` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_color_user_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_color_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = '\n';


-- -----------------------------------------------------
-- Table `analogous_color`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `analogous_color` ;

CREATE TABLE IF NOT EXISTS `analogous_color` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `analogous_color_id` INT NOT NULL,
  `color_id` INT NOT NULL,
  PRIMARY KEY (`id`, `analogous_color_id`, `color_id`),
  INDEX `fk_color_has_color_color2_idx` (`analogous_color_id` ASC) VISIBLE,
  INDEX `fk_color_has_color_color1_idx` (`id` ASC) VISIBLE,
  CONSTRAINT `fk_color_has_color_color1`
    FOREIGN KEY (`id`)
    REFERENCES `color` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_color_has_color_color2`
    FOREIGN KEY (`analogous_color_id`)
    REFERENCES `color` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `color_scheme`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `color_scheme` ;

CREATE TABLE IF NOT EXISTS `color_scheme` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `description` TEXT NULL,
  `user_id` VARCHAR(45) NULL,
  `created_at` VARCHAR(45) NULL,
  `updated_at` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `color_scheme_color`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `color_scheme_color` ;

CREATE TABLE IF NOT EXISTS `color_scheme_color` (
  `color_scheme_id` INT NOT NULL,
  `color_id` VARCHAR(45) NULL,
  PRIMARY KEY (`color_scheme_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `user_activity`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user_activity` ;

CREATE TABLE IF NOT EXISTS `user_activity` (
  `id` INT NOT NULL,
  `user_id` INT UNSIGNED NULL,
  `activity_type` VARCHAR(45) CHARACTER SET 'utf8' NULL,
  `timestamp` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS colorwheeluser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'colorwheeluser'@'localhost' IDENTIFIED BY 'coloruser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'colorwheeluser'@'localhost';

-- -----------------------------------------------------
-- Data for table `user`
-- -----------------------------------------------------
START TRANSACTION;
USE `colorwheeldb`;
INSERT INTO `user` (`id`, `username`, `password`, `enabled`, `role`, `email`, `created_at`, `updated_at`, `first_name`, `last_name`) VALUES (1, 'admin', 'test', 1, 'admin', 'admin@gmail.com', NULL, NULL, 'admin', 'test');
INSERT INTO `user` (`id`, `username`, `password`, `enabled`, `role`, `email`, `created_at`, `updated_at`, `first_name`, `last_name`) VALUES (2, 'yola', 'test', 1, 'user', 'yola@color.com', NULL, NULL, 'yola', 'cole');
INSERT INTO `user` (`id`, `username`, `password`, `enabled`, `role`, `email`, `created_at`, `updated_at`, `first_name`, `last_name`) VALUES (3, 'testuser', 'password123', 1, 'user', 'testuser@example.com', NULL, NULL, 'user', 'test');

COMMIT;


-- -----------------------------------------------------
-- Data for table `color`
-- -----------------------------------------------------
START TRANSACTION;
USE `colorwheeldb`;
INSERT INTO `color` (`id`, `name`, `hex_code`, `rgb_value`, `meaning`, `tint`, `shade`, `user_id`, `created_by`, `created_at`, `updated_at`) VALUES (1, 'Crimson', '#DC143C', '220, 20, 60', 'Passion, love, energy', NULL, NULL, 2, NULL, NULL, NULL);
INSERT INTO `color` (`id`, `name`, `hex_code`, `rgb_value`, `meaning`, `tint`, `shade`, `user_id`, `created_by`, `created_at`, `updated_at`) VALUES (2, 'Sky Blue', '#87CEEB', '135, 206, 235', 'Calmness, tranquility, openness', NULL, NULL, 2, NULL, NULL, NULL);
INSERT INTO `color` (`id`, `name`, `hex_code`, `rgb_value`, `meaning`, `tint`, `shade`, `user_id`, `created_by`, `created_at`, `updated_at`) VALUES (3, 'Forest Green', '#228B22', '34, 139, 34', 'Growth, stability, endurance', NULL, NULL, 2, NULL, NULL, NULL);
INSERT INTO `color` (`id`, `name`, `hex_code`, `rgb_value`, `meaning`, `tint`, `shade`, `user_id`, `created_by`, `created_at`, `updated_at`) VALUES (4, 'Sunflower', '#FFDA03', '255, 218, 3', 'Happiness, energy, positivity', NULL, NULL, 2, NULL, NULL, NULL);
INSERT INTO `color` (`id`, `name`, `hex_code`, `rgb_value`, `meaning`, `tint`, `shade`, `user_id`, `created_by`, `created_at`, `updated_at`) VALUES (5, 'Royal Purple', '#7851A9', '120, 81, 169', 'Royalty, luxury, ambition', NULL, NULL, 2, NULL, NULL, NULL);
INSERT INTO `color` (`id`, `name`, `hex_code`, `rgb_value`, `meaning`, `tint`, `shade`, `user_id`, `created_by`, `created_at`, `updated_at`) VALUES (6, 'Coral', '#FF7F50', '255, 127, 80', 'Warmth, vibrancy, nurturing', NULL, NULL, 2, NULL, NULL, NULL);
INSERT INTO `color` (`id`, `name`, `hex_code`, `rgb_value`, `meaning`, `tint`, `shade`, `user_id`, `created_by`, `created_at`, `updated_at`) VALUES (7, 'Mint Green', '#98FF98', '152, 255, 152', 'Freshness, health, tranquility', NULL, NULL, 2, NULL, NULL, NULL);
INSERT INTO `color` (`id`, `name`, `hex_code`, `rgb_value`, `meaning`, `tint`, `shade`, `user_id`, `created_by`, `created_at`, `updated_at`) VALUES (8, 'Navy Blue', '#000080', '0, 0, 128', 'Confidence, authority, trust', NULL, NULL, 2, NULL, NULL, NULL);
INSERT INTO `color` (`id`, `name`, `hex_code`, `rgb_value`, `meaning`, `tint`, `shade`, `user_id`, `created_by`, `created_at`, `updated_at`) VALUES (9, 'Lavender', '#E6E6FA', '230, 230, 250', 'Grace, elegance, calmness', NULL, NULL, 2, NULL, NULL, NULL);
INSERT INTO `color` (`id`, `name`, `hex_code`, `rgb_value`, `meaning`, `tint`, `shade`, `user_id`, `created_by`, `created_at`, `updated_at`) VALUES (10, 'Charcoal', '#36454F', '54, 69, 79', 'Strength, sophistication, mystery', NULL, NULL, 2, NULL, NULL, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `analogous_color`
-- -----------------------------------------------------
START TRANSACTION;
USE `colorwheeldb`;
INSERT INTO `analogous_color` (`id`, `analogous_color_id`, `color_id`) VALUES (2, 8, 5);
INSERT INTO `analogous_color` (`id`, `analogous_color_id`, `color_id`) VALUES (3, 5, 7);

COMMIT;


-- -----------------------------------------------------
-- Data for table `color_scheme`
-- -----------------------------------------------------
START TRANSACTION;
USE `colorwheeldb`;
INSERT INTO `color_scheme` (`id`, `name`, `description`, `user_id`, `created_at`, `updated_at`) VALUES (1, 'Warm Summer', 'A warm and energetic color scheme perfect for summer designs', NULL, NULL, NULL);
INSERT INTO `color_scheme` (`id`, `name`, `description`, `user_id`, `created_at`, `updated_at`) VALUES (2, 'Fresh Growth', 'A color scheme that evokes the freshness of spring', NULL, NULL, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `user_activity`
-- -----------------------------------------------------
START TRANSACTION;
USE `colorwheeldb`;
INSERT INTO `user_activity` (`id`, `user_id`, `activity_type`, `timestamp`) VALUES (1, 10, 'login', '');
INSERT INTO `user_activity` (`id`, `user_id`, `activity_type`, `timestamp`) VALUES (2, 15, 'logout', '');
INSERT INTO `user_activity` (`id`, `user_id`, `activity_type`, `timestamp`) VALUES (3, 12, 'create_color_scheme', '');
INSERT INTO `user_activity` (`id`, `user_id`, `activity_type`, `timestamp`) VALUES (4, 11, 'update_profile', '');

COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
