<!doctype html>
<html lang="en">
    @include('user.subpage.head')
    <body>
        @include('user.subpage.loading')
        @include('user.subpage.header')
        @yield('content')
        @include('user.subpage.footer')
        @include('user.subpage.search')
        @include('user.subpage.script')
    </body>
</html>