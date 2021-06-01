<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ComicController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\EpisodeController;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\RatingController;
use App\Http\Controllers\ScheduleController;
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
    Route::get('/user/{id}', [AuthController::class, 'show']);

    Route::post('/episode/{id}', [EpisodeController::class, 'store']);
    Route::get('/episode/{id}', [EpisodeController::class, 'index']);
    Route::put('/episode/{id}', [EpisodeController::class, 'update']);
    Route::delete('/episode/{id}', [EpisodeController::class, 'destroy']);
    Route::get('/episode-id/{id}', [EpisodeController::class, 'show']);

    Route::post('/image/{id}', [ImageController::class, 'store']);
    Route::get('/image/{id}', [ImageController::class, 'index']);
    Route::post('/update-image/{id}', [ImageController::class, 'update']);
    Route::post('/delete-image/{id}', [ImageController::class, 'destroy']);

    Route::post('/comment/{id}', [CommentController::class, 'store']);
    Route::get('/comment/{id}', [CommentController::class, 'index']);

    Route::post('/rate/{id}', [RatingController::class, 'store']);

    Route::post('/schedule/{id}', [ScheduleController::class, 'store']);
    Route::get('/schedule/{id}', [ScheduleController::class, 'index']);
});

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
