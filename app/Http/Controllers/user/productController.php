<?php

namespace App\Http\Controllers\user;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class productController extends Controller
{
    function show(){
        $data = DB::table('product_view')->paginate(12);
        $category = DB::table('category')->get();
        $count = DB::table('product_view')->count();
        return view('user.product',[
            'data'=>$data, 
            'count'=>$count,
            'category'=>$category
        ]);
    }

    function detail($id){
        $data = DB::table('product')->where(['tenkhongdau'=>$id])->get();
        return view('user.productDetail',['data'=>$data]);
    }
}
