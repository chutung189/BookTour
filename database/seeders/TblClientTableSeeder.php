<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class TblClientTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('tbl_client')->delete();
        
        
        
    }
}