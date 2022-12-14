<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Favorite extends Model
{
    use HasFactory;
    

    // TEST BOOKMAR
    public function services()
    {
        return $this->hasMany(Service::class);
        // return $this->hasMany(Service::class, 'favorites', 'user_id', 'service_id')->withTimeStamps();
    }
}
