<?php

use Illuminate\Http\Request;

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

Route::group([
    'prefix' => 'halomas'
], function () {    
    Route::post('gen_token', 'ApiController@login');
    Route::post('logout', 'ApiController@logout');
    Route::post('refresh', 'ApiController@refresh');
    Route::post('me', 'ApiController@me');
    Route::post('complain' , 'ApiController@complain_halomas');
    Route::get('kirim_complain/{id}' , 'ApiController@kirim_fms');
});
