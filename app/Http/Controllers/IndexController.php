<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class IndexController extends Controller
{
    function index ()
    {
        $slide = DB::table('slide')->get();
        $product = DB::table('product_view')->where('hienthi',1)->offset(0)->limit(8)->get();
        $about = DB::table('about')->where('hienthi',1)->get();
        $mainblog = DB::table('blog')->where('main',1)->first();
        $blog = DB::table('blog')->where('hienthi',1)->offset(0)->limit(3)->get();
        $category = DB::table('category')->get();
        return view('index',
            [
                'slide'=>$slide,
                'product'=>$product,
                'about'=>$about,
                'mainblog'=>$mainblog,
                'blog'=>$blog,
                'category'=>$category
            ]);
    }
}
