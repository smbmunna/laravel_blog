@extends('layouts.admin');

@section('content');


<h1>USERS</h1>



    <table class="table table-hover">
        <thead>
          <tr>
            <th>ID</th>
            <th>Photo</th>
            <th>Name</th>
            <th>Email</th>
            <th>Role</th>
            <th>Activity</th>
            <th>Created</th>
            <th>Updated</th>
          </tr>
        </thead>
        <tbody>

        @if($users)


        @foreach($users as $user)
          <tr>
            <td>{{$user->id}}</td>
            <td><img height="50px" width="50px" src="{{$user->photo ? $user->photo->file : '/images/placeholder.png'}}" alt=""></td>
            <td><a href="{{route('users.edit',$user->id)}}">{{$user->name}}</a></td>
            <td>{{$user->email}}</td>
            <td>{{$user->role->name}}</td>
            <td>{{$user->is_active==1?'Active':'Not Active'}}</td>
            <td>{{$user->created_at->diffForHumans()}}</td>
            <td>{{$user->updated_at->diffForHumans()}}</td>
          </tr>
         @endforeach


        @endif

        </tbody>
      </table>



@endsection;