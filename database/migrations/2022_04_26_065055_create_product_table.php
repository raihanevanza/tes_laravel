<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

        Schema::create('products', function (Blueprint $table) {
            $table->id('products_id');
            $table->integer('categories_id');
            $table->string('code');
            $table->string('name');
            $table->timestamps();
            // $table->foreign('categories_id')->references('categories_id')->on('categories');
        });

        Schema::create('productdetails', function (Blueprint $table) {
            $table->id('productdetails_id');
            $table->integer('products_id');
            $table->integer('categories_id');
            $table->string('warna');
            $table->string('berat');
            $table->integer('quantity');
            $table->timestamps();
            // $table->foreign('product_id')->references('product_id')->on('product');
            // $table->foreign('categories_id')->references('categories_id')->on('categories');
        });

        Schema::create('categories', function (Blueprint $table) {
            $table->id('categories_id');
            $table->string('type');
            $table->timestamps();
        }); 
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
        Schema::dropIfExists('productdetails');
        Schema::dropIfExists('categories');
    }
}
