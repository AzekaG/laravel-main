@extends('main')

@section('content')
    <div class="container">
        <div class="post">
            <div class="post-header">
                <div class="post-image">
                    <img src="{{ asset($book->image) }}">
                </div>
                <h1>{{ $book->name }} </h1>
            </div>
            <div class="post-content">
                <h3>Описание : </h3>
                <p>{{ $book->description }}
                </p>
            </div>
        </div>
        <a href="{{ route('guest.books.index') }}" class="btn btn-info">Назад</a>



    </div>
@endsection
