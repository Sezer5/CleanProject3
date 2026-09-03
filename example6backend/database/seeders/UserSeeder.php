<?php

namespace Database\Seeders;

use App\Models\Role;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    public function run(): void
    {
        // Admin Rolünü Çek
        $adminRole = Role::where('name', 'Admin')->first();
        $userRole = Role::where('name', 'User')->first();

        // 1. Admin Kullanıcısı Oluştur ve Admin Rolünü İlişkilendir
        $admin = User::firstOrCreate(
            ['email' => 'admin@admin.com'],
            [
                'name' => 'Admin User',
                'email' => 'admin@email.com',
                'password' => Hash::make('111111'),
                'email_verified_at' => now(),
            ]
        );

        if ($adminRole) {
            // roleusers / role_user tablosuna kaydeder
            $admin->roles()->syncWithoutDetaching([$adminRole->id]);
        }

        // 2. Normal Kullanıcılar Oluştur ve User Rolünü İlişkilendir
        User::factory(5)->create()->each(function ($user) use ($userRole) {
            if ($userRole) {
                $user->roles()->attach($userRole->id);
            }
        });
    }
}
