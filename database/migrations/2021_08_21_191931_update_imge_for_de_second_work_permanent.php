<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateImgeForDeSecondWorkPermanent extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //UPDATE `works` SET `img` = 'uploads/2/2020-10/plaza_san_pedro_claver_4_old.jpg', `updated_at` = NULL WHERE `works`.`id` = 5
        DB::statement("UPDATE works SET img = 'uploads/2/2020-10/plaza_san_pedro_claver_4_old.jpg' WHERE works.id = 5");
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
