<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comic extends Model
{
    use HasFactory;
    protected $table = 'comics';
    protected $fillable = ['title', 'slug', 'synopsis', 'comic_image', 'drop_image', 'comic_name', 'drop_name', 'rating', 'genre'];
}
