<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct(){
        $this->title = 'category';
    }
    public function index()
    {
        $data=DB::table('category')->orderByRaw('cat_id DESC')->get();
        return view('admin.category.index',['data'=>$data,'title'=>$this->title]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.category.create',['title'=>$this->title]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function stripUnicode($str){
        if(!$str) return false;
         $unicode = array(
           'a'=>'á|à|ả|ã|ạ|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ',
           'A'=>'Á|À|Ả|Ã|Ạ|Ă|Ắ|Ằ|Ẳ|Ẵ|Ặ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ',
           'd'=>'đ',
           'D'=>'Đ',
           'e'=>'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ',
               'E'=>'É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ',
               'i'=>'í|ì|ỉ|ĩ|ị',
               'I'=>'Í|Ì|Ỉ|Ĩ|Ị',
           'o'=>'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ',
               'O'=>'Ó|Ò|Ỏ|Õ|Ọ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ',
           'u'=>'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự',
               'U'=>'Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự',
           'y'=>'ý|ỳ|ỷ|ỹ|ỵ',
           'Y'=>'Ý|Ỳ|Ỷ|Ỹ|Ỵ'
         );
         foreach($unicode as $khongdau=>$codau) {
               $arr=explode("|",$codau);
               $str = str_replace($arr,$khongdau,$str);
         }
      return $str;
      }
    public function changeTitle($str)
    {
        $str = $this->stripUnicode($str);
        $str = mb_convert_case($str,MB_CASE_LOWER,'utf-8');
        $str = trim($str);
        $str=preg_replace('/[^a-zA-Z0-9\ ]/','',$str);
        $str = str_replace("  "," ",$str);
        $str = str_replace(" ","-",$str);
        return $str;
    }
    public function store(Request $request)
    {
        $request->validate(
            [ 
                'cat_name' => 'required|min:2|max:255|unique:category,cat_name',
                
            ],
            [
                'cat_name.required' => "Phải nhập tên danh mục",
                'cat_name.min' => "Tên danh mục tối thiểu 2 ký tự",
                'cat_name.unique' => "Tên danh mục là duy nhât",
            ]
        );
        $data =[
            'cat_name'=>$request->cat_name,
            'tenkhongdau'=> $this->changeTitle($request->cat_name),
            ];
            DB::table('category')->insert($data);
            return redirect('admin/category/')->with( [ 'alert'=>'Đã thành công','title'=>$this->title]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $r = DB::table('category')->where(['cat_id'=>$id])->first();
        if ($r)
        {
            return View('admin.category.show', ['data'=>$r,'title'=>$this->title]);
        }
        else 
            {
                echo "Nothing!"; exit;
            }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $r = DB::table('category')->where(['cat_id'=>$id])->first();
        if ($r)
        {
            return View('admin.category.edit', ['data'=>$r,'title'=>$this->title]);
        }
        else 
            {
                echo "Nothing!"; exit;
            }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $cat_id)
    {
        $request->validate(
            [ 
                'cat_name' => 'required|min:2|max:255',
                
            ],
            [
                'cat_name.required' => "Phải nhập tên danh mục",
                'cat_name.min' => "Tên danh mục tối thiểu 2 ký tự",
            ]
        );
        $data =[
            'cat_name'=>$request->cat_name,
            'tenkhongdau'=> $this->changeTitle($request->cat_name),
            ];
            DB::table('category')->where('cat_id', $cat_id)->update($data);
            return redirect('admin/category/')->with( [ 'alert'=>'Đã thành công','title'=>$this->title]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($cat_id)
    {
        DB::table('category')->where('cat_id',$cat_id)->delete();
        return redirect('admin/category'); 
    }
}
