<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateTableCategories extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        DB::statement("TRUNCATE TABLE `category_projects`;");
        DB::statement("INSERT INTO `category_projects` (`id`, `name`, `status`, `created_at`, `updated_at`, `order`) VALUES
        (1, 'Abstracta', 'activo', '2020-10-08 06:32:30', '2021-08-22 04:51:58', 2),
        (2, 'Abstracto', 'activo', '2020-10-08 06:32:31', '2021-08-22 04:52:58', 3),
        (3, 'Abstracta', 'activo', '2020-10-08 06:32:31', '2021-08-22 04:44:59', 1),
        (4, 'Figurativos', 'activo', '2020-10-08 06:32:32', '2021-08-22 04:54:27', 5),
        (5, 'Abstracta', 'activo', '2020-10-08 06:32:33', '2021-08-22 04:54:43', 4),
        (7, 'Figurativa', 'activo', '2021-08-22 04:52:06', '2021-08-22 04:52:06', 100),
        (8, 'Figurativo', 'activo', '2021-08-22 04:53:06', '2021-08-22 04:53:06', 100),
        (9, 'Figurativa', 'activo', '2021-08-22 04:54:50', '2021-08-22 04:54:50', 100),
        (100, 'Figurativa', 'activo', '2021-08-22 04:44:37', '2021-08-22 04:44:52', 100);");
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
