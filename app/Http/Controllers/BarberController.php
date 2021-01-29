<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Barber;
use App\Models\BarberPhoto;
use App\Models\BarberService;
use App\Models\BarberTestimonial;
use App\Models\BarberAvailability;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class BarberController extends Controller
{

    private $loggerUser;

    public function __construct(){
        $this->middleware('auth:api');
        $this->loggerUser = auth()->user();
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
        $offset = $request->input('offset');
        if(!$offset){
            $offset = 0;
        }


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
            //->havingRaw('distance < ?', [4000])
            ->orderBy('distance', 'ASC')
            ->offset($offset)
            ->limit(2)
            ->get();

        foreach($barbers as $bkey => $bvalue){
            $barbers[$bkey]['avatar'] = url('media/avatars/'.$barbers[$bkey]['avatar']);
        }

        $array['data'] = $barbers;
        $array['loc'] = 'São Paulo';

        return $array;
    }

    public function one($id){
        $array = ['eror' => ''];

        $barber = Barber::find($id);

        if($barber){

            $barber['avatar'] = url('media/avatars/'.$barber['avatar']);
            $barber['favorited'] = false;
            $barber['photos'] = [];
            $barber['services'] = [];
            $barber['testimonials'] = [];
            $barber['available'] = [];

            //pegando as fotos do barbeiro
            $barber['photos'] = BarberPhoto::select(['id', 'url'])
                ->where('id_barber', $barber->id)
                ->get();

            foreach($barber['photos'] as $bpkey => $bpvalue){
                $barber['photos'][$bpkey]['url'] = url('media/uploads/'.$barber['photos'][$bpkey]['url']);
            }

            //pegando os serviços do barbeiro
            $barber['services'] = BarberService::select(['id', 'name', 'price'])
                ->where('id_barber', $barber->id)
                ->get();

            //pegando os depoimentos sobre o barbeiro
            $barber['testimonials'] = BarberTestimonial::select(['id', 'name', 'rate', 'body'])
                ->where('id_barber', $barber->id)
                ->get();

            //pegando as disponibilidade do barbeiro
            $barber['available'] = BarberAvailability::where('id_barber', $barber->id)->get();

            
            $array['data'] = $barber;

        }else{
            $array['error'] = 'Barbeiro não existe';
            return $array;
        }

        return $array;
    }


    //implementando barbeiros aleatorios
    // public function createRandom(){
    //     $array = ['error' => ''];

    //     for($q=0; $q<15; $q++){
    //         $names = ['Móises', 'Cleber', 'Edvan', 'Leno', 'Marcos', 'Luiz', 'Eneldon', 'Pablo', 'Fernando', 'Diego', 'Adriano', 'Luan', 'Caio', 'Fabio', 'Murilo' ];
    //         $lastnames = ['Santos', 'Araujo', 'Silva', 'Miguel', 'Santana', 'Carlos', 'Pereira', 'Fiorentino', 'Cezar', 'Jesus', 'Coveiro', 'Gomes', 'Leal', 'Souza', 'Rosário'];

    //         $servicos = ['Corte', 'Pintura', 'Aparação', 'Enfeite'];
    //         $servicos2 = ['Cabelo', 'Unha', 'Pernas', 'Sobrancelhas'];

    //         $depos = [
    //             'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
    //             'Incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.',
    //             'Exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
    //             'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat',
    //             'Nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    //         ];

    //         $newBarber = new Barber();
    //         $newBarber->name = $names[rand(0, count($names)-1)].' '.$lastnames[rand(0, count($lastnames)-1)];
    //         $newBarber->avatar = rand(1,4).'.png';
    //         $newBarber->stars = rand(2,4).'.'.rand(0,9);
    //         $newBarber->latitude = '-23.5'.rand(0,9).'30907';
    //         $newBarber->longitude = '-46.6'.rand(0,9).'82795';
    //         $newBarber->save();

    //         $ns = rand(3,6);

    //         for($w=0; $w<4; $w++){
    //             $newBarberPhoto = new BarberPhoto();
    //             $newBarberPhoto->id_barber = $newBarber->id;
    //             $newBarberPhoto->url = rand(1,5).'.png';
    //             $newBarberPhoto->save();
    //         }

    //         for($w=0; $w<$ns; $w++){
    //             $newBarberService = new BarberService();
    //             $newBarberService->id_barber = $newBarber->id;
    //             $newBarberService->name = $servicos[rand(0, count($servicos)-1)].' de '.$servicos2[rand(0, count($servicos2)-1)];
    //             $newBarberService->price = rand(1, 99).'.'.rand(0, 100);
    //             $newBarberService->save();
    //         }

    //         for($w=0; $w<3; $w++){
    //             $newBarberTestimonial = new BarberTestimonial();
    //             $newBarberTestimonial->id_barber = $newBarber->id;
    //             $newBarberTestimonial->name = $names[rand(0, count($names)-1)].' '.$lastnames[rand(0, count($lastnames)-1)];
    //             $newBarberTestimonial->rate = rand(2,4).'.'.rand(0,9);
    //             $newBarberTestimonial->body = $depos[rand(0, count($depos)-1)];
    //             $newBarberTestimonial->save();
    //         }

    //         for($e=0; $e<4; $e++){
    //             $rAdd = rand(7,10);
    //             $hours = [];
    //             for($r=0; $r<8; $r++){
    //                 $time = $r + $rAdd;
    //                 if($time < 10){
    //                     $time = '0'.$time;
    //                 }
    //                 $hours[] = $time.':00';   
    //             }

    //             $newBarberAvail = new BarberAvailability();
    //             $newBarberAvail->id_barber = $newBarber->id;
    //             $newBarberAvail->weekday = $e;
    //             $newBarberAvail->hours = implode(',', $hours);
    //             $newBarberAvail->save();
    //         }


    //     }

    //     return $array;

    // }

}
