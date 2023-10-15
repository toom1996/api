<?php

namespace App\Http\Controllers\v1\web;

use App\Common\httpCode;
use App\Http\Controllers\Controller;
use App\Http\Requests\v1\web\auth\LoginRequest;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{

    public function login(LoginRequest $request): \Illuminate\Http\JsonResponse
    {
        $request->validated();
        $user = User::select(['email', 'id', 'name', 'avatar'])->where('email', $request->input('username'))->first();
        if (!$user) {
            return response()->json(['code' => HttpCode::FAILED]);
        }

        $token = $user->createToken($request->input('username'));
        return response()->json(['code' => HttpCode::OK, 'info' => [
            'email' => $user->email,
            'name' => $user->name,
            'avatar' => $user->avatar,
        ], 'token' => $token]);
    }


    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
