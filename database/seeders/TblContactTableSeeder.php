<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class TblContactTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('tbl_contact')->delete();
        
        \DB::table('tbl_contact')->insert(array (
            0 => 
            array (
                'contactId' => 1,
                'fullName' => 'Pham Viet Phuong',
                'phoneNumber' => '0912345678',
                'email' => '22010465@st.phenikaa-uni.edu.vn',
                'subject' => NULL,
                'message' => 'gg',
                'isReply' => 'n',
                'replyMessage' => NULL,
                'created_at' => '2025-10-19 22:57:19',
                'updated_at' => '2025-10-19 22:57:19',
            ),
            1 => 
            array (
                'contactId' => 2,
                'fullName' => 'Pham Viet Phuong',
                'phoneNumber' => '0912345678',
                'email' => '22010465@st.phenikaa-uni.edu.vn',
                'subject' => NULL,
                'message' => 'aaa',
                'isReply' => 'n',
                'replyMessage' => NULL,
                'created_at' => '2025-10-19 22:59:30',
                'updated_at' => '2025-10-19 22:59:30',
            ),
        ));
        
        
    }
}