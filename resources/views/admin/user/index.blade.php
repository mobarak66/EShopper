@extends('admin.master')

@section('title')
    Add User Page
@endsection

@section('body')
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title mb-4">Add User Form</h4>
                    <h4 class="text-center text-success">{{session('message')}}</h4>
                    <form action="{{route('user.new-user')}}" method="POST">
                        @csrf
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">User name</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="horizontal-firstname-input" name="name"/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">User Email</label>
                            <div class="col-sm-9">
                                <input type="email" class="form-control" id="horizontal-firstname-input" name="email"/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">User Password</label>
                            <div class="col-sm-9">
                                <input type="password" class="form-control" id="horizontal-firstname-input" name="password"/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-password-input" class="col-sm-3 col-form-label">User Type</label>
                            <div class="col-sm-9">
                                <select class="form-control" name="user_type">
                                    <option value=""> -- Select USer Type -- </option>
                                    <option value="1"> Super Admin </option>
                                    <option value="2"> Admin </option>
                                    <option value="3"> Executive </option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row justify-content-end">
                            <div class="col-sm-9">
                                <div>
                                    <button type="submit" class="btn btn-primary w-md">Create New User</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
