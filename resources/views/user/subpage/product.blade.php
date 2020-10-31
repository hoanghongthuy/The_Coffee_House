<!-- Product Begin -->
<div class="recent-book-sec">
    <div class="recent-book-sec container">
        <div class="title">
            <h2>Menu</h2>
            <!-- <div class="btn-sec" style="text-align: right;"> -->
            <a href="{{url('/product')}}" class="btn black-btn"><strong>xem thêm sản phẩm</strong></a>
            <!-- </div> -->
        </div>
        <div class="product spad">
            <div class="container">
                <div class="row">
                    @foreach ($product as $item)
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="{{url('Coffee')}}/images/product/{{$item->hinh}}">
                                <div class="product__label">
                                    <span>{{$item->cat_name}}</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="{{url('product/detail')}}/{{$item->tenkhongdau}}">{{$item->tensanpham}}</a></h6>
                                <div class="product__item__price">{{number_format($item->gia)}} ₫</div>
                                <div class="cart_add">
                                    <a href="#">Thêm vào giỏ hàng</a>
                                </div>
                            </div>
                        </div>
                    </div> 
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>