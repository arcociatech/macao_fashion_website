<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::prefix('auth')->group(function () {
    Route::post('login', 'Api\Auth\LoginSignupController@login');
    Route::post('user-register','Api\Auth\LoginSignupController@register');
    Route::post('logout','Api\Auth\AuthController@logout')->middleware('auth:api');
});

// dd(1);

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
