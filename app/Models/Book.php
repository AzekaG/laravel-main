<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    use HasFactory;

    
    protected $fillable = ['name', 'description', 'genre_id', 'pathimage'];




    function genre()
    {
        return $this->belongsTo(Genre::class);
    }
    protected function shortDescription(): Attribute
    {
        return Attribute::make(
            get: fn (mixed $value, array $attributes) => substr($attributes['description'], 0, 30),
        );
    }

    protected function image(): Attribute
    {
        return Attribute::make(
            get: fn (mixed $value) => $value ? $value : 'https://upload.wikimedia.org/wikipedia/commons/9/9a/%D0%9D%D0%B5%D1%82_%D1%84%D0%BE%D1%82%D0%BE.png',
        );
    }

    function reviews()
    {
        return $this->hasMany(Review::class);
    }
}
