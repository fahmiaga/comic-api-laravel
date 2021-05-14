<?php

namespace App\Http\Controllers;

use App\Models\User;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $fields = $request->validate([
            'name' => 'required|string',
            'email' => 'required|string|unique:users,email',
            'password' => 'required|string|confirmed',
        ]);

        $user = User::create([
            'name' => $fields['name'],
            'email' => $fields['email'],
            'password' => bcrypt($fields['password']),
            'profile_image' => 'default.jpg'
        ]);

        $token = $user->createToken('token')->plainTextToken;

        $response = [
            'message' => 'Successfully register',
            'user' => $user,
            'token' => $token,
        ];

        return response()->json($response, Response::HTTP_OK);
    }

    public function logout(Request $request)
    {
        try {
            $request->user()->currentAccessToken()->delete();
            return response()->json([
                'status' => 'true',
                'message' => 'Logout Success',
                'data' => []
            ], 422);
        } catch (\Exception $e) {
            return response()->json([
                'status' => 'false',
                'message' => $e->getMessage(), 'data' => []
            ], 500);
        }
    }

    public function login(Request $request)
    {
        $fields = $request->validate([
            'email' => 'required|string',
            'password' => 'required',
        ]);

        $user = User::where('email', $fields['email'])->first();

        if (!$user) {
            return response([
                'message' => 'User not exist'
            ], 401);
        } else {
            if (!Hash::check($fields['password'], $user->password)) {
                return response([
                    'message' => 'password not match'
                ], 401);
            } else {
                $token = $user->createToken('token')->plainTextToken;

                $response = [
                    'message' => 'Successfully login',
                    'user' => $user,
                    'token' => $token,
                ];

                return response()->json($response, Response::HTTP_OK);
            }
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function updateProfile(Request $request)
    {
        $user = User::find($request->user()->id);

        $fileName = time() . '.' . $request->profile_image->extension();

        $request->file('profile_image')->move('storage/profileImg', $fileName);

        if ($user->profile_image != 'default.jpg') {
            $userImg = $user->profile_image;
            $filePath = public_path('storage/profileImg/' . $userImg);
            unlink($filePath);
        }

        $user->update([
            'name' => $request->name,
            'profile_image' => $fileName
        ]);

        $response = [
            'message' => 'Profile successfully updated',
            'data' => $user
        ];

        return response($response, 200);
    }
}
