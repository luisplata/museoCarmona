<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateTableExpositions extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        DB::statement("TRUNCATE TABLE `expositions`;");
        DB::statement("INSERT INTO `expositions` (`id`, `category_expositions_id`, `year_expositions_id`, `city`, `country`, `place`, `status`, `created_at`, `updated_at`) VALUES
        (28, 1, 1, 'Cartagena', 'Colombia', 'Museo de Arte Moderno', 'activo', '2020-10-20 10:44:25', '2021-07-22 23:12:59'),
        (29, 1, 1, 'C. Panama', 'Panama', 'Museo de Arte Contemporaneo', 'activo', '2020-10-20 10:45:05', '2021-07-22 23:29:33'),
        (30, 1, 1, 'Bogota', 'Colombia', 'Calle de la Cultura – Corporación del Arte', 'activo', '2020-10-20 10:45:36', '2021-07-22 23:29:33'),
        (31, 1, 1, 'Medellin', 'Colombia', 'INDER - Instituto de Recreación y Cultura', 'activo', '2020-10-20 10:46:14', '2021-07-22 23:29:33'),
        (32, 1, 1, 'Cartagena', 'Colombia', 'IMAGINA – Arte', 'activo', '2020-10-20 10:46:40', '2021-07-22 23:29:33'),
        (33, 1, 2, 'Cartagena', 'Colombia', 'Museo naval', 'activo', '2020-10-20 10:47:08', NULL),
        (34, 1, 2, 'Houston Texas', 'USA', 'Art International', 'activo', '2020-10-20 10:47:41', NULL),
        (35, 1, 2, 'Bogota', 'Colombia', 'Galería – Federación Fenalco', 'activo', '2020-10-20 10:48:04', NULL),
        (36, 1, 2, 'C. Panama', 'Panama', 'Galeria Habitante', 'activo', '2020-10-20 10:48:37', NULL),
        (37, 1, 3, 'Cartagena', 'Colombia', 'Museo naval', 'activo', '2020-10-20 10:49:06', NULL),
        (38, 1, 4, 'Barranquilla', 'Colombia', 'Museo de la Aduana', 'activo', '2020-10-20 10:49:40', NULL),
        (39, 1, 5, 'Paris', 'Francia', 'Solidays', 'activo', '2020-10-20 10:50:12', NULL),
        (40, 1, 5, 'Gieben', 'Alemania', 'Museo Oberhessisches', 'activo', '2020-10-20 10:50:49', NULL),
        (41, 1, 5, 'Weltar', 'Alemania', 'Centro cultural de Alta Tecnología', 'activo', '2020-10-20 10:51:22', NULL),
        (42, 1, 6, 'Cartagena', 'Colombia', 'Plaza de la Paz – IPCC Instituto de Patrimonio y Cultura', 'activo', '2020-10-20 10:52:08', NULL),
        (43, 1, 6, 'Cartagena', 'Colombia', 'Centro Histórico – IPCC Instituto de Patrimonio y Cultura', 'activo', '2020-10-20 10:54:58', NULL),
        (44, 1, 6, 'Barranquilla', 'Colombia', 'Centro Histórico – Instituto Distrital de Cultura', 'activo', '2020-10-20 10:55:27', NULL),
        (45, 1, 6, 'Santa Marta', 'Colombia', 'Malecom – Instituto Distrital de Cultura', 'activo', '2020-10-20 10:55:51', '2020-10-30 06:44:59'),
        (46, 1, 7, 'Cartagena', 'Colombia', 'Centro Cultural Las Palmeras – IPCC Instituto de Patrimonio y Cultura', 'activo', '2020-10-20 10:56:32', NULL),
        (47, 1, 7, 'Nuremberg', 'Alemania', 'Franken center', 'activo', '2020-10-20 10:57:03', NULL),
        (48, 1, 7, 'Munich', 'Alemania', 'Corte Federal de Patentes', 'activo', '2020-10-20 10:57:36', NULL),
        (49, 1, 8, 'Ptui', 'Eslovenia', 'Sede parlamento europeo', 'activo', '2020-10-20 10:57:59', NULL),
        (50, 1, 9, 'Stuttgar', 'Alemania', 'Universidad del pueblo', 'activo', '2020-10-20 10:58:28', NULL),
        (51, 1, 10, 'Salzgitter', 'Alemania', 'Museo Estatal', 'activo', '2020-10-20 10:59:02', NULL),
        (52, 1, 10, 'Clamart', 'Francia', 'Plaza Central – Gobierno de Clamart', 'activo', '2020-10-20 11:00:19', NULL),
        (53, 1, 11, 'Milan', 'Italia', 'Acuario de Milan', 'activo', '2020-10-20 11:00:42', NULL),
        (54, 1, 11, 'Paris', 'Francia', 'Rivera de Rio Sena, Muelles de Paris', 'activo', '2020-10-20 11:01:12', NULL),
        (55, 1, 12, 'Frontenay les Briis', 'Francia', 'Frontenay Les Briis (Gobierno de la Ciudad)', 'activo', '2020-10-20 11:02:04', NULL),
        (56, 1, 13, 'Florida', 'USA', 'Centro Histórico Fort Myers (Gobierno de la Ciudad)', 'activo', '2020-10-20 11:02:29', NULL),
        (57, 1, 14, 'Cartagena', 'Colombia', 'Centro de formación de la cooperación Española', 'activo', '2020-10-20 11:03:07', NULL),
        (58, 2, 15, 'Chatilon', 'Francia', 'Maison Blanche', 'activo', '2020-10-20 11:03:48', NULL),
        (59, 2, 16, 'Anapoima', 'Colombia', 'Salon de Artes', 'activo', '2020-10-20 11:04:20', NULL);");
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
