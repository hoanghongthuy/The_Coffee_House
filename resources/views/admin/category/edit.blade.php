@extends('layouts.admin.layout1')
@section('content')
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
            <h1><a href="{{url('')}}/admin/product">Sản phẩm</a></h1>
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
        <form action="{{url('admin/category')}}/{{$data->cat_id}}" method="post" enctype="multipart/form">
        @csrf 
        @method('PUT')
      <div class="row">
        <!-- left column -->
        <div class="col-md-6">
          <!-- general form elements -->
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">{{$data->cat_name}}</h3>
            </div>
              <div class="card-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Tên sản phẩm</label>
                  <input type="text" name="cat_name" class="form-control" value="{{$data->cat_name}}" id="exampleInputEmail1" placeholder="Tên sản phẩm">
                  @error('cat_name')
                  <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
                <div class="form-group" style="text-align: right; margin-bottom:0px">
                  <button type="submit" class="btn btn-primary">Hoàn thành</button>
                </div>
              </div>
          </div>
        </div>
      </div>
        </form>
    </div>
  </section>
</div>

@endsection
        