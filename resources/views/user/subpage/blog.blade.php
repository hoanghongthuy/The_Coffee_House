<section class="blog recent-book-sec">
    <div class="container">
        <div class="title">
            <h2>Blog</h2>
            <!-- <div class="btn-sec" style="text-align: right;"> -->
            <a href="#" class="btn black-btn"><strong>xem thêm</strong></a>
            <!-- </div> -->
        </div>
        <div class="card mb-3">
            <img class="card-img-top" src="{{url('Coffee')}}/images/blog/{{$mainblog->img}}" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">{{$mainblog->title}}</h5>
                <p class="card-text">{{$mainblog->showcontent}}</p>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                <a href="shop.html" class="btn yellowbtn yellow">Xem thêm</a>
            </div>
        </div>
        <div class="card-deck">
            @foreach ($blog as $item)
            <div class="card">
                <img class="card-img-top" src="{{url('Coffee')}}/images/blog/{{$item->img}}" alt="Card image cap">
                <div class="card-body">
                <h5 class="card-title">{{$item->title}}</h5>
                <p class="card-text">{{$item->showcontent}}</p>
                <a href="shop.html" class="btn yellowbtn yellow">Xem thêm</a>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>