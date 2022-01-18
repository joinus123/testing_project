<?php

use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\EmployeeController;
use Illuminate\Support\Facades\Route;

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

// Route::get('/', function () {
//     return view('login');
// });
Route::get('/',[LoginController::class ,'view_login'])->name('view-login');
Route::get('/view-register',[RegisterController::class ,'view_register'])->name('view-register');
Route::post('/register-process',[RegisterController::class ,'register_process'])->name('register-process');
Route::post('/login_process',[LoginController::class ,'login_process'])->name('login_process');
Route::get('/dashboard',[LoginController::class ,'dashboard'])->name('dashboard');
Route::get('/add-employee',[EmployeeController::class ,'add_employee'])->name('add-employee');
Route::get('/logout',[LoginController::class ,'logout'])->name('logout');
Route::post('/sumit-employee',[EmployeeController::class,'sumbit_employee'])->name('submit-employee');
Route::get('/list-employee/',[EmployeeController::class,'list_employee'])->name('list-employee');
Route::get('/edit-employee/{id}',[EmployeeController::class,'edit_employee'])->name('edit-employee');
Route::get('/delete-employee/{id}',[EmployeeController::class,'delete_employee'])->name('delete-employee');
Route::get('role/{id}',[EmployeeController::class,'role_status'])->name(' ');

