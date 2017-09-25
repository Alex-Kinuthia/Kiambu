-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'constituency'
--
-- ---

DROP TABLE IF EXISTS `constituency`;

CREATE TABLE `constituency` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'ward'
--
-- ---

DROP TABLE IF EXISTS `ward`;

CREATE TABLE `ward` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'development_source'
--
-- ---

DROP TABLE IF EXISTS `development_source`;

CREATE TABLE `development_source` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'projects'
--
-- ---

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR NULL DEFAULT NULL,
  `year_2017_2018` DECIMAL NULL DEFAULT NULL,
  `year_2018_2019` DECIMAL NULL DEFAULT NULL,
  `year_2019_2020` DECIMAL NULL DEFAULT NULL,
  `year_2020_2021` DECIMAL NULL DEFAULT NULL,
  `year_2021_2022` DECIMAL NULL DEFAULT NULL,
  `constituency_id` INTEGER NULL DEFAULT NULL,
  `ward_id` INTEGER NULL DEFAULT NULL,
  `development_source_id` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE `projects` ADD FOREIGN KEY (constituency_id) REFERENCES `constituency` (`id`);
ALTER TABLE `projects` ADD FOREIGN KEY (ward_id) REFERENCES `ward` (`id`);
ALTER TABLE `projects` ADD FOREIGN KEY (development_source_id) REFERENCES `development_source` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `constituency` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `ward` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `development_source` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `projects` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `constituency` (`id`,`name`) VALUES
-- ('','');
-- INSERT INTO `ward` (`id`,`name`) VALUES
-- ('','');
-- INSERT INTO `development_source` (`id`,`name`) VALUES
-- ('','');
-- INSERT INTO `projects` (`id`,`name`,`year_2017_2018`,`year_2018_2019`,`year_2019_2020`,`year_2020_2021`,`year_2021_2022`,`constituency_id`,`ward_id`,`development_source_id`) VALUES
-- ('','','','','','','','','','');
