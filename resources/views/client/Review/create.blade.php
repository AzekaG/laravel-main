@extends('main')

@section('content')
    <h1>Добавьте отзыв к этой книге : </h1>
    {!! Form::open(['route' => 'client.review.store']) !!}
    <div class="mt-3">   
        {!! Form::label('comment', 'Message:', ['class' => 'form-label']) !!}
        {!! Form::textarea('comment', null, ['class' => 'form-control']) !!}
    </div>
    {!! Form::hidden('user_id', Auth::user()->id) !!}
    {!! Form::hidden('book_id', $book->id) !!}
      
    {!! Form::submit('Save', ['class' => 'btn btn-primary mt-3']) !!}
   

    {!! Form::close() !!}
@endsection
