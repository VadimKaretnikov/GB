CREATE TABLE IF NOT EXISTS `vk`.`likes` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `post_id` BIGINT NOT NULL,
  `user_id` INT NOT NULL,
  `like_datetime` DATETIME NOT NULL DEFAULT NOW(),
  `dislike_datetime` DATETIME NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;

ALTER TABLE vk.likes ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES vk.users (id);

ALTER TABLE vk.likes ADD CONSTRAINT post_fk FOREIGN KEY (post_id) REFERENCES vk.posts (id);

