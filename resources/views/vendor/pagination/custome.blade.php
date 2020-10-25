@if ($paginator->hasPages())
    <div class="shop__pagination ">
       
        @if ($paginator->onFirstPage())
            <a class="disabled"><span>←</span></a>
        @else
            <a href="{{ $paginator->previousPageUrl() }}" rel="prev">←</a>
        @endif
      
        @foreach ($elements as $element)
           
            @if (is_string($element))
                <a><span>{{ $element }}</span></a>
            @endif

            @if (is_array($element))
                @foreach ($element as $page => $url)
                    @if ($page == $paginator->currentPage())
                        <a class="active"><span>{{ $page }}</span></a>
                    @else
                        <a href="{{ $url }}">{{ $page }}</a>
                    @endif
                @endforeach
            @endif
        @endforeach

        @if ($paginator->hasMorePages())
            <a href="{{ $paginator->nextPageUrl() }}" rel="next">→</a>
        @else
            <a><span>→</span></a>
        @endif
    </ul>
@endif 