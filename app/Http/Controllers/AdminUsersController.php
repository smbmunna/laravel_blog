<?php

namespace App\Http\Controllers;

use App\Http\Requests\UsersEditRequest;
use App\Photo;
use App\User;
use App\Role;
use Illuminate\Http\Request;
use App\Http\Requests\UsersCreateRequest;
use Illuminate\Support\Facades\Session;

class AdminUsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users= User::all();
        return view('admin.users.index',compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $roles= Role::pluck('name','id')->all();
        return view('admin.users.create',compact('roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UsersCreateRequest $request)
    {

            $input= $request->all();
            $input['password']= bcrypt($request->password);


        if($file= $request->file('photo_id')){

            $file_name= time() . $file->getClientOriginalName();
            $file->move('images',$file_name);

            $photo= Photo::create(['file'=>$file_name]);

            $input['photo_id']= $photo->id;

        }




      User::create($input);

        Session::flash('user_create_msg','User has been created successfully');

      return redirect(route('users.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return view('admin.users.show');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       $user= User::find($id);
       $roles= Role::pluck('name','id')->all();
       return view('admin.users.edit',compact('user','roles'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UsersEditRequest $request, $id)
    {

        $user= User::findOrFail($id);



        if($request->password== null){

            $input= $request->except('password');

        }else{

            $input= $request->all();
            $input['password']= bcrypt($request->password);
        }


        if($file= $request->file('photo_id')){
            $file_name= time() . $file->getClientOriginalName();

            $file->move('images', $file_name);

            $photo= Photo::create(['file'=>$file_name]);

            $input['photo_id']= $photo->id;


        }

        $user->Update($input);

        return redirect('/admin/users');


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        Session::flash('user_deleted','User has been deleted successfully');

        $user= User::findOrFail($id);
        unlink(public_path() . $user->photo->file);
        $user->delete();

        return redirect(route('users.index'));
    }
}
