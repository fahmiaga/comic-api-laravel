<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'Fahmi Aga Aditya',
            'email' => 'fahmi@gmail.com',
            'password' => bcrypt('12345'),
            'profile_image' => 'default.jpg',
            'role_id' => 1
        ]);
    }
}
