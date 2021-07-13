<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get("storage/{nombre?}", "ProductoController@MostrarImagen");

Route::get('/','ViewsController@home')->name('home');
Route::post('getGalery', 'ViewsController@GetGalery');
Route::post('getExpositions', 'ViewsController@GetExpositions');
Route::post('newsletter','ViewsController@Newsletter');

//code for login

Route::get("/login", function () {
    return view("login");
});
Route::get("/logout", function () {
    session()->flush();
    return redirect("/login");
});
Route::post("/login", "LoginController@login");

Route::middleware('logeado')->group(function () {
    //para el admin
    Route::prefix('admin')->group(function () {
        
        Route::get("producto/upload", "ProductoController@Upload");
        Route::resource("categoria", "CategoriaController");
        Route::resource("producto", "ProductoController");
    });
    Route::resource("admin", "AdminController");
});