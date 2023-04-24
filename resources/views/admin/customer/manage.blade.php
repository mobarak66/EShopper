@extends('admin.master')

@section('title')
 Manage Customer Page
@endsection

@section('body')
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">All Customer Information</h4>
                <h4 class="text-center text-success">{{ session('message') }}</h4>
                <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                  <thead>
                  <tr>
                      <th>Sl No</th>
                      <th>Name</th>
                      <th>Email</th>
                      <th>Password</th>
                      <th>Mobile</th>
                      <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                  @foreach ($customers as $customer)                      
                  <tr>
                      <td>{{ $loop->iteration }}</td>
                      <td>{{ $customer->name }}</td>
                      <td>{{ $customer->email }}</td>
                      <td>{{ $customer->password }}</td>
                      <td>{{ $customer->mobile }}</td>
                      
                      <td>
                          <a href="{{ route('customer.edit', ['id' => $customer->id]) }}" class="btn btn-success btn-sm ">
                              <i class="fa fa-edit"></i>
                          </a>
                          <a href="{{ route('customer.delete', ['id' => $customer->id]) }}" class="btn btn-danger btn-sm " onclick="return confirm('Are you sure to delete this?')">
                              <i class="fa fa-trash"></i>
                          </a>
                      </td>
                  </tr>
                  @endforeach
                  </tbody>
              </table>
            </div>
        </div>
    </div> <!-- end col -->
</div> <!-- end row -->
@endsection