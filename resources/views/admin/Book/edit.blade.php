@extends('main')

@section('content')
    <h1>Редактирование параметров книги</h1>


    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    {!! Form::model($Book,  ['route' => ['admin.books.update', $Book->id], 'files' => true, 'method' => 'put']) !!}

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
        {!! Form::select('genre_id', $genres, $Book->genre_id , ['class' => 'form-control']) !!}
    </div>
    <div class="mt-3">
        {!! Form::label('image', 'Обложка: ', ['class' => 'form-label']) !!}
        {!! Form::file('image', ['class' => 'form-control']) !!}
    </div>

    {!! Form::submit('Save', ['class' => 'btn btn-primary mt-3']) !!}


    {!! Form::close() !!}
@endsection
