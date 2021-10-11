DROP TABLE kinopoisk.movie_actors;

CREATE TABLE IF NOT EXISTS `kinopoisk`.`movie_actors` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `actor_id` INT NOT NULL,
  `movie_id` INT NOT NULL,
  tag_id INT NOT NULL,
  `person_name` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

ALTER TABLE kinopoisk.movie_actors ADD CONSTRAINT ma_actor_fk FOREIGN KEY (actor_id) REFERENCES kinopoisk.actors (id);

ALTER TABLE kinopoisk.movie_actors ADD CONSTRAINT ma_movie_fk FOREIGN KEY (movie_id) REFERENCES kinopoisk.movies (id);

ALTER TABLE kinopoisk.movie_actors ADD CONSTRAINT ma_tag_fk FOREIGN KEY (tag_id) REFERENCES kinopoisk.tags (id);


ALTER TABLE kinopoisk.movie_actors ADD CONSTRAINT ma_uq UNIQUE (actor_id, movie_id, tag_id, person_name);