<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        $this->call(TblAdminTableSeeder::class);
        $this->call(TblBookingTableSeeder::class);
        $this->call(TblClientTableSeeder::class);
        $this->call(TblContactTableSeeder::class);
        $this->call(TblReviewsTableSeeder::class);
        $this->call(TblInvoiceTableSeeder::class);
        $this->call(TblCheckoutTableSeeder::class);
        $this->call(TblChatTableSeeder::class);
        $this->call(TblUsersTableSeeder::class);
        $this->call(TblHistoryTableSeeder::class);
        $this->call(TblImagesTableSeeder::class);
        $this->call(TblReviewTableSeeder::class);
        $this->call(TblPromotionTableSeeder::class);
        $this->call(TblTimelineTableSeeder::class);
        $this->call(TblToursTableSeeder::class);
    }
}
