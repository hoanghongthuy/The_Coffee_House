<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class IndexAdmin extends Controller
{
    public function index(){
    	return View("admin.admin");
    }
}
