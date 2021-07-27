<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateBanner extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //UPDATE web_info w SET w.img = 'uploads/1/2020-10/about_image.png' where w.id = 1;
        DB::statement("UPDATE web_info w SET w.img = 'uploads/1/2020-10/about_image.png' where w.id = 1;");
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
