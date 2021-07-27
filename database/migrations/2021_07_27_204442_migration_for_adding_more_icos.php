<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class MigrationForAddingMoreIcos extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        DB::statement("INSERT INTO `icons_info` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES ('5', 'Con caratulas metálicas editado en Miunich - Alemania', 'img/info/Libros/Con caratulas metálicas editado en Miunich - Alemania.jpg', NULL, NULL)");
        DB::statement("INSERT INTO `icons_info` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES ('6', 'Editado en Cartagena - Colombia', 'img/info/Libros/Editado en Cartagena - Colombia.jpg', NULL, NULL)");
        DB::statement("INSERT INTO `icons_info` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES ('7', 'Editado en Clamart - Francia', 'img/info/Libros/Editado en Clamart - Francia.jpg', NULL, NULL)");
        DB::statement("INSERT INTO `icons_info` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES ('8', 'Editado en GieBen - Alemania', 'img/info/Libros/Editado en GieBen - Alemania.jpg', NULL, NULL)");
        DB::statement("INSERT INTO `icons_info` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES ('9', 'Editado en Paris - Francia', 'img/info/Libros/Editado en Paris - Francia.jpg', NULL, NULL)");
        DB::statement("INSERT INTO `icons_info` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES ('10', 'Editado en Salzgitter - Alemania', 'img/info/Libros/Editado en Salzgitter - Alemania.jpg', NULL, NULL)");
        DB::statement("INSERT INTO `icons_info` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES ('11', 'Editado en Santa Marta - Colombia', 'img/info/Libros/Editado en Santa Marta - Colombia.jpg', NULL, NULL)");
        DB::statement("INSERT INTO `icons_info` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES ('12', 'Editado en Wetzlar - Alemania', 'img/info/Libros/Editado en Wetzlar - Alemania.jpg', NULL, NULL)");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
        DB::statement("DELETE FROM icons_info WHERE icons_info.id = 5;");
        DB::statement("DELETE FROM icons_info WHERE icons_info.id = 6;");
        DB::statement("DELETE FROM icons_info WHERE icons_info.id = 7;");
        DB::statement("DELETE FROM icons_info WHERE icons_info.id = 8;");
        DB::statement("DELETE FROM icons_info WHERE icons_info.id = 9;");
        DB::statement("DELETE FROM icons_info WHERE icons_info.id = 10;");
        DB::statement("DELETE FROM icons_info WHERE icons_info.id = 11;");
        DB::statement("DELETE FROM icons_info WHERE icons_info.id = 12;");
    }
}
