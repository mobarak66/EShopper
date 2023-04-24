@extends('admin.master')

@section('title')
    Edit Order Page
@endsection

@section('body')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    <h4 class="card-title"> Order Edit Form</h4>
                    <h4 class="text-center text-success">{{session('message')}}</h4>
                    <form action="{{route('admin.update-order', ['id' => $order->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Order No</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="horizontal-firstname-input" value="{{$order->id}}" readonly/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="" class="col-sm-3 col-form-label">Order Status</label>
                            <div class="col-sm-9">
                                <select class="form-control" name="order_status">
                                    <option value="Pending" {{$order->order_status == 'Pending' ? 'selected' : ''}}>Pending</option>
                                    <option value="Processing" {{$order->order_status == 'Processing' ? 'selected' : ''}}>Processing</option>
                                    <option value="Complete" {{$order->order_status == 'Complete' ? 'selected' : ''}}>Complete</option>
                                    <option value="Cancel" {{$order->order_status == 'Cancel' ? 'selected' : ''}}>Cancel</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-email-input" class="col-sm-3 col-form-label">Delivery Address</label>
                            <div class="col-sm-9">
                                <textarea class="form-control" rows="4" id="horizontal-email-input" name="delivery_address">{{$order->delivery_address}}</textarea>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="" class="col-sm-3 col-form-label">Order Total</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" id="" name="order_total" value="{{$order->order_total}}" readonly/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="" class="col-sm-3 col-form-label">Payment Amount</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" id="" name="payment_amount" value="{{$order->order_total}}"/>
                            </div>
                        </div>
                        <div class="form-group row justify-content-end">
                            <div class="col-sm-9">
                                <div>
                                    <button type="submit" class="btn btn-primary w-md">Update Order Status</button>
                                </div>
                            </div>
                        </div>
                    </form>


                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->
@endsection

