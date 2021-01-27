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



    private function searchGeo($address){
        $key = env('MAPS_KEY', null);

        $address = urlencode($address);

        $url = 'https://maps.googleapis.com/maps/api/geocode/json?address='.$address.'&key'.$key;
    
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $res = curl_exec($ch);
        curl_close($ch);


        return json_decode($res, true);
    
    }


    public function list(Request $request){
        $array = ['error' => ''];

        $lat = $request->input('lat');
        $ln = $request->input('lng');
        $city = $request->input('city');


        if(!empty($city)){
            $res = $this->searchGeo($city);

            if(count($res['results']) > 0){
                $lat = $res['results'][0]['geometry']['location']['lat'];
                $lng = $res['results'][0]['geometry']['location']['lng'];
            }
        }elseif(!empty($lat) && !empty($lng)){
            $res = $this->searchGeo($lat.','.$lng);

            if(count($res['results']) > 0){
                $city = $res['results'][0]['formatted_address'];
            }

        }else{
            $lat = '-23.5489';
            $lng = '-46.6388';
            $city = 'São Paulo';
        }


        
        $barbers = Barber::select(Barber::raw('*, SQRT(
            POW(69.1 * (latitude - '.$lat.'), 2) +
            POW(69.1 * ('.$lng.' - longitude) * COS(latitude / 57.3), 2)) AS distance'))
            ->havingRaw('distance < ?', [4000])
            ->orderBy('distance', 'ASC')
            ->get();

        foreach($barbers as $bkey => $bvalue){
            $barbers[$bkey]['avatar'] = url('media/avatars/'.$barbers[$bkey]['avatar']);
        }

        $array['data'] = $barbers;
        $array['loc'] = 'São Paulo';

        return $array;
    }
}
