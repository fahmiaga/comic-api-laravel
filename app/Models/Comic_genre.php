<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comic_genre extends Model
{
    use HasFactory;
    protected $table = 'comic_genres';
    protected $fillable = ['id_comic', 'id_genre'];
}
