<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\UserController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\BarberController;

Route::get('/ping', function(){
    return ['pong' => true ];
});


Route::get('/401', [AuthController::class, 'unauthorized'])->name('login'); //FEITO

Route::post('/auth/login', [AuthController::class, 'login']); //FEITO
Route::post('/auth/logout', [AuthController::class, 'logout']); //FEITO
Route::post('/auth/refresh', [AuthController::class, 'refresh']); //FEITO
Route::post('/user', [AuthController::class, 'create']); //FEITO

Route::get('/user', [UserController::class, 'read']); // FEITO 
Route::put('/user', [UserController::class, 'update']); 
Route::get('/user/favorites', [UserController::class, 'getFavorites']); // FEITO
Route::post('/user/favorite', [UserController::class, 'toogleFavorite']); // FEITO
Route::get('/user/appointments', [UserController::class, 'getAppointments']); //FEITO

Route::post('/barber', [BarberController::class, 'create']); // FEITO

Route::get('/barbers', [BarberController::class, 'list']); //FEITO
Route::get('/barber/{id}', [BarberController::class, 'one']); // FEITO
Route::post('/barber/{id}/appointments', [BarberController::class, 'setAppointment']); //FEITO

Route::get('/search', [BarberController::class, 'search']); //FEITO

//criando barbeiros aleatorios
// Route::get('/random', [BarberController::class, 'createRandom']);