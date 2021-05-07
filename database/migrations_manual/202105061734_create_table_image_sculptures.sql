CREATE TABLE `image_sculptures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `image_sculptures` (`id`, `img`, `status`, `created_at`, `updated_at`) VALUES (1,'uploads/1/2020-10/sculpture_1.jpg','activo','2020-10-08 01:43:35',NULL),(2,'uploads/1/2020-10/sculpture_2.jpg','activo','2020-10-08 01:43:36',NULL);