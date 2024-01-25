<div class="col-lg-3 col-md-3 col-12 remove-padding">

    <a href="{{ route('front.product', $prod->slug) }}" class="item">
        <div class="item-img">
            @if(!empty($prod->features))
            <div class="sell-area">
                @foreach($prod->features as $key => $data1)
                <span class="sale" style="background-color:{{ $prod->colors[$key] }}">{{ $prod->features[$key] }}</span>
                @endforeach
            </div>
            @endif

            <img class="img-fluid img-thumbnail"
               <img class="img-fluid img-thumbnail"
                src="{{ $prod->thumbnail  }}"
                alt="">
                <div class="extra-list w-100 d-flex justify-content-between">


                <p class="mx-3" style="color:#000; font-size:14px; font-weight:bolder;">View Product</p>
                <!--<a href="javascript:;" id="addcrt"><i class="icofont-cart"></i>{{ $langg->lang90 }}</a>-->


                <ul class="d-flex justify-content-end" styl="column-gap:2px;">
                    <li>
                        @if(Auth::guard('web')->check())

                        <span class="add-to-wish" data-href="{{ route('user-wishlist-add',$prod->id) }}"
                            data-toggle="tooltip" data-placement="right" title="{{ $langg->lang54 }}"
                            data-placement="right"><i class="icofont-heart-alt"></i>
                        </span>

                        @else

                        <span rel-toggle="tooltip" title="{{ $langg->lang54 }}" data-toggle="modal" id="wish-btn"
                            data-target="#comment-log-reg" data-placement="right">
                            <i class="icofont-heart-alt"></i>
                        </span>

                        @endif
                    </li>
                    <li>
                        <span class="quick-view" rel-toggle="tooltip" title="{{ $langg->lang55 }}" href="javascript:;"
                            data-href="{{ route('product.quick',$prod->id) }}" data-toggle="modal"
                            data-target="#quickview" data-placement="right"> <i class="icofont-eye"></i>
                        </span>
                    </li>
                    <li>
                        <span class="add-to-compare" data-href="{{ route('product.compare.add',$prod->id) }}"
                            data-toggle="tooltip" data-placement="right" title="{{ $langg->lang57 }}"
                            data-placement="right">
                            <i class="icofont-exchange"></i>
                        </span>
                    </li>
                </ul>
            </div>
        </div>
        <div class="info mt-1">
            <div class="stars">
                <div class="ratings">
                    <div class="empty-stars"></div>
                    <div class="full-stars" style="width:{{App\Models\Rating::ratings($prod->id)}}%"></div>
                </div>
            </div>
              <h5 class="name">{{ $prod->showName() }}</h5>
            <h4 class="price">{{ $prod->showPrice() }}</h4>

            <div class="item-cart-area">
                @if($prod->product_type == "affiliate")
                <span class="add-to-cart-btn affilate-btn" data-href="{{ route('affiliate.product', $prod->slug) }}"><i
                        class="icofont-cart"></i>
                    {{ $langg->lang251 }}
                </span>
                @else
                @if($prod->stock === 0)
                <span class="add-to-cart-btn cart-out-of-stock">
                    <i class="icofont-close-circled"></i> {{ $langg->lang78 }}
                </span>
                @else
                {{-- Dont change span if changed the design will be exploited --}}
                <span class="add-to-cart-btn" data-href="#" onclick="window.location={{ route('front.product', $prod->slug) }}">
                    <i class="icofont-eye-alt"></i> Details
                </span>
                {{-- <span class="add-to-cart add-to-cart-btn" data-href="{{ route('product.cart.add',$prod->id) }}">
                    <i class="icofont-cart"></i> {{ $langg->lang56 }}
                </span>
                <span class="add-to-cart-quick add-to-cart-btn"
                    data-href="{{ route('product.cart.quickadd',$prod->id) }}">
                    <i class="icofont-cart"></i> {{ $langg->lang251 }}
                </span> --}}
                @endif
                @endif
            </div>
        </div>
    </a>
</div>
