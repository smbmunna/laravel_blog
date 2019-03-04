@extends('layouts.admin')


@section('content')

    <h1>Edit User</h1>

    <div class="col-sm-9">

        <img height="100px" width="150px" src="{{$user->photo? $user->photo->file: '/images/placeholder.png'}}" alt="" class="img-resposive img-rounded">

        {!! Form::model($user, ['method'=>'PATCH', 'action'=>['AdminUsersController@update',$user->id], 'files'=>true]) !!}

        <div class="form-group">
            {!! Form::label('name', 'Name:') !!}
            {!! Form::text('name',null,['class'=>'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('email', 'Email:') !!}
            {!! Form::text('email',null,['class'=>'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('password', 'Password:') !!}
            {!! Form::password('password', ['class'=>'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('role_id', 'Role:') !!}
            {!! Form::select('role_id',[''=>'Choose Role'] + $roles,null,['class'=>'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('status', 'Status:') !!}
            {!! Form::select('is_active',array(1=>'Active', 0=>'Not active'), null , ['class'=>'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('photo_id', 'Photo:') !!}
            {!! Form::file('photo_id', null, ['class'=>'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::submit('Confirm Update',['class'=>'btn btn-primary']) !!}
        </div>

        {!! Form::close() !!}




    <!-- Displaying form errors -->

        @include('includes.form_errors')



    </div>


@endsection