@if ($paginator->hasPages())
    <nav>
        <ul class="pagination fw-bold">
            {{-- Previous Page Link --}}
            @if ($paginator->onFirstPage())
                <li class="page-item disabled" aria-disabled="true">
                    <span class="page-link">@lang('pagination.previous')</span>
                </li>
            @else
                <li class="page-item">
                    @if (count(request()->input()) > 0)
                        @if (request()->input('page') != null)
                            @php
                                $new_url = request()->fullUrlWithoutQuery('page');
                                (count(request()->input()) > 1) ? $tagar = '&' : $tagar = '?';
                            @endphp
                            <a class="page-link" href="{{ $new_url . $tagar . 'page=' . $paginator->currentPage() - 1 }}" rel="prev">@lang('pagination.previous')</a>
                        @else
                        <a class="page-link" href="{{ url()->full() . '&page=' . $paginator->currentPage() - 1 }}" rel="prev">@lang('pagination.previous')</a>
                        @endif
                    @else
                        <a class="page-link" href="{{ $paginator->previousPageUrl() }}" rel="prev">@lang('pagination.previous')</a>
                    @endif
                </li>
            @endif

            {{-- Next Page Link --}}
            @if ($paginator->hasMorePages())
                <li class="page-item">
                    @if (count(request()->input()) > 0)
                        @if (request()->input('page') != null)
                            @php
                                $new_url = request()->fullUrlWithoutQuery('page');
                                (count(request()->input()) > 1) ? $tagar = '&' : $tagar = '?';
                            @endphp
                            <a class="page-link" href="{{ $new_url . $tagar . 'page=' . $paginator->currentPage() + 1 }}" rel="next">@lang('pagination.next')</a>
                        @else
                        <a class="page-link" href="{{ url()->full() . '&page=' . $paginator->currentPage() + 1 }}" rel="next">@lang('pagination.next')</a>
                        @endif
                    @else
                        <a class="page-link" href="{{ $paginator->nextPageUrl() }}" rel="next">@lang('pagination.next')</a>
                    @endif
                </li>
            @else
                <li class="page-item disabled" aria-disabled="true">
                    <span class="page-link">@lang('pagination.next')</span>
                </li>
            @endif
        </ul>
    </nav>
@endif
