CREATE TABLE IF NOT EXISTS `shop`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nickname` VARCHAR(45) NULL,
  `name` VARCHAR(256) NOT NULL,
  `gender` CHAR(1) NOT NULL,
  `birthdate` DATE NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `nickname_UNIQUE` (`nickname` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `sample`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nickname` VARCHAR(45) NULL,
  `name` VARCHAR(256) NOT NULL,
  `gender` CHAR(1) NOT NULL,
  `birthdate` DATE NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `nickname_UNIQUE` (`nickname` ASC) VISIBLE)
ENGINE = InnoDB;

insert into `shop`.`users` (nickname, name, gender, birthdate)
values ('ddd', 'Ivan Ivanov', 'M', date '1976-01-01');