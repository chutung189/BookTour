<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class TblCheckoutTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('tbl_checkout')->delete();
        
        \DB::table('tbl_checkout')->insert(array (
            0 => 
            array (
                'checkoutId' => 1,
                'userId' => NULL,
                'bookingId' => 1,
                'paymentMethod' => 'Cash',
                'amount' => 23000000.0,
                'paymentDate' => NULL,
                'paymentStatus' => '',
                'transactionId' => NULL,
            ),
            1 => 
            array (
                'checkoutId' => 2,
                'userId' => NULL,
                'bookingId' => 1,
                'paymentMethod' => 'Cash',
                'amount' => 23000000.0,
                'paymentDate' => NULL,
                'paymentStatus' => 'y',
                'transactionId' => NULL,
            ),
            2 => 
            array (
                'checkoutId' => 3,
                'userId' => NULL,
                'bookingId' => 3,
                'paymentMethod' => NULL,
                'amount' => 23000000.0,
                'paymentDate' => NULL,
                'paymentStatus' => 'n',
                'transactionId' => NULL,
            ),
            3 => 
            array (
                'checkoutId' => 4,
                'userId' => NULL,
                'bookingId' => 5,
                'paymentMethod' => 'Cash',
                'amount' => 33000000.0,
                'paymentDate' => NULL,
                'paymentStatus' => '',
                'transactionId' => NULL,
            ),
            4 => 
            array (
                'checkoutId' => 5,
                'userId' => NULL,
                'bookingId' => 8,
                'paymentMethod' => NULL,
                'amount' => 33000000.0,
                'paymentDate' => NULL,
                'paymentStatus' => 'y',
                'transactionId' => NULL,
            ),
            5 => 
            array (
                'checkoutId' => 6,
                'userId' => NULL,
                'bookingId' => 9,
                'paymentMethod' => 'office-payment',
                'amount' => 33000000.0,
                'paymentDate' => NULL,
                'paymentStatus' => 'y',
                'transactionId' => NULL,
            ),
            6 => 
            array (
                'checkoutId' => 7,
                'userId' => NULL,
                'bookingId' => 10,
                'paymentMethod' => 'office-payment',
                'amount' => 8000000.0,
                'paymentDate' => NULL,
                'paymentStatus' => 'n',
                'transactionId' => NULL,
            ),
        ));
        
        
    }
}