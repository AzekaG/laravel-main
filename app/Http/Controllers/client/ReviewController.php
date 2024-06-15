<?php

namespace App\Http\Controllers\client;

use App\Http\Controllers\Controller;
use App\Models\Book;
use App\Models\Review;
use Illuminate\Http\Request;

class ReviewController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request)
    {
      $book = Book::all()->where('id', $request->book)->first();
      return view('client.Review.create' , compact('book'));
    }
    public function store(Request $request)
    {   
     
        Review::create($request->all());
        $book = Book::all()->where('id' , $request->book_id)->first();
        return to_route('client.books.show', ['Book' => $book]);
    }
    public function edit(Request $request , Review $Review)
    {
        
        return view('client.review.edit', compact('Review'));
    }
    public function update(Request $request)
    {

        Review::create($request->all());
        $book = Book::all()->where('id', $request->book_id)->first();
        return to_route('client.books.show', ['Book' => $book]);
    }
    
   
}
