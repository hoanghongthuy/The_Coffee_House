<!-- About Begin -->
<section class="about-sec">
    @foreach ($about as $item)
    <div class="about-img">
        <figure style="background:url({{url('Coffee')}}/images/about/{{$item->img}})no-repeat;"></figure>
    </div>
    <div class="about-content">
        <h2>{{$item->title}}</h2>
        <p>{{$item->content}}</p>
    @endforeach
        <div class="btn-sec">
            <a href="shop.html" class="btn yellow">Xem thêm</a>
        </div>
    </div>
</section>