<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class TblUsersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('tbl_users')->delete();
        
        \DB::table('tbl_users')->insert(array (
            0 => 
            array (
                'userId' => 5,
                'username' => 'chutung3',
                'password' => 'e10adc3949ba59abbe56e057f20f883e',
                'name' => NULL,
                'fullName' => NULL,
                'email' => 'taolatung04ok@gmail.com',
                'phone' => NULL,
                'phoneNumber' => NULL,
                'address' => NULL,
                'gender' => NULL,
                'role' => 'Customer',
                'activation_token' => NULL,
                'isActive' => 'y',
                'avatar' => '1760880277.jpg',
                'created_at' => NULL,
                'updated_at' => NULL,
                'status' => '',
            ),
        ));
        
        
    }
}