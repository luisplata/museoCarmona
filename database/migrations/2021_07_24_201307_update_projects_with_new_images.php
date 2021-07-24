<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateProjectsWithNewImages extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        DB::statement("TRUNCATE TABLE `projects`;");
        DB::statement("INSERT INTO `projects` (`id`, `category_projects_id`, `img`, `modal`, `title`, `subtitle`, `year`, `medida`, `position`, `status`, `created_at`, `updated_at`) VALUES
        (2, 1, 'uploads/2/2020-10/candida.png', 'uploads/2/2020-10/candida.png', NULL, 'Candida', '2019', '80 x 60 cm', 2, 'activo', '2020-10-20 10:18:40', '2020-10-30 09:22:57'),
        (3, 1, 'uploads/2/2020-10/cartagena_6_30_pm.png', 'uploads/2/2020-10/cartagena_6_30_pm.png', 'Cartagena', '6:30 p.m', '2019', '70 x 89 cm', 1, 'activo', '2020-10-20 10:19:16', '2020-10-30 09:22:27'),
        (4, 1, 'uploads/2/2020-10/familia.png', 'uploads/2/2020-10/familia.png', NULL, 'Familia', '2019', '69 x 97 cm', 1, 'activo', '2020-10-20 10:19:39', '2020-10-30 09:22:04'),
        (5, 1, 'uploads/2/2020-10/ferias_y_fiestas_1.png', 'uploads/2/2020-10/ferias_y_fiestas_1.png', 'Ferias &', 'Fiestas 1', '2019', '115 x 90 cm', 2, 'activo', '2020-10-20 10:20:09', '2020-10-30 09:21:46'),
        (6, 1, 'uploads/2/2020-10/ferias_y_fiestas_2.png', 'uploads/2/2020-10/ferias_y_fiestas_2.png', 'Ferias &', 'Fiestas 2', '2019', '120 x 80 cm', 2, 'activo', '2020-10-20 10:20:54', '2020-10-30 09:21:26'),
        (7, 1, 'uploads/2/2020-10/gaiteros.png', 'uploads/2/2020-10/gaiteros.png', NULL, 'Gaiteros', '2019', '75 x 124 cm', 1, 'activo', '2020-10-20 10:21:13', '2020-10-30 09:21:02'),
        (8, 1, 'uploads/2/2020-10/huellas.png', 'uploads/2/2020-10/huellas.png', NULL, 'Huellas', '2019', '80 x 60 cm', 2, 'activo', '2020-10-20 10:21:33', '2020-10-30 09:20:41'),
        (9, 1, 'uploads/2/2020-10/la_chismosa.png', 'uploads/2/2020-10/la_chismosa.png', 'La', 'Chismosa', '2019', '89 x 115 cm', 1, 'activo', '2020-10-20 10:22:30', '2020-10-30 09:20:21'),
        (10, 1, 'uploads/2/2020-10/la_ultima_cena_cgena.png', 'uploads/2/2020-10/la_ultima_cena_cgena.png', 'Última cena', 'En Cartagena', '2019', '130 x 160 cm', 1, 'activo', '2020-10-20 10:23:26', '2020-10-30 09:19:31'),
        (11, 1, 'uploads/2/2020-10/negocios_bicentenarios.png', 'uploads/2/2020-10/negocios_bicentenarios.png', 'Negocios', 'Bicentenarios', '2019', '69 x 92 cm', 1, 'activo', '2020-10-20 10:23:54', '2020-10-30 09:19:11'),
        (12, 1, 'uploads/2/2020-10/orquesta.png', 'uploads/2/2020-10/orquesta.png', NULL, 'Orquesta', '2019', '120 x 80 cm', 2, 'activo', '2020-10-20 10:24:17', '2020-10-30 09:17:33'),
        (13, 1, 'uploads/2/2020-10/propuesta.png', 'uploads/2/2020-10/propuesta.png', NULL, 'Propuesta', '2019', '80 x 60 cm', 2, 'activo', '2020-10-20 10:24:42', '2020-10-30 09:16:38'),
        (14, 1, 'uploads/2/2020-10/tertulia.png', 'uploads/2/2020-10/tertulia.png', NULL, 'Tertulia', '2019', '80 x 60 cm', 2, 'activo', '2020-10-20 10:25:06', '2020-10-30 09:15:50'),
        (15, 1, 'uploads/2/2020-10/arlequin_89_cms_alto_x_115_cms_ancho.png', 'uploads/2/2020-10/arlequin_89_cms_alto_x_115_cms_ancho.png', NULL, 'Arlequin', '2020', '89 x 115 cm', 1, 'activo', '2020-10-20 11:28:03', '2020-10-30 09:23:46'),
        (16, 1, 'uploads/2/2020-10/citas_115_cms_alto_x_89_cms_ancho.png', 'uploads/2/2020-10/citas_115_cms_alto_x_89_cms_ancho.png', NULL, 'Citas', '2020', '115 x 89 cm', 2, 'activo', '2020-10-20 11:28:36', '2020-10-30 09:15:05'),
        (17, 1, 'uploads/2/2020-10/cumpleanos_89_cms_alto_x_115_ancho.png', 'uploads/2/2020-10/cumpleanos_89_cms_alto_x_115_ancho.png', NULL, 'Cumpleaños', '2020', '89 x 115 cm', 1, 'activo', '2020-10-20 11:29:08', '2020-10-30 09:14:45'),
        (18, 1, 'uploads/2/2020-10/folklor_115_cms_alto_x_89_cms_ancho.png', 'uploads/2/2020-10/folklor_115_cms_alto_x_89_cms_ancho.png', 'Cantos', 'Nacionales', '2020', '115 x 89 cm', 2, 'activo', '2020-10-20 11:30:25', '2020-10-30 09:14:19'),
        (19, 1, 'uploads/2/2020-10/guitarras_90_cms_alto_x_70_cms_ancho.png', 'uploads/2/2020-10/guitarras_90_cms_alto_x_70_cms_ancho.png', NULL, 'Guitarras', '2020', '90 x 70 cm', 2, 'activo', '2020-10-20 11:30:52', '2020-10-30 09:13:33'),
        (20, 2, 'uploads/2/2020-10/lienz002_juglar.jpg', 'uploads/2/2020-10/lienz002_juglar.jpg', NULL, 'Juglar', '2018', '88 x 80 cm', 2, 'activo', '2020-10-20 11:34:05', '2020-10-30 22:21:11'),
        (21, 2, 'uploads/2/2020-10/lienz003_palenquera_1.jpg', 'uploads/2/2020-10/lienz003_palenquera_1.jpg', NULL, 'Palenquera', '2018', '72 x 92 cm', 1, 'activo', '2020-10-20 11:34:23', '2020-10-30 22:20:54'),
        (22, 2, 'uploads/2/2020-10/lienz007_instrumentario.jpg', 'uploads/2/2020-10/lienz007_instrumentario.jpg', NULL, 'Instrumentario', '2018', '74 x 1140 cm', 1, 'activo', '2020-10-20 11:34:43', '2020-10-30 22:20:35'),
        (23, 2, 'uploads/2/2020-10/lienz011_familia.jpg', 'uploads/2/2020-10/lienz011_familia.jpg', NULL, 'Familia', '2018', '82 x 100 cm', 1, 'activo', '2020-10-20 11:35:01', '2020-10-30 22:20:06'),
        (24, 2, 'uploads/2/2020-10/lienz012_vallenato.jpg', 'uploads/2/2020-10/lienz012_vallenato.jpg', NULL, 'Vallenato', '2018', '92 x 143 cm', 1, 'activo', '2020-10-20 11:35:20', '2020-10-30 22:19:39'),
        (25, 2, 'uploads/2/2020-10/lienz013_danzarina.jpg', 'uploads/2/2020-10/lienz013_danzarina.jpg', NULL, 'Danzarina', '2018', '140 x 87 cm', 2, 'activo', '2020-10-20 11:35:36', '2020-10-30 22:19:21'),
        (26, 2, 'uploads/2/2020-10/lienz014_contrabajo.jpg', 'uploads/2/2020-10/lienz014_contrabajo.jpg', NULL, 'Contrabajo', '2018', '100 x 83 cm', 2, 'activo', '2020-10-20 11:35:54', '2020-10-30 22:19:01'),
        (27, 2, 'uploads/2/2020-10/lienz015_provision.jpg', 'uploads/2/2020-10/lienz015_provision.jpg', NULL, 'Provisión', '2018', '82 x 110 cm', 1, 'activo', '2020-10-20 11:36:12', '2020-10-30 22:18:41'),
        (28, 2, 'uploads/2/2020-10/lienz016_bolero.jpg', 'uploads/2/2020-10/lienz016_bolero.jpg', NULL, 'Bolero', '2018', '114 x 110 cm', 2, 'activo', '2020-10-20 11:36:28', '2020-10-30 22:17:49'),
        (29, 4, 'uploads/2/2020-10/jar001_afrodita.jpg', 'uploads/2/2020-10/jar001_afrodita.jpg', NULL, 'Afrodita', '2018', '39 x 26 cm', 1, 'activo', '2020-10-20 11:37:30', '2020-10-30 22:22:31'),
        (30, 4, 'uploads/2/2020-10/jar002_rosania.jpg', 'uploads/2/2020-10/jar002_rosania.jpg', NULL, 'Rosania', '2018', '43 x 13 cm', 2, 'activo', '2020-10-20 11:37:45', '2020-10-30 22:22:54'),
        (31, 4, 'uploads/2/2020-10/jar003_feminia.jpg', 'uploads/2/2020-10/jar003_feminia.jpg', NULL, 'Feminia', '2018', '31 x 18 cm', 1, 'activo', '2020-10-20 11:38:01', '2020-10-30 22:23:11'),
        (32, 4, 'uploads/2/2020-10/jar004_panteon.jpg', 'uploads/2/2020-10/jar004_panteon.jpg', NULL, 'Panteón', '2018', '29 x 37 cm', 1, 'activo', '2020-10-20 11:38:26', '2020-10-30 22:23:25'),
        (34, 5, 'uploads/2/2020-10/vitro002_mujer_caribe.jpg', 'uploads/2/2020-10/vitro002_mujer_caribe.jpg', 'Mujer', 'Caribe', NULL, '', 2, 'activo', '2020-10-20 11:39:35', '2020-10-30 07:30:16'),
        (35, 5, 'uploads/2/2020-10/vitro004_raspao.jpg', 'uploads/2/2020-10/vitro004_raspao.jpg', NULL, 'Raspao', NULL, '', 1, 'activo', '2020-10-20 11:39:52', NULL),
        (36, 5, 'uploads/2/2020-10/vitro005_palenquera.jpg', 'uploads/2/2020-10/vitro005_palenquera.jpg', NULL, 'Palenquera', NULL, '', 2, 'activo', '2020-10-20 11:40:11', '2020-10-30 07:30:06'),
        (37, 5, 'uploads/2/2020-10/vitro008_cantora.jpg', 'uploads/2/2020-10/vitro008_cantora.jpg', NULL, 'Cantora', NULL, '', 1, 'activo', '2020-10-20 11:40:29', NULL),
        (38, 5, 'uploads/2/2020-10/vitro009_abstracto_1.jpg', 'uploads/2/2020-10/vitro009_abstracto_1.jpg', NULL, 'Abstracto', NULL, '', 1, 'activo', '2020-10-20 11:40:47', NULL),
        (75, 3, 'storage/yeJWJhUMwMExAyLqT91lQvmEJ0Q4scbUEiDZnRBt.jpg', 'storage/yeJWJhUMwMExAyLqT91lQvmEJ0Q4scbUEiDZnRBt.jpg', 'Ascensión Térrica', NULL, '2009', NULL, NULL, 'activo', '2021-07-24 20:07:26', '2021-07-24 20:39:30'),
        (76, 3, 'storage/BOTAuJBgDumQGAdYunjhZUrBuuInA6HhHgnXNQW3.jpg', 'storage/BOTAuJBgDumQGAdYunjhZUrBuuInA6HhHgnXNQW3.jpg', 'GOBERNANZA', NULL, '2016', NULL, NULL, 'activo', '2021-07-24 20:21:16', '2021-07-24 20:34:25'),
        (77, 3, 'storage/8Iqo9ViVUYc1o9us0udd9pJ0q7kGldAHKzoInOzN.jpg', 'storage/8Iqo9ViVUYc1o9us0udd9pJ0q7kGldAHKzoInOzN.jpg', 'Oculum', NULL, '2018', NULL, NULL, 'activo', '2021-07-24 20:36:58', '2021-07-24 20:36:58'),
        (78, 3, 'storage/DPJsCdc8nH4QL314UfSuEcjNaFYy6rfNV9MjBzY9.jpg', 'storage/DPJsCdc8nH4QL314UfSuEcjNaFYy6rfNV9MjBzY9.jpg', 'Palmera Real', NULL, '2016', NULL, NULL, 'activo', '2021-07-24 20:40:42', '2021-07-24 20:40:42'),
        (79, 3, 'storage/cQjhs3LgSp34SDGd3uGoFmM4IEyKWrI97QxkHZsN.jpg', 'storage/cQjhs3LgSp34SDGd3uGoFmM4IEyKWrI97QxkHZsN.jpg', 'Sombrero Vueltiao', NULL, '2017', NULL, NULL, 'activo', '2021-07-24 20:52:47', '2021-07-24 20:52:47'),
        (80, 3, 'storage/NI9kq9HGbHTx4BR45HqKJ0OcmjehgJrU96DjuP0c.png', 'storage/NI9kq9HGbHTx4BR45HqKJ0OcmjehgJrU96DjuP0c.png', 'EXTINCION', NULL, NULL, 'ALTURA 7.0 X 3.0 X 2.8 Mts', NULL, 'activo', '2021-07-24 20:59:49', '2021-07-24 21:00:22'),
        (81, 3, 'storage/93PCnrQVXK5xHNoTqF66iy72sn4RXwNrLUGICFs7.png', 'storage/93PCnrQVXK5xHNoTqF66iy72sn4RXwNrLUGICFs7.png', 'ORCA', NULL, NULL, 'ALTURA 0.6 X 5.1 X 0.8 Mts', NULL, 'activo', '2021-07-24 21:01:16', '2021-07-24 21:01:16'),
        (82, 3, 'storage/pdEbeSpEj86VKHJlTvTDSgThQetCzvXGa3P89n1n.png', 'storage/pdEbeSpEj86VKHJlTvTDSgThQetCzvXGa3P89n1n.png', 'ANGUILA', NULL, NULL, 'ALTURA 1.0 X 5.2 X 1.1 Mts', NULL, 'activo', '2021-07-24 21:01:43', '2021-07-24 21:01:43'),
        (83, 3, 'storage/5YlmKTvPzOZVLhYufjaakkpa0uac2SaTTXRunqx0.png', 'storage/5YlmKTvPzOZVLhYufjaakkpa0uac2SaTTXRunqx0.png', 'APAREO', NULL, NULL, 'ALTURA 1.2 X 4.5 X 1.2 Mts', NULL, 'activo', '2021-07-24 21:02:07', '2021-07-24 21:02:07'),
        (84, 3, 'storage/nJhjPX2rXQicCVaIrCMRzBSc8ThEWc3rMu737D4u.png', 'storage/nJhjPX2rXQicCVaIrCMRzBSc8ThEWc3rMu737D4u.png', 'CARACOL', NULL, NULL, 'ALTURA 1.2 X 1.8 X 0.6 Mts', NULL, 'activo', '2021-07-24 21:02:26', '2021-07-24 21:02:26'),
        (85, 3, 'storage/L04uiI3Q1xrGMOrq9NjUnLnAntJSoRx0Rtr5MId7.png', 'storage/L04uiI3Q1xrGMOrq9NjUnLnAntJSoRx0Rtr5MId7.png', 'NOSTALGIA DE CUERDAS', NULL, NULL, 'ALTURA 1.6 X 3.2 X 1.0 Mts', NULL, 'activo', '2021-07-24 21:02:44', '2021-07-24 21:02:44'),
        (86, 3, 'storage/kc8P50yWQRFRWekS2bcvdoECaKdE2y3gEW3XubID.png', 'storage/kc8P50yWQRFRWekS2bcvdoECaKdE2y3gEW3XubID.png', 'DESHOVE', NULL, NULL, 'ALTURA 1.9 X 1.3 X 1.3 Mts', NULL, 'activo', '2021-07-24 21:03:04', '2021-07-24 21:03:04'),
        (87, 6, 'storage/IsUW5rdyIEZeKGOFDWxUuMLJ1VFIR4ssFNLEHZyd.jpg', 'storage/IsUW5rdyIEZeKGOFDWxUuMLJ1VFIR4ssFNLEHZyd.jpg', '10.0.', NULL, '2002', NULL, NULL, 'activo', '2021-07-24 21:05:06', '2021-07-24 21:05:06'),
        (88, 6, 'storage/dAU1qKhkLyvklsbv5d6xlYwxV3RSkPtHLBtnMkjy.jpg', 'storage/dAU1qKhkLyvklsbv5d6xlYwxV3RSkPtHLBtnMkjy.jpg', 'Al filo', NULL, '2002', NULL, NULL, 'activo', '2021-07-24 21:05:32', '2021-07-24 21:05:32');");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
