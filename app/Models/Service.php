<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Service extends Model
{
    use HasFactory;
    protected $guarded = [];
    // protected $with = ['favorite','category'];
    protected $with = ['category','user','favorite'];


    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function comments()
    {
        return $this->hasMany(Comment::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function transactions()
    {
        return $this->hasMany(Transaction::class);
    }

    public function favorited()
    {
        // return (bool) Favorite::where('user_id', Auth::id())->where('service_id', $this->id)->first();
        return (bool) Favorite::where('user_id', Auth::id())->where('service_id', $this->id)->first();
    }

    // TEST BOOKMAR
    public function favorite()
    {
        $userId = Auth::user() ? Auth::user()->id : $this->id;
        return $this->hasMany(Favorite::class)->where('user_id', $userId);
    }
}
