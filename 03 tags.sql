CREATE TABLE IF NOT EXISTS `kinopoisk`.`tags` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `type_cd` CHAR(10) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

ALTER TABLE kinopoisk.tags ADD CONSTRAINT type_fk FOREIGN KEY (type_cd) REFERENCES kinopoisk.tag_types (cd);
