CREATE TABLE IF NOT EXISTS `kinopoisk`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  email_address VARCHAR(256) NOT NULL,
  `name` VARCHAR(256) NOT NULL,
  `gender` CHAR(1) NOT NULL,
  `birthdate` DATE NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email_address` ASC) VISIBLE)
ENGINE = InnoDB