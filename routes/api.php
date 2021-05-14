<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ComicController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


// Route::post('/comics', [ComicController::class, 'store']);
// Route::get('/comics', [ComicController::class, 'store']);

// Route::resource('comics', ComicController::class);

// Route::get('/comics/search/{title}', [ComicController::class, 'search']);

// public route
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

// protected route
Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::resource('comics', ComicController::class);

    Route::post('/comics/{id}', [ComicController::class, 'update']);


    Route::get('/comics/search/{title}', [ComicController::class, 'search']);

    Route::post('/update-profile', [AuthController::class, 'updateProfile']);

    Route::post('/logout', [AuthController::class, 'logout']);
});

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
