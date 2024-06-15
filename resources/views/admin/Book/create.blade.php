@extends('main')

@section('content')
    <h1>Создание новой книги</h1>


    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    {!! Form::open(['route' => 'admin.books.store', 'files' => true]) !!}

    <div class="mt-3">
        {!! Form::label('name', 'Название: ', ['class' => 'form-label']) !!}
        {!! Form::text('name', null, ['class' => 'form-control']) !!}

    </div>
    <div class="mt-3">
        {!! Form::label('description', 'Описание: ', ['class' => 'form-label']) !!}
        {!! Form::textarea('description', null, ['class' => 'form-control']) !!}
    </div>
    <div class="mt-3">
        {!! Form::label('genre_id', 'Жанр : ', ['class' => 'form-label']) !!}
        {!! Form::select('genre_id', $genres, null, ['class' => 'form-control']) !!}
    </div>
    <div class="mt-3">
        {!! Form::label('image', 'Обложка: ', ['class' => 'form-label']) !!}
        {!! Form::file('image', ['class' => 'form-control']) !!}
    </div>
    {!! Form::submit('Save', ['class' => 'btn btn-primary mt-3']) !!}


    {!! Form::close() !!}
@endsection
