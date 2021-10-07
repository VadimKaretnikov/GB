CREATE TABLE IF NOT EXISTS `vk`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nickname` VARCHAR(45) NULL,
  `name` VARCHAR(256) NOT NULL,
  `gender` CHAR(1) NOT NULL,
  `birthdate` DATE NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `nickname_UNIQUE` (`nickname` ASC) VISIBLE)
ENGINE = InnoDB