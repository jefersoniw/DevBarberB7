<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Barber;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class BarberController extends Controller
{
    public function __construct(){
        $this->middleware('auth:api');
    }

    public function create(Request $request){
        $array = ['error' => ''];

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'stars' => 'required',
            'longitude' => 'required',
            'latitude' => 'required'
        ]);

        $name = $request->input('name');
        $stars = $request->input('stars');
        $longitude = $request->input('longitude');
        $latitude = $request->input('latitude');


        if(!$validator->fails()){

            $barber = new Barber();
            $barber->name = $name;
            $barber->stars = $stars;
            $barber->longitude = $longitude;
            $barber->latitude = $latitude;
            $barber->save();

            $array['data'] = $barber;

        }else{
            $array['error'] = 'Dados incompletos';
        }


        return $array;
    }

    public function list(){
        $array = ['error' => ''];
        
        $barbers = Barber::all();

        foreach($barbers as $bkey => $bvalue){
            $barbers[$bkey]['avatar'] = url('media/avatars/'.$barbers[$bkey]['avatar']);
        }

        $array['data'] = $barbers;
        $array['loc'] = 'São Paulo';

        return $array;
    }
}
