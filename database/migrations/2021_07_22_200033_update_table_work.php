<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateTableWork extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        DB::statement("TRUNCATE TABLE `works`;");
        DB::statement("INSERT INTO `works` (`id`, `img`, `details`, `place`, `city`, `country`, `status`, `created_at`, `updated_at`) VALUES
        (1, 'uploads/1/2020-10/work_1.jpg', '* Dieciocho (18) Obras Monumentales Figurativas y Cuatro (4) Obras Monumentales Abstractas instaladas en el Centro de la Ciudad', 'Centro de la ciudad', 'Estados unidos', 'Fort Meyers (Florida)', 'activo', '2020-10-08 07:09:52', NULL),
        (5, 'uploads/2/2020-10/plaza_san_pedro_claver_4.jpg', '* Plaza de San Pedro – Centro Histórico – Año 1.999 – Once (11) Esculturas\n(declaradas patrimonio cultural, por el Ministerio de Cultura de Colombia).', 'Plaza de San Pedro', 'Cartagena (Bolivar)', 'Colombia', 'activo', '2020-10-20 13:14:51', NULL),
        (6, 'uploads/2/2020-10/edgardo_carmona_giessen_don_quijote_023.jpg', '* Escultura Monumental Figurativa, “QUIJOTE”', 'Plaza Central de la Ciudad', 'Geissen', 'Alemania', 'activo', '2020-10-20 13:15:45', NULL),
        (7, 'uploads/2/2020-10/burghausen_triologo.jpg', '* Escultura Monumental Figurativa, “TRIÁLOGO”', 'Plaza del Gobierno', 'Burghousen', 'Alemania', 'activo', '2020-10-20 13:16:25', NULL),
        (8, 'uploads/2/2020-10/edgardo_carmona_skulpturenausstellung_salzgitter_2008_012.jpg', '* Dos (2) Esculturas Monumentales Figurativas, “AL GALOPE y QUIJOTE”', 'Museo de Arte  \r\nde la Ciudad', 'Salzgitter', 'Alemania', 'activo', '2020-10-20 13:17:01', NULL),
        (9, 'uploads/2/2020-10/edgardo_carmona_territorios_008_0.jpg', '* “Escultura Monumental Figurativa “TERRITORIOS”', 'A la entrada de la Ciudad', 'Hohenstein', 'Alemania', 'activo', '2020-10-20 13:17:45', NULL);");
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
