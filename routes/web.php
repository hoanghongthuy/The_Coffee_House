<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/','IndexController@index');

Route::group(['prefix'=>'product'], function(){
    Route::get('/', 'user\productController@show');
    Route::get('detail/{id}', 'user\productController@detail');
});

Route::get('admin', 'admin\IndexAdmin@index');
Route::resource('admin/product', 'admin\ProductController');
