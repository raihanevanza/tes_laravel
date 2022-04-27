<?php


namespace App\Models;

use App\Models\products;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class productdetails extends Model
{
    use HasFactory;

    protected $table = 'productdetails';

    protected $fillable = [
        'products_id',
        'warna',
        'berat',
        'quantity'
    ];

    public function product(){
        return $this->belongsTo(Product::class, 'products_id');
    }
}
