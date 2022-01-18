<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class RegisterController extends Controller
{
    public function view_register()
    {
        return view('register');
    }

    public function  register_process(Request $request)
    {


        // dd($request->all());
        $validatedData = $request->validate([

            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6',
        ]);

        $register_process = [

           'name'=> $request->name,
           'email'=> $request->email,
           'password'=>bcrypt($request->password),
        ];



         User::create( $register_process, $validatedData);
         return redirect()->route('view-login')->with('success','Data insert Succesfully');


    }


}
