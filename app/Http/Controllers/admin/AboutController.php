<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
class AboutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct(){
        $this->title = 'about';
    }
    public function index()
    {
        $data=DB::table('about')->get()->first();
        return view('admin.about.index',['data'=>$data,'title'=>$this->title]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate(
            [ 
                'title' => 'required|min:2|max:255',
                'content' => 'required|min:10',
            ],
            [
                'title.required' => "Phải nhập tên sản phẩm",
                'title.min' => "Tên sản phẩm tối thiểu 2 ký tự",
                'title.unique' => "Tên sản phẩm là duy nhât",
                'content' => "Phải nhập mô tả từ tối thiểu 10 ký tự",
            ]
        );
        $data =[
            'title'=>$request->title,
            'content'=>$request->content,
            ];
        if ($request->hasFile('img'))
        {
            $tam = $request->file('img');//getClientOriginalName
            $tenfile = time().'-'.$tam->getClientOriginalName();
            $data['img']= $tenfile;
            $tam->move('public/Coffee/images/about',$tenfile);
            File::delete('images/about/'.DB::table('about')->where('id', $id)->value('img'));
        }
        DB::table('about')->where('id', $id)->update($data);
        return redirect('admin/about/')->with( [ 'alert'=>'Da sua','title'=>$this->title]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
