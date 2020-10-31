<?php

namespace App\Http\Controllers\user;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class productController extends Controller
{
    function show(){
        $data = DB::table('product_view')->paginate(8);
        $count = DB::table('product_view')->count();
        return view('user.product',[
            'data'=>$data, 
            'count'=>$count,
        ]);
    }

    function detail($id){
        $data = DB::table('product')->where(['tenkhongdau'=>$id])->first();
        $category = DB::table('product_view')->first();
        $related = DB::table('product_view')->where('id_cat', '=', 'cat_id')->offset(0)->limit(6)->first();
        return view('user.productDetail',[
            'data'=>$data, 
            'category'=>$category,
            'related'=>$related
        ]);
    }
}
