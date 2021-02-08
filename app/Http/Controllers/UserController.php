<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use App\Models\UserFavorite;
use App\Models\Barber;

class UserController extends Controller
{
    
    private $loggedUser;

    public function __construct()
    {
        $this->middleware('auth:api');
        $this->loggedUser = auth()->user();
    }

    // FAZENDO LEITURA DOS DADOS DE UM USUARIO LOGADO
    public function read(){
        $array = ['error' => ''];


        $info = $this->loggedUser;
        $info->avatar = url('media/avatars/'.$info['avatar']);

        $array['data'] = $info;

        return $array;
    }


    public function addFavorite(Request $request){
        $array = ['error' => ''];

        $id_barber = $request->input('barber');

        $barber = Barber::find($id_barber);

        if($barber){
            $fav = UserFavorite::select()
            ->where('id_user', $this->loggedUser->id)
            ->where('id_barber', $id_barber)
            ->first();

            if($fav){
                //remover
                $fav->delete();

                $array['have'] = 'DELETANDO FAVORITO';
            }else{
                //adicionar
                $newFav = new UserFavorite;
                $newFav->id_user = $this->loggedUser->id;
                $newFav->id_barber = $id_barber;
                $newFav->save();

                $array['have'] = 'ADICIONANDO FAVORITO';
            }
        }else{
            $array['error'] = 'Barbeiro inexistente';
        }


        return $array;
    }

}
