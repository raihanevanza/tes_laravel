<?php

namespace App\Models;

use App\Models\products;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class category extends Model
{
    use HasFactory;

    protected $table = 'categories';

    protected $fillable = [
        'products_id',
        'type'
    ];

    public function product(){
        return $this->belongsTo(Product::class, 'products_id');
    }
}
