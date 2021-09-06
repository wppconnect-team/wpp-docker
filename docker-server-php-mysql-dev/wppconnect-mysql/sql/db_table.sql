USE wpp_db;
CREATE TABLE `wpp_db`.`chat` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `session` VARCHAR(255) NOT NULL,
  `from_number` VARCHAR(45) NULL,
  `to_number` VARCHAR(45) NULL,
  `content` LONGTEXT NULL,
  `type` VARCHAR(45) NOT NULL,
  `file_name` VARCHAR(255) NULL,
  `create_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;