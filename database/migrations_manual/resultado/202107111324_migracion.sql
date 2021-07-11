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
CREATE TABLE `icons_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `icons_info` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES (1,'Correo','uploads/1/2020-10/icon_1.png','2020-10-08 01:41:41',NULL),(2,'Horario','uploads/1/2020-10/icon_2.png','2020-10-08 01:41:42',NULL),(3,'Ubicación','uploads/1/2020-10/icon_3.png','2020-10-08 01:41:43',NULL),(4,'Teléfonos','uploads/1/2020-10/icon_4.png','2020-10-08 01:41:43',NULL);
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
CREATE TABLE `web_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `subtitle` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_spanish2_ci,
  `img` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `web_info` (`id`, `name`, `title`, `subtitle`, `text`, `img`, `created_at`, `updated_at`) VALUES (1,'Nosotros','Museo','Carmona','El Museo Carmona es un lugar lleno de realismo mágico y arte, que te lleva en un viaje por el tiempo en el que puedes conocer la belleza de la cultura cartagenera.\r\n\r\nAbrimos nuestras puertas en la Ciudad Amurallada de Cartagena de Indias para exponer de forma permanente las obras del maestro y escultor Edgardo Carmona Vergara quien logra expresar la cotidianidad e idiosincrasia caribe a través de sus pinturas y esculturas ensambladas en acero. ⁣\r\n\r\nEl edificio donde estamos establecidos fue construido en tiempo de la conquista y fue el Cuartel de la Artillería, donde se alojaron buena parte de las tropas establecidas en Cartagena para la defensa de la ciudad. Se adecua con fines militares en algún punto del siglo XVII. Esto aún se expresa a través de la estructura aporticada de su fachada y su construcción en general. La edificación fue usada con diversos fines, dándole mayor peso histórico y cultural a las actividades milicianas y a las ocupaciones agrarias.\r\n\r\nEl Cuartel de la Artillería sigue en pie en el Centro Histórico, en el barrio Nuestra Señora de la Merced, frente al Baluarte de Santa Cruz. En la actualidad funciona allí el Museo de Arte Carmona, notables restaurantes como La Girolata y Palo Santo, y el Club Fragma, lugar de esparcimiento y diversión.','uploads/1/2020-10/about_image.jpg','2020-10-08 02:07:07',NULL),(2,'Biografía','Edgardo','Carmona Vergara','Escultor, pintor y dibujante, nació en la ciudad de Cartagena de Indias, Colombia.\r\n\r\nCon sus aceros ha explorado desde adentro y desde afuera los universos humanos, no solo con el rigor técnico de quien doméstica metales para convertirlos en arte, sino también con el rigor estético con el que ha sabido retratar cuerpos y retratar espíritus. El resultado: criaturas capaces de sugerir diálogos en la mirada de todos los espectadores, aprendices y consagrados, advenedizos o no, que en cualquier estación de la vida, se detienen a conversar con estos personajes conmovedores, cuya presencia llega a convertirse en fascinación poética.\r\n\r\nSus primeras pinturas en vinilo y óleo, datan de la década del 60, así como sus primeras esculturas de acero, cobre y sus derivados, a partir de los años 70. Su primera Exposición de esculturas fue en el año 1.999, en el Museo de Arte Moderno de Cartagena, de allí pasó al Museo de Arte Contemporáneo de Panamá, y al Claustro-museo Oberhessiches en Giessen - Alemania. A partir de allí, su obra ha hecho un recorrido muy amplio por diferentes museos y ciudades de Alemania, Italia, Eslovenia, Francia, Estados Unidos, Panamá y Colombia.\r\n\r\nCursó dibujo, pintura y modelado en la Academia Alberdi, realizó estudios en Administración de Empresas e Ingeniería Mecánica, está cursando una maestría en Interiorismo y Diseño de Muebles, recibió un Doctorado Honoris Causa en Gestión Cultural y trabajó por muchos años en el área metalmecánica como diseñador de herramientas y equipos, y como constructor de edificios y plantas industriales en estructuras de acero, lo que le ha dejado un vasto conocimiento del metal, que conjuntado a una profunda sensibilidad artística, y a su manejo del dibujo, técnicas como el acrílico, óleo, cerámica y otros, le han permitido realizar un trabajo de incuestionable valor artístico, con un estilo original y único.\r\n\r\nEntre los años 1.980 y 1.983, escribió y publicó artículos quincenales sobre temas sociales y económicos para el periódico “El Espectador”, de circulación nacional en su país. Anteriormente había ilustrado con sus dibujos algunos libros, uno sobre dialéctica de la Universidad Nacional de Colombia, y otros de Matemáticas escritos por su padre.','uploads/1/2020-10/biography_image.jpg','2020-10-08 02:07:05',NULL),(3,'Procesos','Elaboración','Esculturas','<span>1. Técnica escultórica</span>\r\n\r\nLa técnica de la escultura de Carmona, se denomina “Ensamblaje en Acero”, ya que consiste en la elaboración de múltiples partes o elementos en acero estructural, tales como varillas, tubos y láminas compradas en ferreterías.\r\n\r\nA manera de ejemplo, el brazo de un personaje consta de una mano de cinco dedos construidos en varilla, o pedazos de varilla, donde el meñique tiene un diámetro y longitud menores, y el pulgar tiene un diámetro mayor que los demás. Adicionalmente la palma de la mano es una platina recortada y conformada, y el brazo y antebrazo son pedazos de tubo cortados, soldados y armados de acuerdo a la actitud que se pretende dar al personaje.\r\n\r\n<span>2. Proceso creativo</span>\r\n\r\nNace con una idea que involucra un personaje y sus vivencias claramente identificados por el escultor en su parte emotiva y espiritual, a través de la interacción con ese personaje por un periodo de tiempo, lo que le permite asimilar su espíritu, sus expresiones y sus actitudes vitales.\r\n\r\nA partir de esa idea clara desde el punto de vista emocional y estético, el escultor produce entre seis y diez dibujos sobre la situación planteada con los personajes, y pasa a la etapa de taller donde se inicia la elaboración de los elementos o partes pre-estimadas o pre-diseñadas en el papel, de las cuales una buena parte son ajustadas y ensambladas pretenciosamente hasta lograr la forma y el lenguaje, como parámetros fundamentales dentro del espíritu perfeccionista del escultor.\r\n\r\nUna vez concluida esta etapa y ya pre-ensamblada la escultura completa, el escultor se sumerge en una etapa de contemplación de su obra, en horas generalmente nocturnas y en solitario, en donde consigue establecer un diálogo estimulado por la correlación entre las zonas emitidas y receptivas frente a su creación, logrando depurar la intencionalidad y el carácter de sus imágenes.',NULL,'2020-10-08 02:07:06','2020-10-09 03:56:32'),(4,NULL,'Servicios','Museo Carmona',NULL,'uploads/1/2020-10/service_image.jpg','2020-10-08 02:02:26',NULL);
CREATE TABLE `image_sculptures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `image_sculptures` (`id`, `img`, `status`, `created_at`, `updated_at`) VALUES (1,'uploads/1/2020-10/sculpture_1.jpg','activo','2020-10-08 01:43:35',NULL),(2,'uploads/1/2020-10/sculpture_2.jpg','activo','2020-10-08 01:43:36',NULL);
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
CREATE TABLE `category_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `category_projects` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES (1,'Pinturas','activo','2020-10-08 01:32:30',NULL),(2,'Cuadros de acero','activo','2020-10-08 01:32:31',NULL),(3,'Esculturas','activo','2020-10-08 01:32:31',NULL),(4,'Jarrones','activo','2020-10-08 01:32:32',NULL),(5,'Vitrales','activo','2020-10-08 01:32:33',NULL);
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_projects_id` int(11) DEFAULT NULL,
  `img` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `modal` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `subtitle` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `year` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `medida` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `projects` (`id`, `category_projects_id`, `img`, `modal`, `title`, `subtitle`, `year`, `medida`, `position`, `status`, `created_at`, `updated_at`) 
VALUES (2,1,'uploads/2/2020-10/candida.png','uploads/2/2020-10/candida.png',NULL,'Candida','2019','80 x 60 cm',2,'activo','2020-10-20 05:18:40','2020-10-30 04:22:57'),
(3,1,'uploads/2/2020-10/cartagena_6_30_pm.png','uploads/2/2020-10/cartagena_6_30_pm.png','Cartagena','6:30 p.m','2019','70 x 89 cm',1,'activo','2020-10-20 05:19:16','2020-10-30 04:22:27'),
(4,1,'uploads/2/2020-10/familia.png','uploads/2/2020-10/familia.png',NULL,'Familia','2019','69 x 97 cm',1,'activo','2020-10-20 05:19:39','2020-10-30 04:22:04'),
(5,1,'uploads/2/2020-10/ferias_y_fiestas_1.png','uploads/2/2020-10/ferias_y_fiestas_1.png','Ferias &','Fiestas 1','2019','115 x 90 cm',2,'activo','2020-10-20 05:20:09','2020-10-30 04:21:46'),
(6,1,'uploads/2/2020-10/ferias_y_fiestas_2.png','uploads/2/2020-10/ferias_y_fiestas_2.png','Ferias &','Fiestas 2','2019','120 x 80 cm',2,'activo','2020-10-20 05:20:54','2020-10-30 04:21:26'),
(7,1,'uploads/2/2020-10/gaiteros.png','uploads/2/2020-10/gaiteros.png',NULL,'Gaiteros','2019','75 x 124 cm',1,'activo','2020-10-20 05:21:13','2020-10-30 04:21:02'),
(8,1,'uploads/2/2020-10/huellas.png','uploads/2/2020-10/huellas.png',NULL,'Huellas','2019','80 x 60 cm',2,'activo','2020-10-20 05:21:33','2020-10-30 04:20:41'),
(9,1,'uploads/2/2020-10/la_chismosa.png','uploads/2/2020-10/la_chismosa.png','La','Chismosa','2019','89 x 115 cm',1,'activo','2020-10-20 05:22:30','2020-10-30 04:20:21'),
(10,1,'uploads/2/2020-10/la_ultima_cena_cgena.png','uploads/2/2020-10/la_ultima_cena_cgena.png','Última cena','En Cartagena','2019','130 x 160 cm',1,'activo','2020-10-20 05:23:26','2020-10-30 04:19:31'),
(11,1,'uploads/2/2020-10/negocios_bicentenarios.png','uploads/2/2020-10/negocios_bicentenarios.png','Negocios','Bicentenarios','2019','69 x 92 cm',1,'activo','2020-10-20 05:23:54','2020-10-30 04:19:11'),
(12,1,'uploads/2/2020-10/orquesta.png','uploads/2/2020-10/orquesta.png',NULL,'Orquesta','2019','120 x 80 cm',2,'activo','2020-10-20 05:24:17','2020-10-30 04:17:33'),
(13,1,'uploads/2/2020-10/propuesta.png','uploads/2/2020-10/propuesta.png',NULL,'Propuesta','2019','80 x 60 cm',2,'activo','2020-10-20 05:24:42','2020-10-30 04:16:38'),
(14,1,'uploads/2/2020-10/tertulia.png','uploads/2/2020-10/tertulia.png',NULL,'Tertulia','2019','80 x 60 cm',2,'activo','2020-10-20 05:25:06','2020-10-30 04:15:50'),
(15,1,'uploads/2/2020-10/arlequin_89_cms_alto_x_115_cms_ancho.png','uploads/2/2020-10/arlequin_89_cms_alto_x_115_cms_ancho.png',NULL,'Arlequin','2020','89 x 115 cm',1,'activo','2020-10-20 06:28:03','2020-10-30 04:23:46'),
(16,1,'uploads/2/2020-10/citas_115_cms_alto_x_89_cms_ancho.png','uploads/2/2020-10/citas_115_cms_alto_x_89_cms_ancho.png',NULL,'Citas','2020','115 x 89 cm',2,'activo','2020-10-20 06:28:36','2020-10-30 04:15:05'),
(17,1,'uploads/2/2020-10/cumpleanos_89_cms_alto_x_115_ancho.png','uploads/2/2020-10/cumpleanos_89_cms_alto_x_115_ancho.png',NULL,'Cumpleaños','2020','89 x 115 cm',1,'activo','2020-10-20 06:29:08','2020-10-30 04:14:45'),
(18,1,'uploads/2/2020-10/folklor_115_cms_alto_x_89_cms_ancho.png','uploads/2/2020-10/folklor_115_cms_alto_x_89_cms_ancho.png','Cantos','Nacionales','2020','115 x 89 cm',2,'activo','2020-10-20 06:30:25','2020-10-30 04:14:19'),
(19,1,'uploads/2/2020-10/guitarras_90_cms_alto_x_70_cms_ancho.png','uploads/2/2020-10/guitarras_90_cms_alto_x_70_cms_ancho.png',NULL,'Guitarras','2020','90 x 70 cm',2,'activo','2020-10-20 06:30:52','2020-10-30 04:13:33'),
(20,2,'uploads/2/2020-10/lienz002_juglar.jpg','uploads/2/2020-10/lienz002_juglar.jpg',NULL,'Juglar','2018','88 x 80 cm',2,'activo','2020-10-20 06:34:05','2020-10-30 17:21:11'),
(21,2,'uploads/2/2020-10/lienz003_palenquera_1.jpg','uploads/2/2020-10/lienz003_palenquera_1.jpg',NULL,'Palenquera','2018','72 x 92 cm',1,'activo','2020-10-20 06:34:23','2020-10-30 17:20:54'),
(22,2,'uploads/2/2020-10/lienz007_instrumentario.jpg','uploads/2/2020-10/lienz007_instrumentario.jpg',NULL,'Instrumentario','2018','74 x 1140 cm',1,'activo','2020-10-20 06:34:43','2020-10-30 17:20:35'),
(23,2,'uploads/2/2020-10/lienz011_familia.jpg','uploads/2/2020-10/lienz011_familia.jpg',NULL,'Familia','2018','82 x 100 cm',1,'activo','2020-10-20 06:35:01','2020-10-30 17:20:06'),
(24,2,'uploads/2/2020-10/lienz012_vallenato.jpg','uploads/2/2020-10/lienz012_vallenato.jpg',NULL,'Vallenato','2018','92 x 143 cm',1,'activo','2020-10-20 06:35:20','2020-10-30 17:19:39'),
(25,2,'uploads/2/2020-10/lienz013_danzarina.jpg','uploads/2/2020-10/lienz013_danzarina.jpg',NULL,'Danzarina','2018','140 x 87 cm',2,'activo','2020-10-20 06:35:36','2020-10-30 17:19:21'),
(26,2,'uploads/2/2020-10/lienz014_contrabajo.jpg','uploads/2/2020-10/lienz014_contrabajo.jpg',NULL,'Contrabajo','2018','100 x 83 cm',2,'activo','2020-10-20 06:35:54','2020-10-30 17:19:01'),
(27,2,'uploads/2/2020-10/lienz015_provision.jpg','uploads/2/2020-10/lienz015_provision.jpg',NULL,'Provisión','2018','82 x 110 cm',1,'activo','2020-10-20 06:36:12','2020-10-30 17:18:41'),
(28,2,'uploads/2/2020-10/lienz016_bolero.jpg','uploads/2/2020-10/lienz016_bolero.jpg',NULL,'Bolero','2018','114 x 110 cm',2,'activo','2020-10-20 06:36:28','2020-10-30 17:17:49'),
(29,4,'uploads/2/2020-10/jar001_afrodita.jpg','uploads/2/2020-10/jar001_afrodita.jpg',NULL,'Afrodita','2018','39 x 26 cm',1,'activo','2020-10-20 06:37:30','2020-10-30 17:22:31'),
(30,4,'uploads/2/2020-10/jar002_rosania.jpg','uploads/2/2020-10/jar002_rosania.jpg',NULL,'Rosania','2018','43 x 13 cm',2,'activo','2020-10-20 06:37:45','2020-10-30 17:22:54'),
(31,4,'uploads/2/2020-10/jar003_feminia.jpg','uploads/2/2020-10/jar003_feminia.jpg',NULL,'Feminia','2018','31 x 18 cm',1,'activo','2020-10-20 06:38:01','2020-10-30 17:23:11'),
(32,4,'uploads/2/2020-10/jar004_panteon.jpg','uploads/2/2020-10/jar004_panteon.jpg',NULL,'Panteón','2018','29 x 37 cm',1,'activo','2020-10-20 06:38:26','2020-10-30 17:23:25'),
(34,5,'uploads/2/2020-10/vitro002_mujer_caribe.jpg','uploads/2/2020-10/vitro002_mujer_caribe.jpg','Mujer','Caribe',NULL,'',2,'activo','2020-10-20 06:39:35','2020-10-30 02:30:16'),
(35,5,'uploads/2/2020-10/vitro004_raspao.jpg','uploads/2/2020-10/vitro004_raspao.jpg',NULL,'Raspao',NULL,'',1,'activo','2020-10-20 06:39:52',NULL),
(36,5,'uploads/2/2020-10/vitro005_palenquera.jpg','uploads/2/2020-10/vitro005_palenquera.jpg',NULL,'Palenquera',NULL,'',2,'activo','2020-10-20 06:40:11','2020-10-30 02:30:06'),
(37,5,'uploads/2/2020-10/vitro008_cantora.jpg','uploads/2/2020-10/vitro008_cantora.jpg',NULL,'Cantora',NULL,'',1,'activo','2020-10-20 06:40:29',NULL),
(38,5,'uploads/2/2020-10/vitro009_abstracto_1.jpg','uploads/2/2020-10/vitro009_abstracto_1.jpg',NULL,'Abstracto',NULL,'',1,'activo','2020-10-20 06:40:47',NULL),
(39,3,'uploads/2/2020-10/barbero_web.png','uploads/2/2020-10/barbero_web.png','Babero','Barbero','1999','',2,'activo','2020-10-20 06:45:43','2020-10-30 17:31:26'),
(40,3,'uploads/2/2020-10/embolador_web.png','uploads/2/2020-10/embolador_web.png','Embolador','Embolador','1999','',1,'activo','2020-10-20 06:46:13','2020-10-30 04:39:38'),
(41,3,'uploads/2/2020-10/juego_de_ajedrez_web.png','uploads/2/2020-10/juego_de_ajedrez_web.png','Juego','de Ajedrez','1999','',1,'activo','2020-10-20 06:46:44','2020-10-30 04:39:26'),
(42,3,'uploads/2/2020-10/melomano_web.png','uploads/2/2020-10/melomano_web.png','Melomano','Melomano','1999','',2,'activo','2020-10-20 06:47:33','2020-10-30 04:39:00'),
(43,3,'uploads/2/2020-10/orquesta_web.png','uploads/2/2020-10/orquesta_web.png','Orchestra','Orchestra','2001','',1,'activo','2020-10-20 06:48:22','2020-10-30 04:38:39'),
(44,3,'uploads/2/2020-10/estelario_web.png','uploads/2/2020-10/estelario_web.png',NULL,'Estalonario','2000','',2,'activo','2020-10-20 06:49:28','2020-10-30 04:37:42'),
(45,3,'uploads/2/2020-10/relato_web.png','uploads/2/2020-10/relato_web.png',NULL,'Relatos','2000','',2,'activo','2020-10-20 06:50:14','2020-10-30 04:37:28'),
(46,3,'uploads/2/2020-10/ideas_web.png','uploads/2/2020-10/ideas_web.png',NULL,'Ideas','2002','',2,'activo','2020-10-20 06:50:43','2020-10-30 04:37:11'),
(47,3,'uploads/2/2020-10/al_juicio_web.png','uploads/2/2020-10/al_juicio_web.png','Al','Juicio','2003','',2,'activo','2020-10-20 06:51:15','2020-10-30 04:36:57'),
(48,3,'uploads/2/2020-10/duo_sinfonico_web.png','uploads/2/2020-10/duo_sinfonico_web.png','Duo','Sinfónico','2003','',2,'activo','2020-10-20 06:53:12','2020-10-30 04:36:38'),
(49,3,'uploads/2/2020-10/escape_web.png','uploads/2/2020-10/escape_web.png',NULL,'Escape','2003','',1,'activo','2020-10-20 06:53:38','2020-10-30 04:36:26'),
(50,3,'uploads/2/2020-10/territorios_web.png','uploads/2/2020-10/territorios_web.png',NULL,'Territorios','2003','',2,'activo','2020-10-20 06:54:38','2020-10-30 04:36:15'),
(51,3,'uploads/2/2020-10/agusfono_web.png','uploads/2/2020-10/agusfono_web.png',NULL,'Agusfono',NULL,'',1,'activo','2020-10-20 06:56:20','2020-10-30 04:36:04'),
(52,3,'uploads/2/2020-10/el_pirata_web.png','uploads/2/2020-10/el_pirata_web.png','El','Pirata','1999','',2,'activo','2020-10-20 06:57:06','2020-10-30 04:35:58'),
(53,3,'uploads/2/2020-10/estratus_web.png','uploads/2/2020-10/estratus_web.png',NULL,'Estratus','2001','',2,'activo','2020-10-20 06:57:42','2020-10-30 04:35:39'),
(54,3,'uploads/2/2020-10/guitarra_al_viento_web.png','uploads/2/2020-10/guitarra_al_viento_web.png','Guitarra','Al Viento',NULL,'',2,'activo','2020-10-20 06:58:28','2020-10-30 04:34:55'),
(55,3,'uploads/2/2020-10/imagenes_web.png','uploads/2/2020-10/imagenes_web.png',NULL,'Imágenes','1999','',2,'activo','2020-10-20 06:58:59','2020-10-30 04:34:44'),
(56,3,'uploads/2/2020-10/provision_web.png','uploads/2/2020-10/provision_web.png',NULL,'Provision','2001','',2,'activo','2020-10-20 06:59:38','2020-10-30 04:34:29'),
(57,3,'uploads/2/2020-10/racket_web.png','uploads/2/2020-10/racket_web.png',NULL,'Racket',NULL,'',2,'activo','2020-10-20 06:59:59','2020-10-30 04:34:09'),
(58,3,'uploads/2/2020-10/senderos_web.png','uploads/2/2020-10/senderos_web.png',NULL,'Senderos',NULL,'',1,'activo','2020-10-20 07:00:18','2020-10-30 04:34:01'),
(59,3,'uploads/2/2020-10/sintonia_web.png','uploads/2/2020-10/sintonia_web.png',NULL,'Sintonía','2000','',1,'activo','2020-10-20 07:01:26','2020-10-30 04:33:54'),
(60,3,'uploads/2/2020-10/vendedor_raspao_web.png','uploads/2/2020-10/vendedor_raspao_web.png','Vendedor','De Raspao','1999','',1,'activo','2020-10-20 07:02:30','2020-10-30 04:33:35'),
(61,3,'uploads/2/2020-10/vendedora_fruta_web.png','uploads/2/2020-10/vendedora_fruta_web.png','Vendedora','De Frutas','2003','',2,'activo','2020-10-20 07:02:58','2020-10-30 04:33:14'),
(62,3,'uploads/2/2020-10/gimnasia.png','uploads/2/2020-10/gimnasia.png',NULL,'Gimnasia',NULL,'',2,'activo','2020-10-20 07:03:24','2020-10-30 04:32:54'),
(63,3,'uploads/2/2020-10/al_filo.jpg','uploads/2/2020-10/al_filo.jpg','Al','Filo',NULL,'',1,'activo','2020-10-20 07:04:04','2020-10-30 04:32:47'),
(64,3,'uploads/2/2020-10/al_galope.png','uploads/2/2020-10/al_galope.png','Al','Galope',NULL,'',1,'activo','2020-10-20 07:04:35','2020-10-30 04:32:37'),
(65,3,'uploads/2/2020-10/brisas.png','uploads/2/2020-10/brisas.png',NULL,'Brisas',NULL,'',1,'activo','2020-10-20 07:04:58','2020-10-30 04:32:21'),
(66,3,'uploads/2/2020-10/cita_de_11_pm.png','uploads/2/2020-10/cita_de_11_pm.png','Cita','11:00 p.m',NULL,'',1,'activo','2020-10-20 07:06:06',NULL),
(67,3,'uploads/2/2020-10/don_quijote.png','uploads/2/2020-10/don_quijote.png','Don','Quijote',NULL,'',2,'activo','2020-10-20 07:06:47','2020-10-30 04:32:14'),
(68,3,'uploads/2/2020-10/duo_sinfonico.png','uploads/2/2020-10/duo_sinfonico.png','Duo','Sinfónico',NULL,'',2,'activo','2020-10-20 07:07:33','2020-10-30 04:32:00'),
(69,3,'uploads/2/2020-10/faena_en_la_plaza.png','uploads/2/2020-10/faena_en_la_plaza.png','Faena','en la Plaza',NULL,'',2,'activo','2020-10-20 07:08:44','2020-10-30 04:31:52'),
(70,3,'uploads/2/2020-10/mambeo.png','uploads/2/2020-10/mambeo.png',NULL,'Mambeo',NULL,'',2,'activo','2020-10-20 07:09:09','2020-10-30 04:31:45'),
(71,3,'uploads/2/2020-10/territorios.png','uploads/2/2020-10/territorios.png',NULL,'Territorios',NULL,'',2,'activo','2020-10-20 07:09:45','2020-10-30 04:31:27'),
(72,3,'uploads/2/2020-10/trialogo.png','uploads/2/2020-10/trialogo.png',NULL,'Trialogo',NULL,'',2,'activo','2020-10-20 07:10:29','2020-10-30 04:31:18'),
(73,3,'uploads/2/2020-10/utopias.png','uploads/2/2020-10/utopias.png',NULL,'Utopias',NULL,'',2,'activo','2020-10-20 07:10:56','2020-10-30 04:30:58'),
(74,3,'uploads/2/2020-10/vendedora_de_frutas.png','uploads/2/2020-10/vendedora_de_frutas.png','Vendedora','De Frutas','2020','176 x 78 cm',2,'activo','2020-10-20 07:11:23','2020-10-30 04:29:18');
CREATE TABLE `works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_spanish2_ci,
  `place` text COLLATE utf8mb4_spanish2_ci,
  `city` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `works` (`id`, `img`, `details`, `place`, `city`, `country`, `status`, `created_at`, `updated_at`) VALUES (1,'uploads/1/2020-10/work_1.jpg','* Dieciocho (18) Obras Monumentales Figurativas y Cuatro (4) Obras Monumentales Abstractas instaladas en el Centro de la Ciudad','Centro de la ciudad','Estados unidos','Fort Meyers (Florida)','activo','2020-10-08 02:09:52',NULL),(5,'uploads/2/2020-10/plaza_san_pedro_claver_4.jpg','* Plaza de San Pedro – Centro Histórico – Año 1.999 – Once (11) Esculturas (declaradas patrimonio cultural, por el Ministerio de Cultura de Colombia)\r\n* Nuevo Edificio de la Gobernación de Bolívar - Escultura Monumental Abstracta de 7.6 mts de alto, denominada “GOBERNANZA”\r\n* Universidad Tecnológica de Bolívar - Escultura Monumental Abstracta, denominada “PALMERA REAL”\r\n* San Lázaro Distrito Arte - Escultura Monumental Abstracta, denominada “SOMBRERO VUELTIAO\r\n* Clínica Ebenezer - Escultura Monumental Abstracta, denominada “OCULUM”\r\n* Astilleros Cotecmar – Escultura Monumental Abstracta de 6.3 mts de alto, denominada “OPORTUNIDADES”','Plaza de San Pedro','Cartagena (Bolivar)','Colombia','activo','2020-10-20 08:14:51',NULL),(6,'uploads/2/2020-10/edgardo_carmona_giessen_don_quijote_023.jpg','* Escultura Monumental Figurativa, “QUIJOTE”','Plaza Central de la Ciudad','Geissen','Alemania','activo','2020-10-20 08:15:45',NULL),(7,'uploads/2/2020-10/burghausen_triologo.jpg','* Escultura Monumental Figurativa, “TRIÁLOGO”','Plaza del Gobierno','Burghousen','Alemania','activo','2020-10-20 08:16:25',NULL),(8,'uploads/2/2020-10/edgardo_carmona_skulpturenausstellung_salzgitter_2008_012.jpg','* Dos (2) Esculturas Monumentales Figurativas, “AL GALOPE y QUIJOTE”','Museo de Arte  \r\nde la Ciudad','Salzgitter','Alemania','activo','2020-10-20 08:17:01',NULL),(9,'uploads/2/2020-10/edgardo_carmona_territorios_008_0.jpg','* Escultura Monumental Figurativa, “TERRITORIOS”','A la entrada \r\nde la ciudad','Hohenstein','Alemania','activo','2020-10-20 08:17:45',NULL);
CREATE TABLE `year_expositions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `year_expositions` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES (1,1999,'activo','2020-10-08 01:34:08',NULL),(2,2000,'activo','2020-10-08 01:34:09',NULL),(3,2001,'activo','2020-10-08 01:34:10',NULL),(4,2002,'activo','2020-10-08 01:34:10',NULL),(5,2003,'activo','2020-10-08 01:34:11',NULL),(6,2004,'activo','2020-10-08 01:34:11',NULL),(7,2005,'activo','2020-10-09 02:18:11',NULL),(8,2007,'activo','2020-10-20 05:33:21',NULL),(9,2008,'activo','2020-10-20 05:35:27',NULL),(10,2010,'activo','2020-10-20 05:35:36',NULL),(11,2011,'activo','2020-10-20 05:35:47',NULL),(12,2014,'activo','2020-10-20 05:35:56',NULL),(13,2016,'activo','2020-10-20 05:36:03',NULL),(14,2018,'activo','2020-10-20 05:36:11',NULL),(15,2013,'activo','2020-10-20 05:36:25',NULL),(16,2015,'activo','2020-10-20 05:36:37',NULL);
CREATE TABLE `expositions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_expositions_id` int(11) DEFAULT NULL,
  `year_expositions_id` int(11) DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `place` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `expositions` (`id`, `category_expositions_id`, `year_expositions_id`, `city`, `country`, `place`, `status`, `created_at`, `updated_at`) VALUES (28,1,1,'Cartagena','Colombia','Museo de arte moderno','activo','2020-10-20 05:44:25',NULL),(29,1,1,'C. Panama','Panama','Museo de arte contemporaneo','activo','2020-10-20 05:45:05',NULL),(30,1,1,'Bogota','Colombia','Calle de la cultura, Corporación del arte','activo','2020-10-20 05:45:36',NULL),(31,1,1,'Medellin','Colombia','Instituto de recreación y cultura','activo','2020-10-20 05:46:14',NULL),(32,1,1,'Cartagena','Colombia','Imagina, Alianza Colombo Francesa','activo','2020-10-20 05:46:40',NULL),(33,1,2,'Cartagena','Colombia','Museo naval','activo','2020-10-20 05:47:08',NULL),(34,1,2,'Houston Texas','USA','Art International','activo','2020-10-20 05:47:41',NULL),(35,1,2,'Bogota','Colombia','Fenalco','activo','2020-10-20 05:48:04',NULL),(36,1,2,'C. Panama','Panama','Galeria Habitante','activo','2020-10-20 05:48:37',NULL),(37,1,3,'Cartagena','Colombia','Museo naval','activo','2020-10-20 05:49:06',NULL),(38,1,4,'Barranquilla','Colombia','Casa la Aduana','activo','2020-10-20 05:49:40',NULL),(39,1,5,'Paris','Francia','Solidays','activo','2020-10-20 05:50:12',NULL),(40,1,5,'Gieben','Alemania','Museo Oberhessisches','activo','2020-10-20 05:50:49',NULL),(41,1,5,'Weltar','Alemania','Centro cultural de Alta Tecnología','activo','2020-10-20 05:51:22',NULL),(42,1,6,'Cartagena','Colombia','Instituto de patrimonio y cultura','activo','2020-10-20 05:52:08',NULL),(43,1,6,'Cartagena','Colombia','Instituto de patrimonio y cultura','activo','2020-10-20 05:54:58',NULL),(44,1,6,'Barranquilla','Colombia','Instituto distrital de cultura','activo','2020-10-20 05:55:27',NULL),(45,1,6,'Santa Marta','Colombia','Instituto distrital de cultura','activo','2020-10-20 05:55:51','2020-10-30 01:44:59'),(46,1,7,'Cartagena','Colombia','Instituto de patrimonio y cultura','activo','2020-10-20 05:56:32',NULL),(47,1,7,'Nuremberg','Alemania','Franken center','activo','2020-10-20 05:57:03',NULL),(48,1,7,'Munich','Alemania','Corte Federal de Patentes','activo','2020-10-20 05:57:36',NULL),(49,1,8,'Ptui','Eslovenia','Sede parlamento europeo','activo','2020-10-20 05:57:59',NULL),(50,1,9,'Stuttgar','Alemania','Universidad del pueblo','activo','2020-10-20 05:58:28',NULL),(51,1,10,'Salzgitter','Alemania','Museo Estatal','activo','2020-10-20 05:59:02',NULL),(52,1,10,'Clamart','Francia','Gobierno de Clamart','activo','2020-10-20 06:00:19',NULL),(53,1,11,'Milan','Italia','Acuario de Milan','activo','2020-10-20 06:00:42',NULL),(54,1,11,'Paris','Francia','Rivera de Rio Sena, Muelles de Paris','activo','2020-10-20 06:01:12',NULL),(55,1,12,'Frontenay les Briis','Francia','Frontenay les Briis','activo','2020-10-20 06:02:04',NULL),(56,1,13,'Florida','USA','Downtown Fort Myres','activo','2020-10-20 06:02:29',NULL),(57,1,14,'Cartagena','Colombia','Centro de formación de la cooperación Española','activo','2020-10-20 06:03:07',NULL),(58,2,15,'Chatilon','Francia','Maison Blanche','activo','2020-10-20 06:03:48',NULL),(59,2,16,'Anapoima','Colombia','Salon de Artes','activo','2020-10-20 06:04:20',NULL);
