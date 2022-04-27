<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class ProductAuthController extends Controller
{
    public function login(Request $request)
    {
        $user = User::where(['email' => $request->email])->first();
        if (!$user) {
            return response()->json([
                'message' => 'unauthorized'
            ], 401);
        }
        $token = $user->createToken('token-name')->plainTextToken;
        return response()->json([
            'message' => 'success',
            'data' =>  $user,
            'token' => $token
        ], 200);
    }
}