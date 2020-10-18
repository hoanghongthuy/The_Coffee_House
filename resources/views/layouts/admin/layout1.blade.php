<!DOCTYPE html>
<html>
@include('admin.subpage.head')
<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">
        @include('admin.subpage.navbar')
        @include('admin.subpage.mainsidebar')
        @yield('content')
        @include('admin.subpage.footer')

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

@include('admin.subpage.srcipt')
</body>
</html>
