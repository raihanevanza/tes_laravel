<?php

namespace App\Models;

use App\Models\category;
use App\Models\productdetails;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use CloudCreativity\LaravelJsonApi\Pagination\StandardStrategy;
use CloudCreativity\LaravelJsonApi\Eloquent\AbstractAdapter;
use Illuminate\Database\Eloquent\Model;

class products extends Model
{
    use HasFactory;

    protected $table = 'products';

    protected $fillable = [
        'categories_id',
        'code',
        'name'
    ];

    

}
