CREATE TABLE `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `whastapp` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `call` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `facebook` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `mail` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `hours` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `days` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `city` varchar(300) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `phone_2` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `latitud` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `longitud` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `link_buy` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `info` (`id`, `whastapp`, `call`, `facebook`, `instagram`, `mail`, `hours`, `days`, `address`, `city`, `phone`, `phone_2`, `latitud`, `longitud`, `link_buy`, `created_at`, `updated_at`) VALUES (1,'3024136600','3024136600','https://www.facebook.com/carmonamuseo','https://www.instagram.com/museocarmona','info@museocarmona.com','De 10:00 a.m a 10:00 p.m','De martes a domingo','Carrera 2 # 36 - 86','Centro histórico de Cartagena, Playa de la artillería - cuartel de la artillería, carrera 2da','(+57) 302 413 6600','(+57) 315 7312 843','10.425530','-75.552967','https://carmonagallery.com/artist/14','2020-10-03 16:46:51','2020-10-13 21:02:39');

commit;