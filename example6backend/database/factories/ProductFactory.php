<?php

namespace Database\Factories;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends Factory<Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $name = fake()->unique()->words(3, true);

        return [
            'name' => ucfirst($name),
            'slug' => Str::slug($name),
            // Rastgele var olan bir kategori seçer, yoksa otomatik yeni kategori oluşturur
            'category_id' => Category::inRandomOrder()->first()?->id ?? Category::factory(),
            'price' => fake()->randomFloat(2, 50, 5000), // 50 TL ile 5000 TL arası
            'quantity' => fake()->numberBetween(0, 100),
            'description' => fake()->paragraph(3),
            'thumbnail' => 'images/product/default.jpg', // Varsayılan veya örnek görsel yolu
        ];
    }
}
