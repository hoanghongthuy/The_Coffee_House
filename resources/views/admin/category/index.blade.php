@extends('layouts.admin.layout1')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Danh mục Sản phẩm</h1>
          <a href="{{url('')}}/admin/category/create"><button type="button" class="btn btn-primary"> Thêm danh mục</button></a>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{url('')}}/admin}}">Trang chủ</a></li>
            <li class="breadcrumb-item active"> Danh mục Sản phẩm</li>
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
              <h3 class="card-title">Danh mục sản phẩm</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>STT</th>
                  <th>Tên sản phẩm</th>
                  <th style="width:5%">Thao tác</th>
                </tr>
                </thead>
                <tbody>
                  @foreach ($data as $key => $val)
                    <tr>
                        <td>{{$key+1}}</td>
                        <td>{{$val->cat_name}}</td>
                        <td>
                          <div  style="display:flex">
                            <a href="{{url('admin/category')}}/{{$val->cat_id}}"><i class="fa fa-edit"></i></a>
                            <form action="{{url('admin/category')}}/{{$val->cat_id}}" method="post">  
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