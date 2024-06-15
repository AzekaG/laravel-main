@extends('main')

@section('content')
    <div class="container">
        <div class="post">
            <div class="post-header">
                <div class="post-image">
                    <img src="{{ asset($Book->image) }}" alt="no photo">
                </div>
                <h1>{{ $Book->name }} </h1>
            </div>
            <div class="post-content">
                <h3>Описание : </h3>
                <p>{{ $Book->description }}
                </p>
            </div>
        </div>
         <a href="{{ route('admin.books.index') }}" class="btn btn-info">Назад</a>
       {{-- <a href="{{ route('admin.review.create', ['book' => $book]) }}" class="btn btn-info">Создать новый отзыв</a> --}}
        <h2>Отзывы</h2>

        @foreach ($Book->reviews->reverse() as $review)
            <div class="containerReview">
                <img src="{!! asset($review->user->pathimage) !!}" alt="Avatar" style="width:90px">
                <p><span>{!! $review->user->name !!}</span> {!! $review->user->email !!}</p>
                <p>{!! $review->comment !!}</p>
                <p>{!! $review->updated_at !!}</p>
        @auth
        @if(Auth::user()->id === $review->user_id)
            <a href="{{ route('admin.review.edit') }}" class="btn btn-info">редактировать</a>

        @endif
        @endauth
        {!! Form::model($review, ['route' => ['admin.review.destroy', $review->id], 'method' => 'delete']) !!}
        {!! Form::submit('Delete', ['class' => 'btn btn-primary']) !!}
        {!! Form::close() !!}
            </div>
        @endforeach

    </div>
@endsection
