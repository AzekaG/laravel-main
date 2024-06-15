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
        <a href="{{ route('client.books.index') }}" class="btn btn-info">Назад</a>
        <a href="{{ route('client.review.create', ['book' => $book]) }}" class="btn btn-info">Создать новый отзыв</a>
        <h2>Отзывы</h2>

        @foreach ($book->reviews->reverse() as $review)
            <div class="containerReview">
                <img src="{!! asset($review->user->pathimage) !!}" alt="Avatar" style="width:90px">
                <p><span>{!! $review->user->name !!}</span> {!! $review->user->email !!}</p>
                <p>{!! $review->comment !!}</p>
                <p>{!! $review->updated_at !!}</p>
                 @auth
        @if(Auth::user()->id === $review->user_id)
            <a href="{{ route('client.review.edit' , ['Review' => $review->id]  ) }}" class="btn btn-info">редактировать</a>

        @endif
        @endauth
            </div>
        @endforeach

    </div>
@endsection
