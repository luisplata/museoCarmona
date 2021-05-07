CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `img_mobile` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `banner` (`id`, `img`, `img_mobile`, `status`, `created_at`, `updated_at`) VALUES (1,'uploads/1/2020-10/image_1.jpg','uploads/1/2020-10/image_1.jpg','activo','2020-10-08 01:24:59','2020-10-08 06:30:22'),(2,'uploads/1/2020-10/image_2.jpg','uploads/1/2020-10/image_2.jpg','activo','2020-10-08 01:32:01',NULL),(3,'uploads/1/2020-10/image_3.jpg','uploads/1/2020-10/image_3.jpg','activo','2020-10-08 01:32:03',NULL);