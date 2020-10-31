<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\File;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct(){
        $this->title = 'product';
    }
    public function index()
    {
        $data=DB::table('product')->orderByRaw('id DESC')->offset(10)->limit(5)->get();
        return view('admin.product.index',['data'=>$data,'title'=>$this->title]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $loai = DB::table('category')->get();
        return view('admin.product.create',["loai"=>$loai ,'title'=>$this->title]);
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
                'tensanpham' => 'required|min:2|max:255|unique:product,tensanpham',
                'mota' => 'required|min:10|max:255',
                'gia' => 'integer',
                'giakhuyenmai' => 'integer',
            ],
            [
                'tensanpham.required' => "Phải nhập tên sản phẩm",
                'tensanpham.min' => "Tên sản phẩm tối thiểu 2 ký tự",
                'tensanpham.unique' => "Tên sản phẩm là duy nhât",
                'mota' => "Phải nhập mô tả từ tối thiểu 10 ký tự",
                'gia' => "Giá sản phẩm phải là số",
                'giakhuyenmai' =>"Giá sản phẩm phải là số",
            ]
        );
        $data =[
            'tensanpham'=>$request->tensanpham,
            'mota'=>$request->mota,
            'gia'=>$request->gia,
            'giakhuyenmai'=>$request->giakhuyenmai,
            'id_cat'=>$request->id_cat,
            'tenkhongdau'=> $this->changeTitle($request->tensanpham),
            ];
            if ($request->hasFile('hinh'))
            {
                $tam = $request->file('hinh');//getClientOriginalName
                $tenfile = time().'-'.$tam->getClientOriginalName();
                $data['hinh']= $tenfile;
                $tam->move("Coffee/images/product/",$tenfile);
                
            }
            DB::table('product')->insert($data);
            return redirect('admin/product/')->with( [ 'alert'=>'Đã thành công','title'=>$this->title]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $r = DB::table('product')->where(['id'=>$id])->first();
        $loai = DB::table('category')->get();
        if ($r)
        {
            return View('admin.product.show', ['data'=>$r,"loai"=>$loai,'title'=>$this->title]);
        }
        else 
            {
                echo "Nothing!"; exit;
            }
    }

    public function edit($id)
    {
        $r = DB::table('product')->where(['id'=>$id])->first();
        $loai = DB::table('category')->get();
        if ($r)
        {
            return View('admin.product.edit', ['data'=>$r,"loai"=>$loai,'title'=>$this->title]);
        }
        else 
            {
                echo "Nothing!"; exit;
            }
    }

    public function update(Request $request, $id)
    {
        $request->validate(
            [ 
                'tensanpham' => 'required|min:2|max:255',
                'mota' => 'required|min:10|max:255',
                'gia' => 'integer',
                'giakhuyenmai' => 'integer',
            ],
            [
                'tensanpham.required' => "Phải nhập tên sản phẩm",
                'tensanpham.min' => "Tên sản phẩm tối thiểu 2 ký tự",
                'tensanpham.unique' => "Tên sản phẩm là duy nhât",
                'mota' => "Phải nhập mô tả từ tối thiểu 10 ký tự",
                'gia' => "Giá sản phẩm phải là số",
                'giakhuyenmai' =>"Giá sản phẩm phải là số",
            ]
        );
        $data =[
            'tensanpham'=>$request->tensanpham,
            'mota'=>$request->mota,
            'gia'=>$request->gia,
            'giakhuyenmai'=>$request->giakhuyenmai,
            'id_cat'=>$request->id_cat,
            'tenkhongdau'=> $this->changeTitle($request->tensanpham),
            ];
        if ($request->hasFile('hinh'))
        {
            $tam = $request->file('hinh');//getClientOriginalName
            $tenfile = time().'-'.$tam->getClientOriginalName();
            $data['hinh']= $tenfile;
            $tam->move('public/Coffee/images/product',$tenfile);
            File::delete('images/product/'.DB::table('product')->where('id', $id)->value('hinh'));
        }
        DB::table('product')->where('id', $id)->update($data);
        return redirect('admin/product/')->with( [ 'alert'=>'Da sua','title'=>$this->title]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('product')->where('id',$id)->delete();
        return redirect('admin/product'); 
    }
}
