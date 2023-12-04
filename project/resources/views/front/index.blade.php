@extends('layouts.front')
@section('styles')
    <style>
        .item .item-img img {
            height: 350px;
            /* height: 400px; */
        }
    </style>
@endsection
@section('content')
    @if ($ps->slider == 1)
        @if (count($sliders))
            @include('includes.slider-style')
        @endif
    @endif

    @if ($ps->slider == 1)
        <!-- Hero Area Start -->
        <section class="hero-area">
            @if ($ps->slider == 1)
                @if (count($sliders))
                    <div class="hero-area-slider">
                        <div class="slide-progress"></div>
                        <div class="intro-carousel">
                            @foreach ($sliders as $data)
                                <div class="intro-content {{ $data->position }}"
                                    style="background-image: url({{ asset('assets/images/sliders/' . $data->photo) }})">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="slider-content">
                                                    <!-- layer 1 -->
                                                    <div class="layer-1">
                                                        <h4 style="font-size: {{ $data->subtitle_size }}px; color: {{ $data->subtitle_color }}"
                                                            class="subtitle subtitle{{ $data->id }}"
                                                            data-animation="animated {{ $data->subtitle_anime }}">
                                                            {{ $data->subtitle_text }}</h4>
                                                        <h2 style="font-size: {{ $data->title_size }}px; color: {{ $data->title_color }}"
                                                            class="title title{{ $data->id }}"
                                                            data-animation="animated {{ $data->title_anime }}">
                                                            {{ $data->title_text }}</h2>
                                                    </div>
                                                    <!-- layer 2 -->
                                                    <div class="layer-2">
                                                        <p style="font-size: {{ $data->details_size }}px; color: {{ $data->details_color }}"
                                                            class="text text{{ $data->id }}"
                                                            data-animation="animated {{ $data->details_anime }}">
                                                            {{ $data->details_text }}</p>
                                                    </div>
                                                    <!-- layer 3 -->
                                                    <div class="layer-3">
                                                        <a href="{{ $data->link }}" target="_blank"
                                                            class="mybtn1"><span>{{ $langg->lang25 }} <i
                                                                    class="fas fa-chevron-right"></i></span></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                @endif

            @endif

        </section>
        <!-- Hero Area End -->
    @endif


    <section class="phone-and-accessories categori-item">
        <div class="container-fluid p-5">
            <div class="row">
                <div class="col-lg-12 remove-padding">
                    {{-- <div class="section-top">
                        <h2 class="section-title">
                            Categories
                        </h2>
                    </div> --}}
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        @include('includes.product.show_categories')
                    </div>
                </div>
                {{-- <div class="col-lg-2 remove-padding d-none d-lg-block">
                    <div class="aside">
                        <div class="banner-effect mb-10" >
                            <img src="{{asset('assets/images/'.$ps->best_seller_banner)}}" alt="">
                        </div>
                    </div>
                </div> --}}
            </div>
        </div>
    </section>
    @if ($ps->hot_sale == 1)
         Trending Item Area Start 
        <section class="phone-and-accessories categori-item">
            <div class="container-fluid p-5">

                <div class="row">
                    <div class="col-lg-12 remove-padding">
                        <div class="section-top">
                            <h2 class="section-title">
                                {{ 'Hot Product' }}
                            </h2>
                            <a href="{{ route('front.hot_product') }}" class="link" style="margin-right: 72px;">View
                                All</a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row">
                            @foreach ($hot_products as $prod)
                            <div class="col-lg-3">
                                @include('includes.product.slider-product')
                            </div>
                            @endforeach
                        </div>
                    </div>

                </div>
            </div>
        </section>
         Tranding Item Area End 
    @endif
    @if ($ps->featured_category == 1)
        {{-- Slider buttom Category Start --}}
        <section class="slider-buttom-category d-none d-md-block">
            <div class="container">
                <div class="row">
                    @foreach ($categories->where('is_featured', '=', 1) as $cat)
                        <div class="col-xl-2 col-lg-3 col-md-4 sc-common-padding">
                            <a href="{{ route('front.category', $cat->slug) }}" class="single-category">
                                <div class="left">
                                    <h5 class="title">
                                        {{ $cat->name }}
                                    </h5>
                                    <p class="count">
                                        {{ count($cat->products) }} {{ $langg->lang4 }}
                                    </p>
                                </div>
                                <div class="right">
                                    <img src="{{ asset('assets/images/categories/' . $cat->image) }}" alt=""
                                        width="100px" height="100px">
                                </div>
                            </a>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
        {{-- Slider buttom banner End --}}
    @endif

    @if ($ps->featured == 1)
        <!-- Trending Item Area Start -->
        <section class="trending">
            <div class="container-fluid p-5">
                <div class="row">
                    <div class="col-lg-12 remove-padding">
                        <div class="section-top">
                            <h2 class="section-title">
                                {{ $langg->lang26 }}
                            </h2>
                            {{-- <a href="#" class="link">View All</a> --}}
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 remove-padding">
                        <div class="trending-item-slider">
                            @foreach ($feature_products as $prod)
                                @include('includes.product.slider-product')
                            @endforeach
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!-- Tranding Item Area End -->
    @endif

    @if ($ps->small_banner == 1)
        <!-- Banner Area One Start -->
        <section class="banner-section">
            <div class="container">
                @foreach ($top_small_banners->chunk(2) as $chunk)
                    <div class="row">
                        @foreach ($chunk as $img)
                            <div class="col-lg-6 remove-padding">
                                <div class="left">
                                    <a class="banner-effect" href="{{ $img->link }}" target="_blank">
                                        <img src="{{ asset('assets/images/banners/' . $img->photo) }}" alt="">
                                    </a>
                                </div>
                            </div>
                        @endforeach
                    </div>
                @endforeach
            </div>
        </section>
        <!-- Banner Area One Start -->
    @endif

    <section id="extraData">
        <div class="text-center">
            <img src="{{ asset('assets/images/' . $gs->loader) }}">
        </div>
    </section>


@endsection

@section('scripts')
    <script>
        $(window).on('load', function() {

            setTimeout(function() {

                $('#extraData').load('{{ route('front.extraIndex') }}');

            }, 500);
        });
        
        $("#maddcrt").on("click", function(){
var qty = $('.modal-total').html();
var pid = $(this).parent().parent().parent().parent().find("#mproduct_id").val();

if($('.mproduct-attr').length > 0)
{
values = $(".mproduct-attr:checked").map(function() {
return $(this).val();
}).get();

keys = $(".mproduct-attr:checked").map(function() {
return $(this).data('key');
}).get();


prices = $(".mproduct-attr:checked").map(function() {
return $(this).data('price');
}).get();

}



$.ajax({
  type: "GET",
  url:mainurl+"/addnumcart",
  data:{id:pid,qty:qty,size:sizes,color:colors,size_qty:size_qty,size_price:size_price,size_key:size_key,keys:keys,values:values,prices:prices},
  success:function(data){
      if(data == 'digital') {
          toastr.error(langg.already_cart);
      }
      else if(data == 0) {
          toastr.error(langg.out_stock);
      }
      else {
          $("#cart-count").html(data[0]);
          $("#cart-items").load(mainurl+'/carts/view');
          toastr.success(langg.add_cart);
      }
  }
});
});
        
    </script>
@endsection
