CREATE TABLE IF NOT EXISTS `kinopoisk`.`movie_tags` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `tag_id` INT NOT NULL,
  `movie_id` INT NOT NULL,
  `assign_date` DATE NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;

ALTER TABLE kinopoisk.movie_tags ADD CONSTRAINT tag_fk FOREIGN KEY (tag_id) REFERENCES kinopoisk.tags (id);

ALTER TABLE kinopoisk.movie_tags ADD CONSTRAINT movie_fk FOREIGN KEY (movie_id) REFERENCES kinopoisk.movies (id);
