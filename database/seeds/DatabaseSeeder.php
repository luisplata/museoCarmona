<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        $userRoot = new App\Usuario();
        $userRoot->id = 1;
        $userRoot->nombre = "Root";
        $userRoot->email = "www.luisplata@gmail.com";
        $userRoot->telefono = "3015086264";
        $userRoot->pass = sha1("luisplata");
        $userRoot->save();
    }
}
