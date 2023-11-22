1. 
SELECT cities.name, regions.name
FROM cities, regions
WHERE population > 350000
AND cities.region = regions.uuid
2. 
SELECT cities.name, regions.name
FROM cities, regions
WHERE cities.region = regions.uuid
AND regions.name = "Nord"
3.
SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';


DROP TABLE IF EXISTS `lines`;
CREATE TABLE `lines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line_id` int(10) UNSIGNED NOT NULL,
  `previous_station` varchar(255) COLLATE utf8_unicode_ci,
  `next_station` varchar(255) COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `transitions`;
CREATE TABLE `transitions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `start_station` int(10) unsigned NOT NULL,
  `end_station` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`start_station`) REFERENCES `stations`(`id`),
  FOREIGN KEY (`end_station`) REFERENCES `stations`(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
