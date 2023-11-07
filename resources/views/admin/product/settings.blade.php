@extends('layouts.admin')

@section('content')

<div class="content-area">

    <div class="mr-breadcrumb">
        <div class="row">
            <div class="col-lg-12">
                <h4 class="heading">{{ __('Product Settings') }}</h4>
                <ul class="links">
                    <li>
                        <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                    </li>
                    <li>
                        <a href="javascript:;">{{ __('Products') }}</a>
                    </li>
                    <li>
                        <a href="javascript:;">{{ __('Product Settings') }}</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="add-product-content1 add-product-content2">
        <div class="row">
            <div class="col-lg-12">
                <div class="product-description">
                    <div class="body-area">
                        <div class="gocover"
                            style="background: url({{asset('assets/images/'.$gs->admin_loader)}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);">
                        </div>
                        <form action="{{ route('admin-gs-prod-settings-update') }}" id="geniusform" method="POST"
                            enctype="multipart/form-data">
                            @csrf

                            @include('alerts.admin.form-both')

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">
                                            {{ __('Display Stock Number') }}
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="action-list">
                                        <select
                                            class="process select droplinks {{ $gs->show_stock == 1 ? 'drop-success' : 'drop-danger' }}">
                                            <option data-val="1" value="{{route('admin-gs-status',['show_stock',1])}}"
                                                {{ $gs->show_stock == 1 ? 'selected' : '' }}>{{ __('Activated') }}
                                            </option>
                                            <option data-val="0" value="{{route('admin-gs-status',['show_stock',0])}}"
                                                {{ $gs->show_stock == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}
                                            </option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">{{ __('Product Whole Sale Max Quantity') }} *
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <input type="number" class="input-field"
                                        placeholder="{{ __('Product Whole Sale Max Quantity') }}" name="wholesell"
                                        value="{{ $gs->wholesell }}" required="" min="0">
                                </div>
                            </div>

                            <hr>

                            <h4 class="text-center">{{ __('HOME PAGE SECTION') }}</h4>
      
                            <hr>



                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">{{ __('Display Flash Deal Products') }} *
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <input type="number" class="input-field"
                                        placeholder="{{ __('Display Flash Deal Products') }}" name="flash_count"
                                        value="{{ $gs->flash_count }}" required="" min="0">
                                </div>
                            </div>


                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">{{ __('Display Hot Products') }} *
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <input type="number" class="input-field"
                                        placeholder="{{ __('Display Hot Products') }}" name="hot_count"
                                        value="{{ $gs->hot_count }}" required="" min="0">
                                </div>
                            </div>


                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">{{ __('Display New Products') }} *
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <input type="number" class="input-field"
                                        placeholder="{{ __('Display New Products') }}" name="new_count"
                                        value="{{ $gs->new_count }}" required="" min="0">
                                </div>
                            </div>


                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">{{ __('Display Sale Products') }} *
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <input type="number" class="input-field" placeholder="{{ __('Display Sale Products') }}"
                                        name="sale_count" value="{{ $gs->sale_count }}" required="" min="0">
                                </div>
                            </div>


                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">{{ __('Display Best Seller Products') }} *
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <input type="number" class="input-field"
                                        placeholder="{{ __('Display Best Seller Products') }}"
                                        name="best_seller_count" value="{{ $gs->best_seller_count }}" required=""
                                        min="0">
                                </div>
                            </div>


                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">{{ __('Display Popular Products') }} *
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <input type="number" class="input-field"
                                        placeholder="{{ __('Display Popular Products') }}" name="popular_count"
                                        value="{{ $gs->popular_count }}" required="" min="0">
                                </div>
                            </div>


                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">{{ __('Display Top Rated Products') }} *
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <input type="number" class="input-field"
                                        placeholder="{{ __('Display Top Rated Products') }}" name="top_rated_count"
                                        value="{{ $gs->top_rated_count }}" required="" min="0">
                                </div>
                            </div>

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">{{ __('Display Big Save Products') }} *
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <input type="number" class="input-field"
                                        placeholder="{{ __('Display Big Save Products') }}" name="big_save_count"
                                        value="{{ $gs->big_save_count }}" required="" min="0">
                                </div>
                            </div>

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">{{ __('Display Trending Products') }} *
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <input type="number" class="input-field"
                                        placeholder="{{ __('Display Trending Products') }}" name="trending_count"
                                        value="{{ $gs->trending_count }}" required="" min="0">
                                </div>
                            </div>


                            <hr>

                            <h4 class="text-center">{{ __('CATEGORY PAGE SECTION') }}</h4>
      
                            <hr>


                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">{{ __('Display Products Per Page') }} *
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <input type="number" class="input-field"
                                        placeholder="{{ __('Display Products Per Page') }}" name="page_count"
                                        value="{{ $gs->page_count }}" required="" min="0">
                                </div>
                            </div>

                            <hr>

                            <h4 class="text-center">{{ __('VENDOR PAGE SECTION') }}</h4>
      
                            <hr>


                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">{{ __('Display Products Per Page') }} *
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <input type="number" class="input-field"
                                        placeholder="{{ __('Display Products Per Page') }}" name="vendor_page_count"
                                        value="{{ $gs->vendor_page_count }}" required="" min="0">
                                </div>
                            </div>


                            <hr>

                            <h4 class="text-center">{{ __('PRODUCT DETAILS PAGE SECTION') }}</h4>
      
                            <hr>

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">
                                            {{ __('Display Contact Seller') }}
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="action-list">
                                        <select
                                            class="process select droplinks {{ $gs->is_contact_seller == 1 ? 'drop-success' : 'drop-danger' }}">
                                            <option data-val="1" value="{{route('admin-gs-status',['is_contact_seller',1])}}"
                                                {{ $gs->is_contact_seller == 1 ? 'selected' : '' }}>{{ __('Activated') }}
                                            </option>
                                            <option data-val="0" value="{{route('admin-gs-status',['is_contact_seller',0])}}"
                                                {{ $gs->is_contact_seller == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}
                                            </option>
                                        </select>
                                    </div>
                                </div>
                            </div>


                           
                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">{{ __('Display Product By Seller') }} *
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <input type="number" class="input-field"
                                        placeholder="{{ __('Display Products Per Page') }}" name="seller_product_count"
                                        value="{{ $gs->seller_product_count }}" required="" min="0">
                                </div>
                            </div>


                            <hr>
                            <h4 class="text-center">{{ __('VENDOR PRODUCT CREATE ENABLE & DISABLE') }}</h4>
      
                            <hr>

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">
                                            {{ __('Vendor Physical Products') }}
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="action-list">
                                        <select
                                            class="process select droplinks {{ $gs->physical == 1 ? 'drop-success' : 'drop-danger' }}">
                                            <option data-val="1" value="{{route('admin-gs-status',['physical',1])}}"
                                                {{ $gs->physical == 1 ? 'selected' : '' }}>{{ __('Activated') }}
                                            </option>
                                            <option data-val="0" value="{{route('admin-gs-status',['physical',0])}}"
                                                {{ $gs->physical == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}
                                            </option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">
                                            {{ __('Vendor Digital Products') }}
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="action-list">
                                        <select
                                            class="process select droplinks {{ $gs->digital == 1 ? 'drop-success' : 'drop-danger' }}">
                                            <option data-val="1" value="{{route('admin-gs-status',['digital',1])}}"
                                                {{ $gs->digital == 1 ? 'selected' : '' }}>{{ __('Activated') }}
                                            </option>
                                            <option data-val="0" value="{{route('admin-gs-status',['digital',0])}}"
                                                {{ $gs->digital == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}
                                            </option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">
                                            {{ __('Vendor License Products') }}
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="action-list">
                                        <select
                                            class="process select droplinks {{ $gs->license == 1 ? 'drop-success' : 'drop-danger' }}">
                                            <option data-val="1" value="{{route('admin-gs-status',['license',1])}}"
                                                {{ $gs->license == 1 ? 'selected' : '' }}>{{ __('Activated') }}
                                            </option>
                                            <option data-val="0" value="{{route('admin-gs-status',['license',0])}}"
                                                {{ $gs->license == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}
                                            </option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">
                                            {{ __('Vendor Listing Products') }}
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="action-list">
                                        <select
                                            class="process select droplinks {{ $gs->listing == 1 ? 'drop-success' : 'drop-danger' }}">
                                            <option data-val="1" value="{{route('admin-gs-status',['listing',1])}}"
                                                {{ $gs->listing == 1 ? 'selected' : '' }}>{{ __('Activated') }}
                                            </option>
                                            <option data-val="0" value="{{route('admin-gs-status',['listing',0])}}"
                                                {{ $gs->listing == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}
                                            </option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">
                                            {{ __('Vendor Affilite Products') }}
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="action-list">
                                        <select
                                            class="process select droplinks {{ $gs->affilite == 1 ? 'drop-success' : 'drop-danger' }}">
                                            <option data-val="1" value="{{route('admin-gs-status',['affilite',1])}}"
                                                {{ $gs->affilite == 1 ? 'selected' : '' }}>{{ __('Activated') }}
                                            </option>
                                            <option data-val="0" value="{{route('admin-gs-status',['affilite',0])}}"
                                                {{ $gs->affilite == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}
                                            </option>
                                        </select>
                                    </div>
                                </div>
                            </div>




                            <hr>

                            <h4 class="text-center">{{ __('WISHLIST PAGE SECTION') }}</h4>
      
                            <hr>


                                <div class="row justify-content-center">
                                    <div class="col-lg-3">
                                        <div class="left-area">
                                            <h4 class="heading">{{ __('Display Products Per Page') }} *
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <input type="number" class="input-field"
                                            placeholder="{{ __('Display Products Per Page') }}" name="wishlist_count"
                                            value="{{ $gs->wishlist_count }}" required="" min="0">
                                    </div>
                                </div>
                                <div class="row justify-content-center">
                                    <div class="col-lg-3">
                                        <div class="left-area">
                                            <h4 class="heading">{{ __('View Wishlist Product Per Page') }} *
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <ul id="wishlist_page" class="myTags">
                                            @foreach (explode(',',$gs->wishlist_page) as $element)
                                              <li>{{  $element }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>




                                <hr>

                                <h4 class="text-center">{{ __('CATALOG & FILTER SECTION') }}</h4>
          
                                <hr>
    
                                <div class="row justify-content-center">
                                    <div class="col-lg-3">
                                        <div class="left-area">
                                            <h4 class="heading">{{ __('Minimum Price') }} *
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <input type="number" class="input-field"
                                            placeholder="{{ __('Minimum Price') }}" name="min_price"
                                            value="{{ $gs->min_price }}" required="" min="0">
                                    </div>
                                </div>

                                <div class="row justify-content-center">
                                    <div class="col-lg-3">
                                        <div class="left-area">
                                            <h4 class="heading">{{ __('Maximum Price') }} *
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <input type="number" class="input-field"
                                            placeholder="{{ __('Maximum Price') }}" name="max_price"
                                            value="{{ $gs->max_price }}" required="" min="0">
                                    </div>
                                </div>


                                <div class="row justify-content-center">
                                    <div class="col-lg-3">
                                        <div class="left-area">
                                            <h4 class="heading">{{ __('View Product Per Page') }} *
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <ul id="product_page" class="myTags">
                                            @foreach (explode(',',$gs->product_page) as $element)
                                              <li>{{  $element }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">

                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <button class="addProductSubmit-btn" type="submit">{{ __('Save') }}</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection


@section('scripts')

{{-- TAGIT --}}

<script type="text/javascript">

(function($) {
		"use strict";

          $("#product_page").tagit({
            fieldName: "product_page[]",
            allowSpaces: true 
          });
          $("#wishlist_page").tagit({
            fieldName: "wishlist_page[]",
            allowSpaces: true 
          });

})(jQuery);

</script>

{{-- TAGIT ENDS--}}

@endsection

