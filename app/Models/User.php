<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Auth;
use Laravel\Sanctum\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable, HasRoles;

    // protected $with = ['profile','roles'];
    protected $with = ['profile','roles'];

    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function favorites()
    {
        return $this->belongsToMany(Service::class, 'favorites', 'user_id', 'service_id')->withTimeStamps();
    }

    public function comments()
    {
        return $this->hasMany(Comment::class);
    }

    public function transactions()
    {
        return $this->hasMany(Transaction::class);
    }

    // Test profile
    public function transaction()
    {
        return $this->hasMany(Transaction::class,'penjual_id','id');
    }

    public function services()
    {
        return $this->hasMany(service::class);  
        // return $this->hasMany(Service::class, 'favorites', 'user_id', 'service_id')->withTimeStamps();
    }

    public function profile()
    {
        return $this->hasOne(Profile::class);
    }

    
}
