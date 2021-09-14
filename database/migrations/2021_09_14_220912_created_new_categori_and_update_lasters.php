<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatedNewCategoriAndUpdateLasters extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        DB::statement("INSERT INTO `category_projects` (`id`, `name`, `status`, `created_at`, `updated_at`, `order`) VALUES (300, 'TRIDIMENSIONALES', 'activo', '2020-10-08 06:32:30', '2021-08-22 04:51:58', 2)");
        DB::statement("UPDATE `category_projects` SET `name` = 'BIDIMENSIONALES' where `id` = 2");
        DB::statement("UPDATE `category_projects` SET `name` = 'BIDIMENSIONALES SOBRE LIENZO' where `id` = 8");
        DB::statement("UPDATE `category_projects` SET `name` = 'TRIDIMENSIONALES' where `id` = 300");
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
