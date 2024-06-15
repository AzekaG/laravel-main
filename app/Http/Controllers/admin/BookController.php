<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Book;
use App\Models\Genre;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $books = Book::with('genre')->latest()->paginate(5);
        return view('admin.book.index', compact('books'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $genres = Genre::all()->pluck('name', 'id');
        return view('admin.book.create', compact('genres'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $book = Book::create($request->all());
        if ($request->image) {
            //здесь мы сохраняем файл
            $path = $request->image->store("img");
            $book->image = 'storage/' . $path;
            $book->save();
        }
        return to_route('admin.books.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Book $Book)
    {
        $Book = Book::with('reviews')->where('id', $Book->id)->first();
        return view('admin.book.info', compact('Book'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Book $Book)
    {
        $genres = Genre::all()->pluck('name', 'id');
        return view('admin.book.edit', compact("genres", "Book"));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Book $Book)
    {

        if ($request->image) {
            $path = $request->image->store("img");
            $Book->image = 'storage/' . $path;
        }
        $Book->update($request->all());
        return view('admin.book.info', compact('Book'));
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Book $Book)
    {
        
        $Book->delete();
        return to_route('admin.books.index');
    }
}
