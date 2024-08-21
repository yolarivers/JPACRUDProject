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
  `color` VARCHAR(45) NOT NULL,
  `hex_code` VARCHAR(45) NULL,
  `rgb_value` VARCHAR(45) NULL,
  `complementary_color` VARCHAR(50) NULL,
  `analogous_colors` VARCHAR(50) NULL,
  `image_url` VARCHAR(2000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS colorwheeluser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'colorwheeluser'@'localhost' IDENTIFIED BY 'colorwheeluser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'colorwheeluser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `color_wheel`
-- -----------------------------------------------------
START TRANSACTION;
USE `colorwheeldb`;
INSERT INTO `color_wheel` (`id`, `color`, `hex_code`, `rgb_value`, `complementary_color`, `analogous_colors`, `image_url`) VALUES (1, 'Crimson', NULL, NULL, NULL, NULL, NULL);

COMMIT;

