<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\productdetails;
use App\Models\products;
use App\Models\category;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        products::factory(10)->create();
        productdetails::factory(10)->create();
        category::factory(2)->create();
    }
}
