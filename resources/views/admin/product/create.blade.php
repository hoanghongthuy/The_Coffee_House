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
        <form action="{{url('admin/product')}}" method='POST' enctype="multipart/form-data">
        @csrf 
        @method('POST')
      <div class="row">
        <!-- left column -->
        <div class="col-md-6">
          <!-- general form elements -->
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Sản phẩm</h3>
            </div>
              <div class="card-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Tên sản phẩm</label>
                  <input type="text" name="tensanpham" class="form-control" placeholder="Tên sản phẩm" value="{{old('tensanpham')}}" >
                  @error('tensanpham')
                    <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Giá sản phẩm</label>
                  <input type="number" min="1" name="gia" class="form-control" placeholder="Giá sản phẩm">
                  @error('gia')
                    <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Giá khuyến mãi</label>
                  <input type="number" min="1" name="giakhuyenmai" class="form-control" placeholder="Giá khuyến mãi">
                  @error('giakhuyenmai')
                    <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
                <div class="form-group">
                  <label>Danh mục cấp 1</label>
                  <select class="form-control select2" name="id_cat" id="team" style="width: 100%;">
                    @foreach ($loai as $val)
                      <option value="{{$val->cat_id}}">{{$val->cat_name}}</option>
                    @endforeach
                  </select>
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
                  <label for="exampleInputPassword1">Mô tả</label>
                  <textarea class="form-control" rows="3" name="mota" placeholder="Mô tả sản phẩm"></textarea>
                  @error('mota')
                    <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
                <div class="form-group">
                  <label for="exampleInputFile">Hình ảnh</label><br>
                  <div class="input-group">
                    <div class="custom-file">
                      <input type="file" class="custom-file-input" name="hinh" id="customFile">
                      <label class="custom-file-label" for="customFile">Choose file</label>
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
        