<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Book;
use App\Models\Review;
use Illuminate\Http\Request;

class ReviewController extends Controller
{

    public function edit(string $id)
    {
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Review $Review)
    {
        return view('admin.review.edit', compact('Review'));
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Review $Review)
    {
        $Review->delete();

        $book = Book::all()->where('id', $Review->book_id)->first();
        return to_route('admin.books.show', ['Book' => $book]);
    }
}
