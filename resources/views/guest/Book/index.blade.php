@extends('main')

@section('content')
    @foreach ($books as $book)
        <h3>"{!! $book->name !!}"</h3>
        <img src="{!! asset($book->image) !!}" class="image" title="Нажмите для увеличения изображения" width="200"
            tabindex="0" />
        <a href="{{ route('guest.books.show', ['book' => $book->id]) }}" class="btn btn-info">Info</a>
        <p>
            {!! $book->description !!}
        </p>
    @endforeach
    {{ $books->links() }}
@endsection
