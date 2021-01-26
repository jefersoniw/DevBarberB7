<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

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

}
