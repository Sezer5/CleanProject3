<?php

namespace Database\Seeders;

use App\Models\Color;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class ColorSeeder extends Seeder
{
    public function run(): void
    {
        $colors = ['Black', 'White', 'Red', 'Blue', 'Green', 'Yellow', 'Gray', 'Brown'];

        foreach ($colors as $color) {
            Color::firstOrCreate([
                'name' => $color,
                'slug' => Str::slug($color),
            ]);
        }
    }
}
