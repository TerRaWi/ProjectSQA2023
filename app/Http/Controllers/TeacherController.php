<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TeacherController extends Controller
{
    private function index(){
        return view('dashboards.users.index');
        //return view('dashboards.users.index');
        //return view('home');
       }
    
       /*function profile(){
           return view('dashboards.teachers.profile');
       }
       function settings(){
           return view('dashboards.teachers.settings');
       }*/
}
