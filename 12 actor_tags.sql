CREATE TABLE IF NOT EXISTS `kinopoisk`.`actor_tags` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `tag_id` INT NOT NULL,
  `actor_id` INT NOT NULL,
  `assign_date` DATE NULL,
  movie_id INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;

ALTER TABLE kinopoisk.actor_tags ADD CONSTRAINT actor_tag_fk FOREIGN KEY (tag_id) REFERENCES kinopoisk.tags (id);

ALTER TABLE kinopoisk.actor_tags ADD CONSTRAINT actor_fk FOREIGN KEY (actor_id) REFERENCES kinopoisk.actors (id);

ALTER TABLE kinopoisk.actor_tags ADD CONSTRAINT actor_movie_fk FOREIGN KEY (movie_id) REFERENCES kinopoisk.movies (id);
