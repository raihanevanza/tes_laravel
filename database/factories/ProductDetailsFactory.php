<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class ProductDetailsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'products_id' => $this->faker->numberBetween(1, 10),
            'categories_id' => $this->faker->numberBetween(1, 2),
            'warna' => $this->faker->safeColorName(),
            'berat' => $this->faker->bothify('## Kg'),
            'quantity' => $this->faker->numberBetween(1, 10)
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function unverified()
    {
        return $this->state(function (array $attributes) {
            return [
                'email_verified_at' => null,
            ];
        });
    }
}
