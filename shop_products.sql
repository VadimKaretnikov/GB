DROP TABLE shop.products;

CREATE TABLE IF NOT EXISTS `shop`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  description VARCHAR(1000) NULL,
  `catalog_id` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB;

ALTER TABLE shop.products ADD CONSTRAINT catalog_fk FOREIGN KEY (catalog_id) REFERENCES shop.catalogs (id);