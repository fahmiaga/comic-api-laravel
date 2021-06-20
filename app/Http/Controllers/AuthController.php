<?php

namespace App\Http\Controllers;

use App\Models\User;
use Cloudinary\Cloudinary as CloudinaryCloudinary;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Http\Request;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;
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
            'profile_image' => 'default.jpg',
            'role_id' => 2
        ]);

        $token = $user->createToken('token')->plainTextToken;

        $response = [
            'message' => 'Successfully register',
            'status' => 200,
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
            ], 200);
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
                    'status' => 200,
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

        $old_image = $user->image_name;

        if ($old_image != null) {
            Cloudinary::destroy($old_image);
        }

        $images = $request->file('profile_image');

        $img_link = Cloudinary::upload($images->getRealPath())->getSecurePath();

        $img_name = Cloudinary::getPublicId();

        $user->update([
            'name' => $request->name,
            'profile_image' => $img_link,
            'image_name' => $img_name
        ]);

        $response = [
            'message' => 'Profile successfully updated',
            'status' => 200,
            'data' => $user
        ];

        return response()->json($response, 200);
    }

    public function show($id)
    {
        $user = User::find($id);

        $response = [
            'message' => 'success',
            'status' => 200,
            'data' => $user
        ];
        return  response()->json($response, 200);
    }
}
