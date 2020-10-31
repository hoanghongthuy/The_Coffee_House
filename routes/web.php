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

Route::group(['prefix'=>'cart'],function(){
    Route::get('/',function(){
        return view('cart');
    })->name('cart');

    Route::get('add/{id}',function($id){
        $data = DB::table('sach')->select('masach','tensach','gia','hinh')->where(['masach'=>$id])->first();
        if ($data){
            $sp = ['id'=>$data->masach,
                    'name'=>$data->tensach,
                    'qty'=>1,
                    'price'=>$data->gia,
                    'options'=>['hinh'=>$data->hinh]
            ];
            Cart::add($sp);
        }
        return redirect('cart');
    })->where('id','[a-z0-9]+');

    Route::get('delete/{id}',function($id){
        Cart::remove($id);
        return redirect('cart');
    });

    Route::get('deleteAll', function(){
        Cart::destroy();
        return redirect('cart');
    });
});

Route::resource('admin/product', 'admin\ProductController');
Route::group(['prefix'=>'admin'],function(){
    Route::get('/', 'admin\IndexAdmin@index');
    Route::resource('product', 'admin\ProductController');
    Route::resource('category', 'admin\CategoryController');
    Route::resource('about', 'admin\AboutController');
    Route::group(['prefix'=>'login'],function(){
        Route::get('/', 'admin\LoginAdmin@login');
        Route::post('/', 'admin\LoginAdmin@loginIndex');
    });
});