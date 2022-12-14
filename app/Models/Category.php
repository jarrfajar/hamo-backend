<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Category extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function services()
    {
        return $this->hasMany(Service::class);
        // return $this->hasMany(Service::class, 'favorites', 'user_id', 'service_id')->withTimeStamps();
    }

    public function transactions()
    {
        return $this->hasMany(Transaction::class);
    }

    // public function favorite()
    // {
    //     // $userId = Auth::user() ? Auth::user()->id : $this->id;
    //     // return $this->hasMany(Favorite::class)->where('user_id', $userId);
    //     return $this->hasMany(Favorite::class);
    // }
}
