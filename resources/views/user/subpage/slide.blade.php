<!-- Offcanvas Menu End -->
<section class="slider">
    <div id="owl-demo" class="owl-carousel owl-theme">
        @foreach ($slide as $item)
            <div class="item">
                <div class="slide">
                    <img src="{{url('Coffee')}}/images/slides/{{$item->slide}}" alt="slide1">
                </div>
            </div>
        @endforeach
</section>