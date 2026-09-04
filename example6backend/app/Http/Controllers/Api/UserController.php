<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\AuthUserRequest;
use App\Http\Requests\StoreUserRequest;
use App\Http\Resources\UserResource;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function storeUser(StoreUserRequest $request)
    {
        if ($request->validated()) {
            $data = $request->validated();
            User::create($data);
            return response()->json([
                'message' => 'User created successfully'
            ]);
        }
    }

    public function auth(AuthUserRequest $request)
    {
        if ($request->validated()) {
            $user = User::whereEmail($request->email)->first();
            if (!$user && !Hash::check($request->password, $user->password)) {
                return response()->json([
                    'message' => 'These credentials do not match our records'
                ]);
            } else {
                return response()->json([
                    'user' => UserResource::make($user),
                    'access_token' => $user->createToken('new_user')->plainTextToken,
                    'message' => 'Logged in successfully'
                ]);
            }
        }
    }

    public function logout(Request $request)
    {
        $request->user()->currentAccessToken()->delete();
        return response()->json([
            'message' => 'Logged Out Succesfully'
        ]);
    }

    public function updateUser(Request $request)
    {

        $request->validate([
            'profile_image' => 'required|image|mimes:png,jpg,jpeg,webp|max:2048'
        ]);

        if ($request->has('profile_image')) {
            if (File::exists(asset($request->user()->profile_image))) {
                File::delete(asset($request->user()->profile_image));
            }

            $file = $request->file('profile_image');
            $profile_image_name = time() . '-' . $file->getClientOriginalName();
            $file->storeAs('images/users', $profile_image_name, 'public');

            $request->user()->update([
                'profile_image' => 'storage/images/users' . $profile_image_name
            ]);

            return response()->json([
                'user' => UserResource::make($request->user),
                'message' => 'Profile image changed successfully'
            ]);
        } else {

            $request->user()->update([
                'address' => $request->address,
                'country' => $request->country,
                'zip_code' => $request->zip_code,
                'profile_completed' => 1
            ]);

            return response()->json([
                'user' => UserResource::make($request->user),
                'message' => 'Profile image changed successfully'
            ]);
        }
    }
}
