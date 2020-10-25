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
      <div class="row">
        <!-- left column -->
        <div class="col-md-6">
          <!-- general form elements -->
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">{{$data->tensanpham}}</h3>
            </div>
              <div class="card-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Tên sản phẩm</label>
                  <input type="text" name="tensanpham" class="form-control" value="{{$data->tensanpham}}" id="exampleInputEmail1" placeholder="Tên sản phẩm">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Mô tả</label>
                  <textarea class="form-control" rows="3" name="mota" placeholder="Mô tả sản phẩm">{{$data->mota}}</textarea>
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
              <div class="card-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Giá sản phẩm</label>
                  <input type="text" name="gia" class="form-control" value="{{$data->gia}}" id="exampleInputEmail1" placeholder="Giá sản phẩm">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Giá khuyến mãi</label>
                  <input type="text" name="giakhuyenmai" class="form-control" value="{{$data->giakhuyenmai}}" id="exampleInputEmail1" placeholder="Giá khuyến mãi">
                </div>
                <div class="form-group">
                  <label for="exampleInputFile">Hình ảnh</label>
                  <div class="input-group">
                    <div class="custom-file">
                      <input type="file" class="custom-file-input" id="exampleInputFile">
                      <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                    </div>
                    <div class="input-group-append">
                      <span class="input-group-text" id="">Upload</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.card-body -->
            </div>    
          </div>
          <!--/.col (right) -->
      </div>
    </div>
  </section>
</div>
@endsection
        