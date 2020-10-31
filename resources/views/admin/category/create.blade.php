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
            </ol>
            </div>
        </div>
        </div><!-- /.container-fluid -->
    </section>
  <section class="content">
    <div class="container-fluid">
        <form action="{{url('admin/category')}}" method='POST' enctype="multipart/form-data">
        @csrf 
        @method('POST')
      <div class="row">
        <!-- left column -->
        <div class="col-md-6">
          <!-- general form elements -->
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Danh mục sản phẩm</h3>
            </div>
              <div class="card-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Tên danh mục</label>
                  <input type="text" name="cat_name" class="form-control" placeholder="Tên danh mục" value="{{old('cat_name')}}" >
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
<script>
 // $('#team').val({{old('team')}})
</script>
@endsection
        