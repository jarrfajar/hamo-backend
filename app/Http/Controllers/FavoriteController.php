<?php

namespace App\Http\Controllers;

use App\Models\Service;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FavoriteController extends Controller
{
    public function myFavorites()
    {
        $myFavorites = Auth::user()->favorites;
        
        return response()->json([
            'data' => $myFavorites,
        ]);
    }
    public function favorite(Service $service)
    {
        Auth::user()->favorites()->attach($service->id);

        return response()->json([
            'message' => 'bookmar berhasil',
        ]);
    }

    public function unfavorite(Service $service)
    {
        Auth::user()->favorites()->detach($service->id);

        return response()->json([
            'message' => 'unbookmar berhasil',
        ]);
    }
}
