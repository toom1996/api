<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/api/v1/get-user-info', function (Request $request) {
    return response()->json([
        'code' => 200
    ]);
});

Route::get('/api/v1/header/menus', function (Request $request) {
    return response()->json([
        'code' => 200,
        'data' => [
            '数码',
            '男装',
            '女装',
            '生活家居',
            'aaabcdef'
        ],
        'message' => 'ok'
    ]);
});

Route::group(['prefix' => 'web'], function () {
    Route::group(['prefix' => 'auth'], function () {
        Route::get('login', function () {
            return response()->json(['code' => 200]);
        });
    });
});
