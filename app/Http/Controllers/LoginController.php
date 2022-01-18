<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
class LoginController extends Controller
{
    public function view_login()
    {
        return view('login');

    }

    public function login_process(Request $request)
    {

        $rules = array(
            'email'    => 'required|email',
            'password' => 'required',
        );


         $validator = Validator::make($request->all(), $rules);
        // dd($validator->fails());

        if($validator->fails()){
            // dd($validator);
            return redirect()->back()->withErrors($validator);

        }else{
            $admin =   User::where('email', '=', $request->input('email'))->first();

            if($admin){
                if(Hash::check($request->input('password'),$admin->password))
                {
                    session(['admin_id' => $admin['id']]);
                    session(['email' => $admin['email']]);
                    session(['fullname' => $admin['fullname']]);

                    return redirect('dashboard')->with(['message'=>'Login Successfully']);

                }else{

                    return redirect()->back()->with(['error'=>'Invalid Password']);
                }
            }else{

                return redirect()->back()->with(['error'=>'Invalid Email']);
            }
        }
    }

        public function   dashboard()
        {

            return view('admin.dashboard');

        }

        public function logout(){

            Auth::logout();
            return redirect()->route('view-login')->with(['success'=>'Logout Successfully']);

        }






}
