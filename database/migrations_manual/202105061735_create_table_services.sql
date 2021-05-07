CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `text` varchar(500) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `services` (`id`, `name`, `text`, `img`, `status`, `created_at`, `updated_at`) VALUES (1,'Restaurante y Bar','Gastronomía Caribe, Mediterránea e Italiana y un Bar con Café, Jugos Naturales, Cocteles y todo tipo de licores, además de comidas.','uploads/1/2020-10/service_1.png','activo','2020-10-08 01:56:35',NULL),(2,'Obras de arte, Carmona','','uploads/1/2020-10/service_2.png','activo','2020-10-08 01:56:36',NULL),(3,'Experiencias lúdicas','Pinturas, Danzas, juegos, cine.','uploads/1/2020-10/service_3.png','activo','2020-10-08 01:56:36',NULL),(4,'Eventos, conferencias y conservatorios','Historia, arte, literatura y música.','uploads/1/2020-10/service_4.png','activo','2020-10-08 01:56:37',NULL),(5,'Productos merchandising','Productos relacionados con las obras del autor.','uploads/1/2020-10/service_5.png','activo','2020-10-08 01:56:37',NULL);