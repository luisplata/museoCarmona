<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateProcess extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        DB::statement("UPDATE image_sculptures w SET w.img = 'uploads/1/2020-10/sculpture_1.png' where w.id = 1;");
        DB::statement("UPDATE image_sculptures w SET w.img = 'uploads/1/2020-10/sculpture_2.png' where w.id = 2;");
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
