<?php

namespace Database\Seeders;

use App\Models\Color;
use App\Models\Product;
use App\Models\Size;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Sistemdeki tüm renkleri ve bedenleri çekiyoruz
        $colors = Color::all();
        $sizes = Size::all();

        // 20 adet rastgele ürün oluşturup döngüye alıyoruz
        Product::factory(20)->create()->each(function ($product) use ($colors, $sizes) {

            // Her ürün için mevcut renklerden rastgele 1 ila 3 adet seçip bağlıyoruz
            if ($colors->isNotEmpty()) {
                $randomColors = $colors->random(rand(1, min(3, $colors->count())))->pluck('id');
                $product->colors()->attach($randomColors);
            }

            // Her ürün için mevcut bedenlerden rastgele 1 ila 4 adet seçip bağlıyoruz
            if ($sizes->isNotEmpty()) {
                $randomSizes = $sizes->random(rand(1, min(4, $sizes->count())))->pluck('id');
                $product->sizes()->attach($randomSizes);
            }
        });
    }
}
