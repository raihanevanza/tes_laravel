<?php

namespace App\Http\Controllers\API;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use App\Models\products;
use App\Models\category;
use App\Models\productdetails;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class ProductDetailsController extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

       
    public function index()
    {
        $data = products::join('categories', 'categories.categories_id', '=', 'products.categories_id')
                    ->groupby('categories.type')
              		->get(['products.products_id', 'products.categories_id', 'products.code', 'categories.type']);
                    
        return $data;
    }

    public function productordering()
    {
        $joinan = products::join('categories', 'categories.categories_id', '=', 'products.categories_id')
                    ->join('productdetails', 'productdetails.products_id', '=', 'products.products_id')
                    ->orderBy('products.products_id', 'DESC')
              		->get(['products.products_id', 'products.categories_id', 'products.code', 'productdetails.warna', 'categories.type']);
        return $joinan;
    }

    public function jointritable()
    {
        $joinan = products::join('categories', 'categories.categories_id', '=', 'products.categories_id')
        ->join('productdetails', 'productdetails.products_id', '=', 'products.products_id')
              		->get(['products.products_id', 'products.categories_id', 'products.code', 'productdetails.warna', 'categories.type']);
        return $joinan;
    }


    
}
