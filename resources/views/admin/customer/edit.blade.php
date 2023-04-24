@extends('admin.master')

@section('title')
 Edit Customer Page
@endsection

@section('body')
 <div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title mb-4">Edit Customer Form</h4>
                <h4 class="text-center text-success">{{ session('message') }}</h4>
                <form action="{{ route('customer.update', ['id' => $customer->id]) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group row mb-4">
                        <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Customer Name</label>
                        <div class="col-sm-9">
                          <input type="text" value="{{ $customer->name }}" class="form-control" id="horizontal-firstname-input" name="name">
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label for="horizontal-email-input" class="col-sm-3 col-form-label">Customer Email</label>
                        <div class="col-sm-9">
                            <input type="text" value="{{ $customer->email }}" class="form-control" id="horizontal-firstname-input" name="email">
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label for="horizontal-email-input" class="col-sm-3 col-form-label">Customer Password</label>
                        <div class="col-sm-9">
                            <input type="text" value="{{ $customer->password }}" class="form-control" id="horizontal-firstname-input" name="password">
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label for="horizontal-email-input" class="col-sm-3 col-form-label">Customer Mobile</label>
                        <div class="col-sm-9">
                            <input type="text" value="{{ $customer->mobile }}" class="form-control" id="horizontal-firstname-input" name="mobile">
                        </div>
                    </div>
                    

                    <div class="form-group row justify-content-end">
                        <div class="col-sm-9">    

                            <div>
                                <button type="submit" class="btn btn-primary w-md">Update Customer Info</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

 </div>
@endsection