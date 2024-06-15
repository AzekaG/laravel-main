<?php

namespace App\Http\Controllers\guest;

use App\Http\Controllers\Controller;
use App\Models\Book;
use Illuminate\Http\Request;

class BookController extends Controller
{

    public function index()
    {
     
        $books = Book::with('genre')->latest()->paginate(5);
        return view('guest.book.index', compact('books'));
    }


    public function show(Book $book)
    {

        return view('guest.book.show', compact('book'));
    }
}
