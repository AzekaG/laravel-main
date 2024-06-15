<?php

use App\Http\Controllers\admin\BookController as AdminBookController;
use App\Http\Controllers\admin\FeedbackController;
use App\Http\Controllers\admin\GenreController as AdminGenreController;
use App\Http\Controllers\admin\ReviewController;
use App\Http\Controllers\admin\UserController as AdminUserController;

use App\Http\Controllers\client\BookController as ClientBookController;
use App\Http\Controllers\client\GenreController as ClientGenreController;
use App\Http\Controllers\client\ReviewController as ClientReviewController;
use App\Http\Controllers\client\UserController as ClientUserController;

use App\Http\Controllers\guest\BookController as GuestBookController;

use App\Models\Review;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;



Route::resource('/admin/Book', AdminBookController::class)->names('admin.books');
Route::resource('/admin/Genre', AdminGenreController::class)->names('admin.genre');
Route::resource('/admin/User', AdminUserController::class)->names('admin.user');
Route::delete('/admin/review/{review}', [ReviewController::class, 'destroy'])->name('admin.review.destroy');


Route::resource('/client/Book', ClientBookController::class)->names('client.books');
Route::resource('/client/Genre', ClientGenreController::class)->names('client.genre');
Route::resource('/client/User', ClientUserController::class)->names('client.user');
Route::resource('/client/Review', ClientReviewController::class)->names('client.review');



Route::get('/guest/Book/', [GuestBookController::class, 'index'])->name('guest.books.index');
Route::get('/guest/Book/{book}', [GuestBookController::class, 'show'])->name('guest.books.show');



Auth::routes();

Route::get('/', [App\Http\Controllers\HomeController::class, 'index']);
