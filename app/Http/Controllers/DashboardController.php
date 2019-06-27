<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use DB;

class DashboardController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index() 
    {
    	$orders=DB::table('orders')
    		   ->where('ischeck','=',0)
    		   ->orderBY('id','desc')
    		   ->get();

    	return view('managerhome',compact('orders'));
    } 

    public function order($id) 
    {
    	$orders=DB::table('orders')->where('id','=',$id)->first();
    	return view('order',compact('orders','id'));
    } 

    public function update($id) 
    {
    	$orders=DB::table('orders')
    	->where('id','=',$id)
    	->update(['ischeck'=>1]);
    	return redirect('/');
    } 
}
