CREATE TABLE IF NOT EXISTS `vk`.`posts` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `author_id` INT NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `updated_at` DATETIME NULL,
  `text` MEDIUMTEXT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;

ALTER TABLE vk.posts ADD CONSTRAINT author_fk FOREIGN KEY (author_id) REFERENCES vk.users (id);
