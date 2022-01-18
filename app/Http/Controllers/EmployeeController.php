<?php

namespace App\Http\Controllers;
use App\Models\Employee;
use Illuminate\Http\Request;

class EmployeeController extends Controller
{
    public function add_employee()
    {

        return view('admin.add');
    }

    public function sumbit_employee(Request $request)
    {

        $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);



            if($request->hasFile('image')){
                $imageName = time().'.'.$request->image->extension();

                $request->image->move(public_path('images'), $imageName);
            }




       $submit_employee = ([

             'fullname'     => $request->fullname,
             'lastname'     => $request->lastname,
             'email'       => $request->email,
             'image'       => $imageName??NULL,
             'phone_number' => $request->phone_number,
             'password'     => bcrypt($request->password),

         ]);

        Employee::Create( $submit_employee);

        return redirect()->route('list-employee')->with(array('message'=>'Record add Succcessfully','class'=>'alert alert-success'));
    }

    public function list_employee()
    {
        $data=Employee::all();
        return view('admin.list',compact('data'));

    }


    public function edit_employee()
    {

        return view('admin/edit');

    }



    public function  delete_employee($id)
    {
      $res=Employee::where('id',$id)->delete();
      return redirect()->route('list-employee')->with(array('class'=>'alert alert-danger','message'=>'Record has been delete'));


    }

    public function  role_status($id)
    {

     $emp=Employee::where('id',$id)->first();
     if($emp->Role == 'Admin')
     {
        Employee::where('id',$id)->update(['Role'=>'User']);
     }
     else if($emp->Role == 'User')
     {
        Employee::where('id',$id)->update(['Role'=>'Admin']);
     }

     if($emp->status =='Active')
     {
         Employee::where('id',$id)->update(['status'=>'Deactive']);
     }
    else if ($emp->status == 'Deactive')
    {

        Employee::where('id',$id)->update(['status'=>'Active']);

    }
     return redirect()->back()->with(array('message'=>'success'));

    }

}
