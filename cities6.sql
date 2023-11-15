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
  `line` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
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

INSERT INTO `transitions`(`start_station`, `end_station`) VALUES
(6, 20),
(23, 13), 
(12, 4); 

INSERT INTO `lines`(`id`, `name`, `color`) VALUES
(1, 'Холодногірсько-Заводська' , 'Червоний'),
(2, 'Салтівська' , 'Синій'),
(3, 'Олексіївська' , 'Зелений');

INSERT INTO `stations`(`id`, `name`, `line`) VALUES
(1, 'Холодна гора' , 'Холодногірсько-Заводська'),
(2, 'Південний вокзал' , 'Холодногірсько-Заводська'),
(3, 'Центральний ринок' , 'Холодногірсько-Заводська'),
(4, 'Майдан Конституції' , 'Холодногірсько-Заводська'),
(5, 'Проспект Гагаріна' , 'Холодногірсько-Заводська'),
(6, 'Спортивна' , 'Холодногірсько-Заводська'),
(7, 'Турбоатом' , 'Холодногірсько-Заводська'),
(8, 'Дворець спорта' , 'Холодногірсько-Заводська'),
(9, 'Армійська' , 'Холодногірсько-Заводська'),
(10, 'Тракторний завод' , 'Холодногірсько-Заводська'),
(11, 'Індустріальна' , 'Холодногірсько-Заводська'),
(12, 'Історичний музей' , 'Салтівська'),
(13, 'Університет' , 'Салтівська'),
(14, 'Пушкінська' , 'Салтівська'),
(15, 'Київська' , 'Салтівська'),
(16, 'Академіка Барабашова' , 'Салтівська'),
(17, 'Академіка Павлова' , 'Салтівська'),
(18, 'Студентська' , 'Салтівська'),
(19, 'Героїв Праці' , 'Салтівська'),
(20, 'Метробудівників' , 'Олексіївська'),
(21, 'Захисників України' , 'Олексіївська'),
(22, 'Архітектора Бекетова' , 'Олексіївська'),
(23, 'Держпром' , 'Олексіївська'),
(24, 'Наукова' , 'Олексіївська'),
(25, 'Ботанічний сад' , 'Олексіївська'),
(26, '23 Серпня' , 'Олексіївська'),
(27, 'Олексіївська' , 'Олексіївська'),
(28, 'Перемога' , 'Олексіївська');
