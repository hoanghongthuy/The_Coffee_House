@extends('layouts.admin.layout1')
@section('content')
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
            <h1><a href="{{url('')}}/admin/about">Giới thiệu</a></h1>
            </div>
            <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active"><a href="{{ url('')}}">Xem chi tiết</a></li>
            </ol>
            </div>
        </div>
        </div><!-- /.container-fluid -->
    </section>
  <section class="content">
    <div class="container-fluid">
        <form action="{{url('admin/about')}}/{{$data->id}}" method="post" enctype="multipart/form">
        @csrf 
        @method('PUT')
      <div class="row">
        <!-- left column -->
        <div class="col-md-6">
          <!-- general form elements -->
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">{{$data->title}}</h3>
            </div>
              <div class="card-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Tiêu đề</label>
                  <input type="text" name="title" class="form-control" value="{{$data->title}}" id="exampleInputEmail1" placeholder="Tên sản phẩm">
                  @error('title')
                  <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Mô tả</label>
                  <textarea class="form-control" rows="3" name="content" placeholder="Mô tả sản phẩm">{{$data->content}}</textarea>
                  @error('content')
                  <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
               
              </div>
          </div>
        </div>
        <div class="col-md-6">
            <!-- general form elements disabled -->
            <div class="card card-warning">
              <div class="card-header">
                <h3 class="card-title">Thông tin chi tiết</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body" style="padding-bottom: 0px">
                
                <div class="form-group">
                  <label for="exampleInputFile">Hình ảnh</label><br>
                  <img src="{{url('Coffee')}}/images/about/{{$data->img}}" style="width:100px;margin-bottom:5px;">
                  <div class="input-group">
                    <div class="custom-file">
                      <input type="file" class="custom-file-input" name='img' id="exampleInputFile">
                      <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                    </div>
                    <div class="input-group-append">
                      <span class="input-group-text" id="">Upload</span>
                    </div>
                  </div>
                </div>
                <div class="form-group" style="text-align: right; margin-bottom:0px">
                  <button type="submit" class="btn btn-primary">Hoàn thành</button>
                </div>
              </div>
              <!-- /.card-body -->
            </div>    
          </div>
          <!--/.col (right) -->
      </div>
        </form>
    </div>
  </section>
</div>
<script>
 // $('#team').val({{old('team')}})
</script>
@endsection
        