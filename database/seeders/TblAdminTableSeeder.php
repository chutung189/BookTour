<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class TblAdminTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('tbl_admin')->delete();
        
        \DB::table('tbl_admin')->insert(array (
            0 => 
            array (
                'adminId' => 3,
                'username' => 'chutung',
                'fullName' => 'chutung',
                'password' => 'e10adc3949ba59abbe56e057f20f883e',
                'email' => 'chutung@gmail.com',
                'address' => NULL,
                'phone' => NULL,
                'phoneNumber' => NULL,
                'avatar' => NULL,
                'createdDate' => NULL,
                'role' => 'SuperAdmin',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
        ));
        
        
    }
}