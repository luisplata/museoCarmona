<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatedWorksPermanentsAdditionals extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //INSERT INTO `works` (`id`, `img`, `details`, `place`, `city`, `country`, `status`, `created_at`, `updated_at`) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'activo', NULL, NULL)
        DB::statement("INSERT INTO `works` (`id`, `img`, `details`, `place`, `city`, `country`, `status`, `created_at`, `updated_at`) VALUES (10, 'uploads/works/PALMERA.png', 'Escultura Monumental Abstracta “PALMERA REAL”', 'Universidad Tecnológica de Bolívar', 'Cartagena (Bolívar)', 'Colombia', 'activo', NULL, NULL)");
        DB::statement("INSERT INTO `works` (`id`, `img`, `details`, `place`, `city`, `country`, `status`, `created_at`, `updated_at`) VALUES (11, 'uploads/works/HABLANDO.png', 'Escultura Monumental Abstracta “HABLANDO AL SOL”', 'Escuela Naval de Cadetes Almirante Padilla', 'Cartagena (Bolívar)', 'Colombia', 'activo', NULL, NULL)");
        DB::statement("INSERT INTO `works` (`id`, `img`, `details`, `place`, `city`, `country`, `status`, `created_at`, `updated_at`) VALUES (12, 'uploads/works/GOBERNANZA.png', 'Escultura Monumental Abstracta “GOBERNANZA”', 'Gobernación de Bolívar', 'Cartagena (Bolívar)', 'Colombia', 'activo', NULL, NULL)");
        DB::statement("INSERT INTO `works` (`id`, `img`, `details`, `place`, `city`, `country`, `status`, `created_at`, `updated_at`) VALUES (13, 'uploads/works/OCULUM.png', 'Escultura Monumental Abstracta “OCULUM”', 'Clínica Ebenezer', 'Cartagena (Bolívar)', 'Colombia', 'activo', NULL, NULL)");
        DB::statement("INSERT INTO `works` (`id`, `img`, `details`, `place`, `city`, `country`, `status`, `created_at`, `updated_at`) VALUES (14, 'uploads/works/SOMBRERO.png', 'Escultura Monumental Figurativa “SOMBRERO VUELTIAO”', 'Centro Cultural San Lázaro', 'Cartagena (Bolívar)', 'Colombia', 'activo', NULL, NULL)");
        DB::statement("INSERT INTO `works` (`id`, `img`, `details`, `place`, `city`, `country`, `status`, `created_at`, `updated_at`) VALUES (15, 'uploads/works/DESDE.png', 'Escultura Monumental Figurativa “DESDE UN SUEÑO”', 'Corporación Universitaria Regional del Caribe IAFIC', 'Cartagena (Bolívar)', 'Colombia', 'activo', NULL, NULL)");
        DB::statement("INSERT INTO `works` (`id`, `img`, `details`, `place`, `city`, `country`, `status`, `created_at`, `updated_at`) VALUES (16, 'uploads/works/Mural.png', 'Mural – Técnica: Vinilo sobre concreto y elementos en acero.', 'Casa Yacamán', 'Cartagena (Bolívar)', 'Colombia', 'activo', NULL, NULL)");
        DB::statement("INSERT INTO `works` (`id`, `img`, `details`, `place`, `city`, `country`, `status`, `created_at`, `updated_at`) VALUES (17, 'uploads/works/INDIO.png', 'Escultura Monumental Figurativa “INDIO KOGUI”.', 'Universidad del Magdalena', 'Santa Marta (Magdalena)', 'Colombia', 'activo', NULL, NULL)");
        DB::statement("INSERT INTO `works` (`id`, `img`, `details`, `place`, `city`, `country`, `status`, `created_at`, `updated_at`) VALUES (18, 'uploads/works/PROVISION.png', 'Escultura Monumental Figurativa “PROVISIÓN”.', 'Universidad del Magdalena', 'Santa Marta (Magdalena)', 'Colombia', 'activo', NULL, NULL)");

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
