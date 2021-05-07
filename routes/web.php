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

Route::get('/','ViewsController@home')->name('home');
Route::post('getGalery', 'ViewsController@GetGalery');
Route::post('getExpositions', 'ViewsController@GetExpositions');
Route::post('newsletter','ViewsController@Newsletter');
