<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProfileRequest;
use App\Http\Resources\ProfleResource;
use App\Models\Profile;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;


class ProfileController extends Controller
{
    public function index()
    {
        $user = User::where('id',auth()->user()->id)->with('transaction', function ($query) {
            // return $query->where('status', '=', 'Upcoming');
            return $query->where('penjual_id', auth()->user()->id)->where('status', '=', 'Upcoming');
        })->get();

        // $user = User::where('id',auth()->user()->id)->with('transaction')->get();
        return new ProfleResource(true, 'Profile!', $user);
    }

    public function show($id)
    {
        $profile = User::where('id', $id)->with('profile')->get();

        return new ProfleResource(true, 'Profile!', $profile);
    }

    public function store(ProfileRequest $request)
    {

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $image->storeAs('public/user', $image->hashName());

            $profile = Profile::create($request->all());
        } else {
            $profile = Profile::create($request->all());
        }
        return new ProfleResource(true, 'Profile Berhasil Ditambahkan!', $profile);
    }

    public function update(Request $request, $id)
    {
        $profile = Profile::where('user_id', $id)->firstOrFail();

        if ($request->hasFile('image')) {
            $image = $request->file('image');

            $slice = Str::after($profile->image, 'storage/user/');
            Storage::delete('public/user/' . $slice);

            $image->storeAs('public/user', $image->hashName());

            $profile->update([
                // 'user_id' => $request->user_id,
                'image' =>  'storage/user/' . $image->hashName(),
                // 'birthday' => $request->birthday,
                // 'phone' => $request->phone,
                // 'gender' => $request->gender,
                // 'address' => $request->address,
            ]);
        } else {
            $profile->update([
                'user_id' => $request->user_id,
                'birthday' => $request->birthday,
                'phone' => $request->phone,
                'gender' => $request->gender,
                'address' => $request->address,
            ]);
        }

        return new ProfleResource(true, 'Profile berhasil diupdate!', $profile);
    }
}
