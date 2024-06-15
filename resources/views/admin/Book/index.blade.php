@extends('main')

@section('content')
    <a href="{{ route('admin.books.create') }}" class="btn btn-info">Добавить новую книгу</a>
    @foreach ($books as $book)
        <h3>"{!! $book->name !!}"</h3>
        <img src="{!! asset($book->image) !!}" class="image" title="Нажмите для увеличения изображения" width="200"
            tabindex="0" />
        <a href="{{ route('admin.books.show', ['Book' => $book->id]) }}" class="btn btn-success">Просмотреть полную
            информацию</a>
        <a href="{{ route('admin.books.edit', ['Book' => $book->id]) }}" class="btn btn-info">Редактировать</a>

        {!! Form::model($book, ['route' => ['admin.books.destroy', $book->id], 'method' => 'delete']) !!}
        {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
        {!! Form::close() !!}
        <p>
            Жанр: {!! $book->genre->name !!}
        </p>
        <p>
            Описание:
            {!! $book->description !!}
        </p>
        <hr>
    @endforeach
    {{ $books->links() }}
@endsection
