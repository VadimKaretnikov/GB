CREATE TABLE IF NOT EXISTS `kinopoisk`.`movie_ratings` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `movie_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `tag_id` INT NOT NULL,
  review_text MEDIUMTEXT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;

ALTER TABLE kinopoisk.movie_ratings ADD CONSTRAINT mr_user_fk FOREIGN KEY (user_id) REFERENCES kinopoisk.users (id);

ALTER TABLE kinopoisk.movie_ratings ADD CONSTRAINT mr_movie_fk FOREIGN KEY (movie_id) REFERENCES kinopoisk.movies (id);

ALTER TABLE kinopoisk.movie_ratings ADD CONSTRAINT mr_tag_fk FOREIGN KEY (tag_id) REFERENCES kinopoisk.tags (id);

ALTER TABLE kinopoisk.movie_ratings ADD CONSTRAINT mr_uq UNIQUE (user_id, movie_id);