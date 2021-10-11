CREATE TABLE IF NOT EXISTS `kinopoisk`.`actors` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `birth_date` DATE NOT NULL,
  `gender` CHAR(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;

ALTER TABLE kinopoisk.actors ADD CONSTRAINT nm_bd UNIQUE (name, birth_date);