@extends('layouts.user.layout1')
@section('content')
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__text">
                        <h2>Chi tiết sản phẩm</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="{{url('/')}}">Home</a>
                        <a href="{{url('/product')}}">Sản phẩm</a>
                        <span>{{$data->tensanpham}}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="product__details__img">
                        <div class="product__details__big__img">
                            <img class="big_img" src="{{url('Coffee/images/product')}}/{{$data->hinh}}" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="product__details__text">
                        <div class="product__label">{{$category->cat_name}}</div>
                        <h4>{{$data->tensanpham}}</h4>
                        <h5>{{number_format($data->gia)}} đ</h5>
                        <p>{{$data->mota}}</p>
                        <div class="product__details__option">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="number" value="1">
                                </div>
                            </div>
                            <a href="#" class="primary-btn">Thêm vào giỏ hàng</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Details Section End -->
@endsection