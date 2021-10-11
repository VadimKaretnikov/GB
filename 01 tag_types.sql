CREATE TABLE IF NOT EXISTS `kinopoisk`.`tag_types` (
  `cd` CHAR(10) NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`cd`),
  UNIQUE INDEX `cd_UNIQUE` (`cd` ASC) VISIBLE)
ENGINE = InnoDB;