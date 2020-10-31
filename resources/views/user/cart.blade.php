@extends('layouts.user.layout1')
@section('content')
<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__text">
                    <h2>Shopping cart</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__links">
                    <a href="./index.html">Home</a>
                    <span>Shopping cart</span>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="shopping-cart spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="shopping__cart__table">
                    <table>
                        <thead>
                            <tr>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th>Total</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach(Cart::content() as $k=>$v)
                            <tr class="{{$v->rowId}}">
                                <td class="product__cart__item">
                                    <div class="product__cart__item__pic">
                                        <img src="{{url('Coffee/images/product')}}/{{$v->options['hinh']}}" alt="" style="width:90px">
                                    </div>
                                    <div class="product__cart__item__text">
                                        <h6>{{$v->name}}</h6>
                                        <h5>${{$v->price}}</h5>
                                    </div>
                                </td>
                                <td class="quantity__item">
                                    <div class="quantity">
                                        <div class="pro-qty">
                                            <input type="number" min='1' value="{{$v->qty}}" onblur="cartNew('{{$v->rowId}}',this.value)" >
                                        </div>
                                    </div>
                                </td>
                                <td class="cart__price" id="t{{$v->rowId}}">$ {{$v->qty * $v->price}}</td>
                                <td class="cart__close"><span class="icon_close pcursor" onclick="delCart('{{$v->rowId}}')"><i class="fa fa-trash"></i></span></td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="continue__btn">
                            <a href="{{url('/')}}">Tiếp tục mua hàng</a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="continue__btn update__btn">
                            <a href="cart/deleteAll"><i class="fa fa-spinner"></i>Xóa giỏ hàng</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="cart__total">
                    <h6>Cart total</h6>
                    <ul>
                        <li>Subtotal <span class="totalGH">$ {{Cart::total()}}</span></li>
                        <li>Total <span class="totalDem">$ {{Cart::count()}}</span></li>
                    </ul>
                    <a href="#" class="primary-btn">Proceed to checkout</a>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection