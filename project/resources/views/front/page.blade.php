@extends('layouts.front')
@section('styles')
    <!--@if ($page->slug == 'about')-->
        <style>
            .about {
                background-image: url(assets/about_us.avif);
                background-size: cover;
                height: 100vh;
                width: 100%;
                padding: 0px !important;
            }

            .class {
                height: 100vh;
                width: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .para {
                height: 100%;
                width: 100%;
                padding: 80px 10px 80px 10px;
                background-color: #f6f6f6;
            }

            .para p {
                font-size: 16px;
                color: #4b4b4b;
                font-family: "Pangea Text", Helvetica, Arial, sans-serif;
            }

            .enter-email {
                height: 410px;
                width: 100%;
                background: #143250;
            }

            .box {
                min-height: 275px;
                width: 100%;
                background: #ffffff;
                border-radius: 15px;
                padding: 58px 64px 64px 64px;
            }

            .box h3 {
                color: #143250;
                font-size: 30px;
                margin-top: 5px;
            }

            .box p {
                font-size: 16px;
                color: #4b4b4b;
                line-height: 24px;
                font-family: "Pangea Text", Helvetica, Arial, sans-serif;
            }

            .input-email {
                width: 100%;
                border: 1px solid lightgray;
            }

            .input-email:focus {
                border: 1px solid red;
            }

            .sign-btn {
                font-weight: bold;
                font-size: 14px;
                padding: 9px 20px 9px 20px;
                background-color: #143250;
                color: white;
            }

            .subscribe-line {
                font-size: 13px !important;
            }

            .join {
                padding-right: 100px;
            }

            @media screen and (max-width: 426px) {
                .enter-email {
                    height: 500px;
                    width: 100%;
                }

                .class h1 {
                    font-size: 39px;
                }

                .box {
                    padding: 23px !important;
                }

                .box h3 {
                    font-size: 23px;
                    margin-top: 5px;
                }

                .box p {
                    font-size: 15px;
                }

                .sign-btn {
                    width: 100%;
                    margin-top: -45px !important;
                }

                .join {
                    padding-right: 0px;
                }

                .input-email {
                    margin-top: 5px !important;
                }
            }

            @media screen and (max-width: 769px) and (min-width: 426px) {
                .join {
                    padding-right: 20px;
                }

                .box {
                    padding: 30px 70px 30px 40px;
                }

                .input-email {
                    margin: 0px !important;
                }

                .sign-btn {
                    margin-top: -35px;
                }
            }



            nav .menu>li.dropdown>a::before {
                content: none;
            }

            .screen-overlay {
                height: 100%;
                z-index: 30;
                position: fixed;
                top: 0;
                left: 0;
                opacity: 0;
                visibility: hidden;
                background-color: rgba(34, 34, 34, 0.6);
                transition: opacity .2s linear, visibility .1s, width 1s ease-in;
            }

            .screen-overlay.show {
                transition: opacity .5s ease, width 0s;
                opacity: 1;
                width: 100%;
                visibility: visible;
            }

            .offcanvas {
                width: 350px;
                visibility: hidden;
                transform: translateX(-100%);
                transition: all .2s;
                border-radius: 0;
                box-shadow: 0 5px 10px rgba(0, 0, 0, .2);
                display: block;
                position: fixed;
                top: 0;
                left: 0;
                height: 100%;
                z-index: 1200;
                background-color: #fff;
                overflow-y: scroll;
                overflow-x: hidden;
            }

            .offcanvas.show {
                visibility: visible;
                transform: translateX(0);
                transition: transform .2s;
            }

            .logo-header {
                position: relative;
            }
        </style>
    <!--@endif-->
@stop
@section('content')
    <!-- Breadcrumb Area Start -->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="pages">
                        <li>
                            <a href="{{ route('front.index') }}">
                                {{ $langg->lang17 }}
                            </a>
                        </li>
                        <li>
                            <a href="{{ route('front.page', $page->slug) }}">
                                {{ $page->title }}
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Area End -->


    @if ($page->slug != 'about')
        <section class="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="about-info">
                            <h4 class="title">
                                {{ $page->title }}
                            </h4>
                            <p>
                                {!! $page->details !!}
                            </p>

                        </div>
                    </div>
                </div>
            </div>
        </section>
    @else
        <section class="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="class text-center bg-gradient-dark">
                            <div>
                                <h1 class="text-light font-weight-bold">About Us</h1>
                                <h5 class="text-light mt-4">For explorers everywhere.</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        {!! $page->details !!}
    @endif
@endsection
