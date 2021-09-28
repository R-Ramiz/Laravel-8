<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomerController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('crud',[CustomerController::class,'index']);
Route::post('crud_save',[CustomerController::class,'crud_save']);

Route::get('edit/{id}',[CustomerController::class,'edit']);

Route::post('crud_update',[CustomerController::class,'crud_update'])->name('crud_update');

Route::get('delete/{id}',[CustomerController::class,'delete']);
