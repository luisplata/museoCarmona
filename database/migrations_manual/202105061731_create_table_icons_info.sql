CREATE TABLE `icons_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `icons_info` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES (1,'Correo','uploads/1/2020-10/icon_1.png','2020-10-08 01:41:41',NULL),(2,'Horario','uploads/1/2020-10/icon_2.png','2020-10-08 01:41:42',NULL),(3,'Ubicación','uploads/1/2020-10/icon_3.png','2020-10-08 01:41:43',NULL),(4,'Teléfonos','uploads/1/2020-10/icon_4.png','2020-10-08 01:41:43',NULL);