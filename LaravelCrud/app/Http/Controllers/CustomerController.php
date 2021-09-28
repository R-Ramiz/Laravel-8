<?php

namespace App\Http\Controllers;
use DB;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    function index()
    {
        $data = DB::table('customers')->get();
        return view('crud.index',['customer_list'=>$data]);
    }

    function crud_save(Request $request)
    {
       $request->validate([
           'name'=>'required',
           'email'=>'required|email|unique:customers',
           'mobile'=>'required|min:10|max:10'
       ]);

       $query = DB::table('customers')->insert([
           'name'=>$request->name,
           'email'=>$request->email,
           'mobile'=>$request->mobile,
           'created_at'=>date('Y-m-d h:i:s')
       ]);

       if($query){
           return back()->with('Success','Inserted Successfully');
       }else{
           return back()->with('fail','Something went wrong !!');
       }
    }

    function edit($id){
        $data = DB::table('customers')->where('id',$id)->first();
        return view('crud.edit',['data'=>$data]);
    }
    function crud_update(Request $request)
    {
       $request->validate([
           'name'=>'required',
           'email'=>'required|email|unique:customers',
           'mobile'=>'required|min:10|max:10'
       ]);

       $query = DB::table('customers')
                    ->where('id',$request->id)
                    ->update([
           'name'=>$request->name,
           'email'=>$request->email,
           'mobile'=>$request->mobile,
           'created_at'=>date('Y-m-d h:i:s')
       ]);

       if($query){
           return redirect('crud')->with('Success','Updated Successfully');
       }else{
           return redirct('crud')->with('fail','Something went wrong !!');
       }
    }

    function delete($id){
        $query = DB::table('customers')->where('id',$id)->delete();
        
        if($query){
            return redirect('crud')->with('Success','Deleted Successfully');
        }else{
            return redirct('crud')->with('fail','Something went wrong !!');
        }
    }

}
