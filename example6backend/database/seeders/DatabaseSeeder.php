<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        $this->call([
            RoleSeeder::class,     // 1. Rolleri oluştur (Admin, User)
            UserSeeder::class,     // 2. Kullanıcıları oluştur ve rol bağla
            CategorySeeder::class, // 3. Kategoriler
            ColorSeeder::class,    // 4. Renkler
            SizeSeeder::class,     // 5. Bedenler
            ProductSeeder::class,  // 6. Ürünler
        ]);
    }
}
