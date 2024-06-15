@extends('main')

@section('content')
    <h1>Измение отзыв этой книги : </h1>
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    {!! Form::model($Review, ['route' => ['admin.review.update', $Review->id], 'method' => 'put']) !!}

    <div class="mt-3">
        {!! Form::label('comment', 'Message:', ['class' => 'form-label']) !!}
        {!! Form::textarea('comment', null, ['class' => 'form-control']) !!}
    </div>
    {!! Form::hidden('user_id', Auth::user()->id) !!}
    {!! Form::hidden('book_id', $Review->book->id) !!}

    {!! Form::submit('Save', ['class' => 'btn btn-primary mt-3']) !!}


    {!! Form::close() !!}
@endsection
