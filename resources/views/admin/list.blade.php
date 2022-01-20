@extends('admin/master')

@section('body_section')
 <!-- Main content -->
 <div class="container">
@if(Session::has('message'))
<p class="{{Session::get('class')}}">{{Session::get('message')}}</p>
@endif
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-xs-5">
                        <h2>User <b>Management</b></h2>

                    </div>
                    <div class="col-xs-7">
                        <a href="{{route('add-employee')}}" class="btn btn-primary"><i class="material-icons">&#xE147;</i> <span>Add New User</span></a>
                        <a href="#" class="btn btn-primary"><i class="material-icons">&#xE24D;</i> <span>Export to Excel</span></a>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>

                    <tr>
                        <th>#124</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>phone Number</th>
                        <th>Multiple Image</th>
                        <th>Role</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>

                </thead>
                <tbody>
                 
                    @foreach ($data as $view)
                    <tr>                        
                       <td>{{$view['id']}}</td>
                        <td><a href="#" ><img src="{{ asset('images/' . $view['Image']) }}" style="width: 30px" class="avatar" alt="Avatar">{{$view['fullname']}}</a></td>
                        <td>{{$view['email']}}</td>
                        <td>{{$view['phone_number']}}</td>
                        <td>
                        @forelse ($view['images'] as $v)
                        <a href="#" ><img src="{{ asset('img/' . $v['main_image']) }}" style="width: 30px" class="avatar" alt="Avatar"></a>
                        @empty
                        sala,
                        @endforelse
                        </td>
                        <td><button class="btn btn-danger">{{$view['Role']}}</td>

                        <td><button class="btn btn-success">{{$view['status']}}</button> </td>
                        <td>
                            <a href="{{url('role',$view['id'])}}"  class="status" title="status" data-toggle="tooltip"><i class="fa fa-ban" aria-hidden="true">&#xE5C9;</i></i></a>
                            <a href="{{route('delete-employee',$view['id'])}}" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>

                        </td>
                          </tr>
                          @endforeach




                </tbody>
            </table>
            <div class="clearfix">
                <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                <ul class="pagination">
                    <li class="page-item disabled"><a href="#">Previous</a></li>
                    <li class="page-item"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item active"><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" class="page-link">Next</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

@stop

@section('scripting')
@stop

@section('script_tag')
@stop
