<?php

namespace App\Http\Controllers\v1\web\auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): \Illuminate\Http\JsonResponse
    {

        return response()->json(['code' => 100]);
        //
    }
}
