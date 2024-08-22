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
-- Table `color_wheel`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `color_wheel` ;

CREATE TABLE IF NOT EXISTS `color_wheel` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `color` VARCHAR(45) CHARACTER SET 'DEFAULT' NOT NULL,
  `hex_code` VARCHAR(45) CHARACTER SET 'DEFAULT' NULL,
  `rgb_value` VARCHAR(45) CHARACTER SET 'DEFAULT' NULL,
  `complementary_color` VARCHAR(50) CHARACTER SET 'DEFAULT' NULL,
  `analogous_colors` VARCHAR(50) CHARACTER SET 'DEFAULT' NULL,
  `image_url` VARCHAR(2000) CHARACTER SET 'DEFAULT' NULL,
  `meaning` VARCHAR(400) CHARACTER SET 'DEFAULT' NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS colorwheeluser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'colorwheeluser'@'localhost' IDENTIFIED BY '1234';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'colorwheeluser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `color_wheel`
-- -----------------------------------------------------
START TRANSACTION;
USE `colorwheeldb`;
INSERT INTO `color_wheel` (`id`, `color`, `hex_code`, `rgb_value`, `complementary_color`, `analogous_colors`, `image_url`, `meaning`) VALUES (1, 'Crimson', '#DC143C', '220, 20, 60', '#00FF00 (Lime)', '#FF4500 (OrangeRed), #FF1493 (DeepPink)', 'images/1.png', 'Passion, love, energy');
INSERT INTO `color_wheel` (`id`, `color`, `hex_code`, `rgb_value`, `complementary_color`, `analogous_colors`, `image_url`, `meaning`) VALUES (2, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);

COMMIT;

