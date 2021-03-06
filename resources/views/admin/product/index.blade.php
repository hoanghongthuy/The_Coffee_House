@extends('layouts.admin.layout1')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Sản phẩm</h1>
          <a href="{{url('')}}/admin/product/create"><button type="button" class="btn btn-primary"> Thêm sản phẩm</button></a>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
            <li class="breadcrumb-item active">Sản phẩm</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Danh sách sản phẩm</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>STT</th>
                  <th>Hình</th>
                  <th>Tên sản phẩm</th>
                  <th style="width:10%">Nổi bật</th>
                  <th style="width:10%">Bán chạy</th>
                  <th style="width:10%">Hiển thị</th>
                  <th style="width:5%">Thao tác</th>
                </tr>
                </thead>
                <tbody>
                  @foreach ($data as $key => $val)
                    <tr>
                        <td>{{$key+1}}</td>
                        <td><img src="{{url('Coffee/images/product')}}/{{$val->hinh}}" style="height:50px"></td>
                        <td>{{$val->tensanpham}}</td>
                        <td>
                          <input type="checkbox" name="my-checkbox" onclick="updateStatus({{$val->id}})" checked data-bootstrap-switch data-off-color="danger" data-on-color="primary">
                        </td>
                        <td>
                          <input type="checkbox" name="my-checkbox" data-id="{{$val->id}}" checked data-bootstrap-switch data-off-color="danger" data-on-color="primary">
                        </td>
                        <td>
                          <input type="checkbox" name="my-checkbox" data-id="{{$val->id}}" checked data-bootstrap-switch data-off-color="danger" data-on-color="primary">
                        </td>
                        <td>
                          <div  style="display:flex">
                            <a href="{{url('admin/product')}}/{{$val->id}}"><i class="fa fa-edit"></i></a>
                            <form action="{{url('admin/product')}}/{{$val->id}}" method="post">  
                              @csrf
                              @method('DELETE')
                              <button class="btn-del" type='submit'><i class="fa fa-trash"></i></button>
                            </form>
                          </div>
                        </td>
                    </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
  </section>
  <!-- /.content -->
</div>
@endsection

<style>
  .btn-del{
    color: red;
    background: none;
    border: none;
  }
</style>
<script>
  function updateStatus(id){
   alert(id);
  }
</script>