<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data=DB::table('product')->get();
        return view('admin.product.index',['data'=>$data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.product.create');
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
                // 'Hinhdaidien' => 'image|required',
                'mota' => 'required|min:10|max:255',
                'gia' => 'required|integer',
                'giakhuyenmai' => 'required|integer',
            ],
            [
                'tensanpham.required' => "Phai nhap ten sach",
                'tensanpham.min' => "ten sach phai toi thieu 2 ky tu",
                'tensanpham.unique' => "Ten sach phai duy nhat",
                'mota' => "Mo ta kg phi hop",
            ]
        );
        $data =[
                'tensanpham'=>$request->tensanpham,
                'mota'=>$request->mota,
                'gia'=>$request->gia,
                'giakhuyenmai'=>$request->giakhuyenmai,
                'id_cat'=>$request->id_cat,
                'tenkhongdau'=> $this->changeTitle($request->tenkhongdau),
                ]; 
         
            if ($request->hasFile('hinh'))
            {
                $tam = $request->file('hinh');//getClientOriginalName
                $tenfile = time().'-'.$tam->getClientOriginalName();
                $data['hinh']= $tenfile;
                $tam->move('images/product/',$tenfile);;
            }
            
            DB::table('product')->insert($data);
            return redirect('admin/product/')->with( [ 'alert'=>'Đã thành công']);
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
        if ($r)
        {
            return View('admin.product.show', ['data'=>$r]);
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
            return View('admin.product.edit', ['data'=>$r,"loai"=>$loai]);
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
             'tensanpham' => "required|min:2|max:255|unique:sach,masach,tensanpham,$id",
            // 'Hinhdaidien' => 'image|required',
             'mota' => 'required|min:120|max:255',
           
        ],
        [
            'tensanpham.required' => "Phai nhap ten sach",
             'tensanpham.min' => "ten sach phai toi thieu 2 ky tu",
             'tensanpham.unique' => "Ten sach phai duy nhat",
             'mota' => "Mo ta kg phi hop",
          
        ]
    );

    
    $data =[
            'tensanpham'=>$request->tensach,
            'gia'=>$request->gia,
            'giakhuyenmai'=>$request->giakhuyenmai,
            'mota'=>$request->mota,
            ]; 
      //  dd($data);
        if ($request->hasFile('hinh'))
        {
            $tam = $request->file('hinh');//getClientOriginalName
            $tenfile = time().'-'.$tam->getClientOriginalName();
            $data['hinh']= $tenfile;
            $tam->move('images/product/',$tenfile);
            File::delete('images/product/'.DB::table('sach')->where('id', $id)->value('hinh'));
        }
        
        DB::table('product')->where('id', $id)->update($data);
        return redirect('admin/product/')->with( [ 'alert'=>'Da sua']);
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
