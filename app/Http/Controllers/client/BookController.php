<?php

namespace App\Http\Controllers\client;

use App\Http\Controllers\Controller;
use App\Models\Book;
use Illuminate\Support\Facades\DB;

class BookController extends Controller
{

    public function index()
    {
        $books = Book::with('genre')->latest()->paginate(5);
        return view('client.book.index', compact('books'));
    }


    public function show(Book $Book)
    {
      
        $book = Book::with('reviews')->where('id', $Book->id)->first();
        return view('client.book.info', compact('book'));
    }
    //далее делаем так , чтоб можно было почитать отзывы к книге 
    //

}
