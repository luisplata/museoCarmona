<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ChangedNamesInCategories extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::statement("UPDATE `category_projects` c SET `order`= 2 WHERE c.id = 1");
        DB::statement("UPDATE `category_projects` c SET `order`= 3, c.name = 'Dibujos en Acero' WHERE c.id = 2");
        DB::statement("UPDATE `category_projects` c SET `order`= 1 WHERE c.id = 3");
        DB::statement("UPDATE `category_projects` c SET `order`= 5 WHERE c.id = 4");
        DB::statement("UPDATE `category_projects` c SET `order`= 4, c.name = 'Vitrocerámica' WHERE c.id = 5");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        
    }
}
