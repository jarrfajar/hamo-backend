<?php

use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\Api\ServiceController;
use App\Http\Controllers\BookingserviceController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ConfirmController;
use App\Http\Controllers\FavoriteController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\TransactionController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
    
// });

//Protecting Routes
Route::group(['middleware' => ['auth:sanctum']], function () {
    // Route::get('/profile', function(Request $request) {
    //     return auth()->user();
    // });

    Route::post('favorite/{service}', [FavoriteController::class, 'favorite']);
    Route::post('unfavorite/{service}', [FavoriteController::class, 'unfavorite']);
    Route::get('/bookmarks', [FavoriteController::class, 'myFavorites']);

    // API route for logout user
    Route::post('/logout', [AuthController::class, 'logout']);
    
    Route::apiResource('/category', CategoryController::class);
    
    Route::apiResource('/service', ServiceController::class);

    Route::apiResource('/trasaction', TransactionController::class);

    Route::apiResource('/trasaction-booking', BookingserviceController::class);

    Route::get('/confirm',[ConfirmController::class,'index']);
    Route::put('/confirm/{id}',[ConfirmController::class,'update']);

    Route::apiResource('/profile', ProfileController::class)->parameters([
        'profiles' => 'user_id',
    ]);
});

//API route for register new user
Route::post('/register', [AuthController::class, 'register']);
//API route for login user
Route::post('/login', [AuthController::class, 'login']);



