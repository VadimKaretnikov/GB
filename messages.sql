CREATE TABLE IF NOT EXISTS `vk`.`messages` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `sender_id` INT NOT NULL,
  `receiver_id` INT NOT NULL,
  `text` MEDIUMTEXT NOT NULL,
  `status` CHAR(1) NOT NULL DEFAULT 'D',
  `send_datetime` DATETIME NOT NULL DEFAULT NOW(),
  `read_datetime` DATETIME NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;

ALTER TABLE vk.messages ADD CONSTRAINT sender_fk FOREIGN KEY (sender_id) REFERENCES vk.users (id);

ALTER TABLE vk.messages ADD CONSTRAINT receiver_fk FOREIGN KEY (receiver_id) REFERENCES vk.users (id);