<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNewIcosForNotesAndPublishers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::statement("INSERT INTO `icons_info` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES ('13', 'BUSES INTER-CIUDADES EN EL SUR DE ALEMANIA', 'img/info/notasyvideos/Bus 1 completo (2).jpg', NULL, NULL)");
        DB::statement("INSERT INTO `icons_info` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES ('14', '', 'img/info/notasyvideos/Bus 2 (2).jpg', NULL, NULL)");
        DB::statement("INSERT INTO `icons_info` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES ('15', 'VISITANTES EN EXPOSICION PUBLICA', 'img/info/notasyvideos/Publico en Expo - DSC_0409 (3).jpg', NULL, NULL)");
        DB::statement("INSERT INTO `icons_info` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES ('16', 'EXPOSICION TIPICA EN LA PLAZA DE LA PAZ', 'img/info/notasyvideos/Exposición Torre del Reloj en Cartagena edit (2).jpg', NULL, NULL)");
        DB::statement("INSERT INTO `icons_info` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES ('17', 'VALLA PUBLICITARIA EN PARIS DE 14 X 3 METROS', 'img/info/notasyvideos/IMG_4017 (2).jpg', NULL, NULL)");
        DB::statement("INSERT INTO `icons_info` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES ('18', '', 'img/info/notasyvideos/Valla publicitaria Expo Paris 12x3mts.jpg', NULL, NULL)");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::statement("DELETE FROM icons_info WHERE icons_info.id = 13;");
        DB::statement("DELETE FROM icons_info WHERE icons_info.id = 14;");
        DB::statement("DELETE FROM icons_info WHERE icons_info.id = 15;");
        DB::statement("DELETE FROM icons_info WHERE icons_info.id = 16;");
        DB::statement("DELETE FROM icons_info WHERE icons_info.id = 17;");
        DB::statement("DELETE FROM icons_info WHERE icons_info.id = 18;");
    }
}
