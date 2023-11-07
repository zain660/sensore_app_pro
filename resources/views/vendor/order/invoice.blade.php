@extends('layouts.vendor')

@section('content')
<div class="content-area">
    <div class="mr-breadcrumb">
        <div class="row">
            <div class="col-lg-12">
                <h4 class="heading">{{ __('Order Invoice') }} <a class="add-btn"
                        href="{{ route('vendor-order-show',$order->order_number) }}"><i class="fas fa-arrow-left"></i>
                        {{ __('Back') }}</a></h4>
                <ul class="links">
                    <li>
                        <a href="{{ route('vendor.dashboard') }}">{{ __('Dashboard') }} </a>
                    </li>
                    <li>
                        <a href="javascript:;">{{ __('Orders') }}</a>
                    </li>
                    <li>
                        <a href="javascript:;">{{ __('Invoice') }}</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="order-table-wrap">
        <div class="invoice-wrap">
            <div class="invoice__title">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="invoice__logo text-left">
                            <img src="{{ asset('assets/images/'.$gs->invoice_logo) }}" alt="woo commerce logo">
                        </div>
                    </div>
                    <div class="col-lg-6 text-right">
                        <a class="btn  add-newProduct-btn print"
                            href="{{route('vendor-order-print',$order->order_number)}}" target="_blank"><i
                                class="fa fa-print"></i> {{ __('Print Invoice') }}</a>
                    </div>
                </div>
            </div>
            <br>
            <div class="row invoice__metaInfo mb-4">
                <div class="col-lg-6">
                    <div class="invoice__orderDetails">

                        <p><strong>{{ __('Order Details') }} </strong></p>
                        <span><strong>{{ __('Invoice Number') }} :</strong>
                            {{ sprintf("%'.08d", $order->id) }}</span><br>
                        <span><strong>{{ __('Order Date') }} :</strong>
                            {{ date('d-M-Y',strtotime($order->created_at)) }}</span><br>
                        <span><strong>{{  __('Order ID')}} :</strong> {{ $order->order_number }}</span><br>
                        @if($order->dp == 0)
                        <span> <strong>{{ __('Shipping Method') }} :</strong>
                            @if($order->shipping == "pickup")
                            {{ __('Pick Up') }}
                            @else
                            {{ __('Ship To Address') }}
                            @endif
                        </span><br>
                        @endif
                        <span> <strong>{{ __('Payment Method') }} :</strong> {{$order->method}}</span>
                    </div>
                </div>
            </div>
            <div class="row invoice__metaInfo">
                @if($order->dp == 0)
                <div class="col-lg-6">
                    <div class="invoice__shipping">
                        <p><strong>{{ __('Shipping Address') }}</strong></p>
                        <span><strong>{{ __('Customer Name') }}</strong>:
                            {{ $order->shipping_name == null ? $order->customer_name : $order->shipping_name}}</span><br>
                        <span><strong>{{ __('Address') }}</strong>:
                            {{ $order->shipping_address == null ? $order->customer_address : $order->shipping_address }}</span><br>
                        <span><strong>{{ __('City') }}</strong>:
                            {{ $order->shipping_city == null ? $order->customer_city : $order->shipping_city }}</span><br>
                        <span><strong>{{ __('Country') }}</strong>:
                            {{ $order->shipping_country == null ? $order->customer_country : $order->shipping_country }}</span>

                    </div>
                </div>

                @endif

                <div class="col-lg-6">
                    <div class="buyer">
                        <p><strong>{{ __('Billing Details') }}</strong></p>
                        <span><strong>{{ __('Customer Name') }}</strong>: {{ $order->customer_name}}</span><br>
                        <span><strong>{{ __('Address') }}</strong>: {{ $order->customer_address }}</span><br>
                        <span><strong>{{ __('City') }}</strong>: {{ $order->customer_city }}</span><br>
                        <span><strong>{{ __('Country') }}</strong>: {{ $order->customer_country }}</span>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div class="invoice_table">
                        <div class="mr-table">
                            <div class="table-responsive">
                                <table id="example2" class="table table-hover dt-responsive" cellspacing="0"
                                    width="100%">
                                    <thead>
                                        <tr>
                                            <th>{{ __('Product') }}</th>
                                            <th>{{ __('Details') }}</th>
                                            <th>{{ __('Total') }}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php
                                        $subtotal = 0;
                                        $data = 0;
                                        $tax = 0;

                                        @endphp
                                        @foreach($cart['items'] as $product)
                                        @if($product['item']['user_id'] != 0)
                                        @if($product['item']['user_id'] == $user->id)

                                        <tr>
                                            <td width="50%">
                                                @if($product['item']['user_id'] != 0)
                                                @php
                                                $user = App\Models\User::find($product['item']['user_id']);
                                                @endphp
                                                @if(isset($user))
                                                <a target="_blank"
                                                    href="{{ route('front.product', $product['item']['slug']) }}">{{ $product['item']['name']}}</a>
                                                @else
                                                <a href="javascript:;">{{$product['item']['name']}}</a>
                                                @endif

                                                @else
                                                <a href="javascript:;">{{ $product['item']['name']}}</a>

                                                @endif
                                            </td>


                                            <td>
                                                @if($product['size'])
                                                <p>
                                                    <strong>{{ __('Size') }} :</strong> {{str_replace('-',' ',$product['size'])}}
                                                </p>
                                                @endif
                                                @if($product['color'])
                                                <p>
                                                    <strong>{{ __('Color') }} :</strong> <span
                                                        style="width: 20px; height: 20px; display: inline-block; vertical-align: middle; border-radius: 50%; background: #{{$product['color']}};"></span>
                                                </p>
                                                @endif
                                                <p>
                                                    <strong>{{ __('Price') }} :</strong>
                                                    {{ \PriceHelper::showOrderCurrencyPrice(($product['item_price'] * $order->currency_value),$order->currency_sign) }}
                                                </p>
                                                <p>
                                                    <strong>{{ __('Qty') }} :</strong> {{$product['qty']}}
                                                    {{ $product['item']['measure'] }}
                                                </p>
                                                @if(!empty($product['keys']))

                                                @foreach( array_combine(explode(',', $product['keys']), explode(',',
                                                $product['values'])) as $key => $value)
                                                <p>

                                                    <b>{{ ucwords(str_replace('_', ' ', $key))  }} : </b> {{ $value }}

                                                </p>
                                                @endforeach

                                                @endif

                                            </td>


                                            <td>
                                                {{ \PriceHelper::showOrderCurrencyPrice(($product['price'] * $order->currency_value),$order->currency_sign) }} <small>{{ $product['discount'] == 0 ? '' : '('.$product['discount'].'% '.__('Off').')' }}</small>
                                            </td>
                                            @php
                                            $subtotal += round($product['price'] * $order->currency_value, 2);
                                            @endphp

                                        </tr>

                                        @endif
                                        @endif
                                        @endforeach
                                    </tbody>

                                    <tfoot>
                                        <tr>
                                            <td colspan="2">{{ __('Subtotal') }}</td>
                                            <td>
                                                {{ \PriceHelper::showOrderCurrencyPrice($subtotal,$order->currency_sign) }}
                                            </td>
                                        </tr>
                                        @if(Auth::user()->id == $order->vendor_shipping_id)
                                        @if($order->shipping_cost != 0)
                                        <tr>
                                            <td colspan="2">{{ __('Shipping Cost') }}({{$order->currency_sign}})</td>
                                            <td>
                                                {{ \PriceHelper::showOrderCurrencyPrice($order->shipping_cost,$order->currency_sign) }}
                                            </td>
                                        </tr>
                                        @php
                                        $data += round($order->shipping_cost , 2);
                                        @endphp
                                        @endif
                                        @endif
                                        @if(Auth::user()->id == $order->vendor_packing_id)
                                        @if($order->packing_cost != 0)
                                        <tr>
                                            <td colspan="2">{{ __('Packaging Cost') }}({{$order->currency_sign}})</td>
                                            <td>
                                                {{ \PriceHelper::showOrderCurrencyPrice($order->packing_cost,$order->currency_sign) }}
                                            </td>
                                        </tr>
                                        @php
                                        $data += round($order->packing_cost , 2);
                                        @endphp
                                        @endif
                                        @endif

                                        @if($order->tax != 0)
                                        <tr>
                                            <td colspan="2">{{ __('TAX') }}({{$order->currency_sign}})</td>
                                            @php
                                            $tax = ($subtotal / 100) * $order->tax;
                                            $subtotal = $subtotal + $tax;
                                            @endphp
                                            <td>
                                            {{ \PriceHelper::showOrderCurrencyPrice($tax,$order->currency_sign) }}
                                            </td>
                                        </tr>
                                        @endif

                                        <tr>
                                            <td colspan="1"></td>
                                            <td>{{ __('Total') }}</td>
                                            <td>
                                            {{ \PriceHelper::showOrderCurrencyPrice(($subtotal + $data),$order->currency_sign) }}
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Main Content Area End -->
</div>
</div>
</div>

@endsection