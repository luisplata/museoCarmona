CREATE TABLE `category_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `category_projects` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES (1,'Pinturas','activo','2020-10-08 01:32:30',NULL),(2,'Cuadros de acero','activo','2020-10-08 01:32:31',NULL),(3,'Esculturas','activo','2020-10-08 01:32:31',NULL),(4,'Jarrones','activo','2020-10-08 01:32:32',NULL),(5,'Vitrales','activo','2020-10-08 01:32:33',NULL);