@extends('website.master')

@section('title')
 Product Cart Page
@endsection

@section('body')

    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Shopping Cart</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="">Home</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Shopping Cart</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->
    <div class="shopping-cart section">
        <div class="container">
            <h4 class="text-center text-success">{{session('message')}}</h4>
            <div class="cart-list-head">

                <div class="cart-list-title">
                    <div class="row">
                        <div class="col-lg-1 col-md-1 col-12">
                        </div>
                        <div class="col-lg-4 col-md-3 col-12">
                            <p>Product Name</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>Quantity</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>Unit Price (TK)</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>Subtotal (TK)</p>
                        </div>
                        <div class="col-lg-1 col-md-2 col-12">
                            <p>Remove</p>
                        </div>
                    </div>
                </div>
                @php($sum=0)
                @foreach($cart_products as $cart_product)
                <div class="cart-single-list">
                    <div class="row align-items-center">
                        <div class="col-lg-1 col-md-1 col-12">
                            <a href="product-details.html"><img src="{{asset($cart_product->attributes->image)}}" alt="#" height="60"></a>
                        </div>
                        <div class="col-lg-4 col-md-3 col-12">
                            <h5 class="product-name"><a href="product-details.html">
                                    {{$cart_product->name}}</a></h5>
                            <p class="product-des">
                                <span><em>Category:</em> {{$cart_product->attributes->category}}</span>
                                <span><em>Brand:</em> {{$cart_product->attributes->brand}}</span>
                            </p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <form action="{{route('cart.update', ['id' => $cart_product->id])}}" method="POST">
                                @csrf
                                <div class="input-group">
                                    <input type="number" value="{{$cart_product->quantity}}" name="quantity" min="1" class="form-control"/>
                                    <input type="submit" value="Update" class="btn btn-success"/>
                                </div>
                            </form>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>{{$cart_product->price }}</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>{{$cart_product->price * $cart_product->quantity }}</p>
                        </div>
                        <div class="col-lg-1 col-md-2 col-12">
                            <a class="align-middle" href="{{route('cart.remove', ['id' => $cart_product->id])}}"><button class="btn btn-sm btn-danger"><i class="fa fa-times"></i></button></a>
                        </div>
                    </div>
                </div>
                @php($sum = $sum + ($cart_product->price * $cart_product->quantity))
                @endforeach
            </div>
            <div class="row">
                <div class="col-12">

                    <div class="total-amount">
                        <div class="row">
                            <div class="col-lg-8 col-md-6 col-12">
                                <div class="left">
                                    <div class="coupon">
                                        <form action="#" target="_blank">
                                            <input name="Coupon" placeholder="Enter Your Coupon">
                                            <div class="button">
                                                <button class="btn btn-primary">Apply Coupon</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-12">
                                <div class="right">
                                    <ul>
                                        <li>Cart Subtotal :<span> TK. {{$sum}}</span></li>
                                        <li>Tax Amount :<span> Tk. {{$tax = $sum * 0.15}}</span></li>
                                        <li>Shipping :<span> Tk. {{$shipping = 500}}</span></li>
                                        <li class="last">Total Payable :<span> Tk. {{$totalPayable = $sum+$tax+$shipping}}</span></li>
                                    </ul>
                                    <div class="button">
                                        <a href="{{route('checkout')}}" class="btn btn-primary">Checkout</a>
                                        <a href="" class="btn btn-dark btn-alt">Continue shopping</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
@endsection