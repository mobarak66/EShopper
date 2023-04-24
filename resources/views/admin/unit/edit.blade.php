@extends('admin.master')

@section('title')
 Edit Unit Page
@endsection

@section('body')
 <div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title mb-4">Edit Unit Form</h4>
                <h4 class="text-center text-success">{{ session('message') }}</h4>
                <form action="{{ route('unit.update', ['id' => $unit->id]) }}" method="POST">
                    @csrf
                    <div class="form-group row mb-4">
                        <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Unit Name</label>
                        <div class="col-sm-9">
                          <input type="text" value="{{ $unit->name }}" class="form-control" id="horizontal-firstname-input" name="name">
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Unit Code</label>
                        <div class="col-sm-9">
                          <input type="text" value="{{ $unit->code }}" class="form-control" id="horizontal-firstname-input" name="code">
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label for="horizontal-email-input" class="col-sm-3 col-form-label">Unit Description</label>
                        <div class="col-sm-9">
                            <textarea type="email"  class="form-control" rows="4" id="horizontal-email-input" name="description">{{ $unit->description }}</textarea>
                        </div>
                    </div>
                   <div class="form-group row justify-content-end">
                        <div class="col-sm-9">  

                            <div>
                                <button type="submit" class="btn btn-primary w-md">Update Unit Info</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
 </div>
@endsection