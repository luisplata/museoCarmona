CREATE TABLE `year_expositions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `year_expositions` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES (1,1999,'activo','2020-10-08 01:34:08',NULL),(2,2000,'activo','2020-10-08 01:34:09',NULL),(3,2001,'activo','2020-10-08 01:34:10',NULL),(4,2002,'activo','2020-10-08 01:34:10',NULL),(5,2003,'activo','2020-10-08 01:34:11',NULL),(6,2004,'activo','2020-10-08 01:34:11',NULL),(7,2005,'activo','2020-10-09 02:18:11',NULL),(8,2007,'activo','2020-10-20 05:33:21',NULL),(9,2008,'activo','2020-10-20 05:35:27',NULL),(10,2010,'activo','2020-10-20 05:35:36',NULL),(11,2011,'activo','2020-10-20 05:35:47',NULL),(12,2014,'activo','2020-10-20 05:35:56',NULL),(13,2016,'activo','2020-10-20 05:36:03',NULL),(14,2018,'activo','2020-10-20 05:36:11',NULL),(15,2013,'activo','2020-10-20 05:36:25',NULL),(16,2015,'activo','2020-10-20 05:36:37',NULL);