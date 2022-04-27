<?php

use Illuminate\Http\Request;
// use app\Models\products;
use App\Http\Controllers\API\ProductAuthController;
use App\Http\Controllers\API\ProductController;
use App\Http\Controllers\API\ProductDetailsController;
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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::group(['middleware' => 'auth:sanctum'], function () {
Route::get('joinanauth', [ProductDetailsController::class, 'jointritable']);
Route::get('productsauth', [ProductController::class, 'index']);
Route::get('dataauth', [ProductDetailsController::class, 'index']);
Route::get('orderauth', [ProductDetailsController::class, 'productordering']);
   });

Route::post('/login', [ProductAuthController::class, 'login']);
Route::get('joinan', [ProductDetailsController::class, 'jointritable']);
Route::get('products', [ProductController::class, 'index']);
Route::get('data', [ProductDetailsController::class, 'index']);
Route::get('order', [ProductDetailsController::class, 'productordering']);


