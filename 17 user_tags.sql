CREATE TABLE IF NOT EXISTS `kinopoisk`.`user_tags` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `tag_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

ALTER TABLE kinopoisk.user_tags ADD CONSTRAINT ut_user_fk FOREIGN KEY (user_id) REFERENCES kinopoisk.users (id);

ALTER TABLE kinopoisk.user_tags ADD CONSTRAINT ut_tag_fk FOREIGN KEY (tag_id) REFERENCES kinopoisk.tags (id);

ALTER TABLE kinopoisk.user_tags ADD CONSTRAINT ut_uq UNIQUE (user_id, tag_id);