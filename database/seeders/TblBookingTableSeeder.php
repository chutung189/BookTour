<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class TblBookingTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('tbl_booking')->delete();
        
        \DB::table('tbl_booking')->insert(array (
            0 => 
            array (
                'bookingId' => 1,
                'userId' => 5,
                'address' => 'Thanh Xuan Bac',
                'fullName' => 'Chu Tùng',
                'email' => '22010841@st.phenikaa-uni.edu.vn',
                'phoneNumber' => '0912345678',
                'tourId' => 10,
                'numAdults' => 2,
                'numChildren' => 1,
                'bookingDate' => NULL,
                'totalPrice' => 23000000.0,
                'specialRequest' => NULL,
                'bookingStatus' => '',
                'created_at' => NULL,
                'updated_at' => NULL,
                'checkoutId' => NULL,
            ),
            1 => 
            array (
                'bookingId' => 2,
                'userId' => 5,
                'address' => 'Thanh Xuan Bac',
                'fullName' => 'Chu Tùng',
                'email' => '22010841@st.phenikaa-uni.edu.vn',
                'phoneNumber' => '0912345678',
                'tourId' => 10,
                'numAdults' => 2,
                'numChildren' => 1,
                'bookingDate' => NULL,
                'totalPrice' => 23000000.0,
                'specialRequest' => NULL,
                'bookingStatus' => '',
                'created_at' => NULL,
                'updated_at' => NULL,
                'checkoutId' => NULL,
            ),
            2 => 
            array (
                'bookingId' => 3,
                'userId' => 5,
                'address' => 'Thanh Xuan Bac',
                'fullName' => 'Chu Tùng',
                'email' => '22010841@st.phenikaa-uni.edu.vn',
                'phoneNumber' => '0912345678',
                'tourId' => 10,
                'numAdults' => 2,
                'numChildren' => 1,
                'bookingDate' => NULL,
                'totalPrice' => 23000000.0,
                'specialRequest' => NULL,
                'bookingStatus' => 'c',
                'created_at' => NULL,
                'updated_at' => NULL,
                'checkoutId' => NULL,
            ),
            3 => 
            array (
                'bookingId' => 4,
                'userId' => 5,
                'address' => 'Thanh Tri',
                'fullName' => 'Pham Viet Phuong',
                'email' => '22010465@st.phenikaa-uni.edu.vn',
                'phoneNumber' => '0129395483',
                'tourId' => 13,
                'numAdults' => 2,
                'numChildren' => 1,
                'bookingDate' => NULL,
                'totalPrice' => 33000000.0,
                'specialRequest' => NULL,
                'bookingStatus' => '',
                'created_at' => NULL,
                'updated_at' => NULL,
                'checkoutId' => NULL,
            ),
            4 => 
            array (
                'bookingId' => 5,
                'userId' => 5,
                'address' => 'Thanh Tri',
                'fullName' => 'Pham Viet Phuong',
                'email' => '22010465@st.phenikaa-uni.edu.vn',
                'phoneNumber' => '0129395483',
                'tourId' => 13,
                'numAdults' => 2,
                'numChildren' => 1,
                'bookingDate' => NULL,
                'totalPrice' => 33000000.0,
                'specialRequest' => NULL,
                'bookingStatus' => '',
                'created_at' => NULL,
                'updated_at' => NULL,
                'checkoutId' => NULL,
            ),
            5 => 
            array (
                'bookingId' => 6,
                'userId' => 5,
                'address' => 'Thanh Tri',
                'fullName' => 'Pham Viet Phuong',
                'email' => '22010465@st.phenikaa-uni.edu.vn',
                'phoneNumber' => '0912345678',
                'tourId' => 13,
                'numAdults' => 2,
                'numChildren' => 1,
                'bookingDate' => NULL,
                'totalPrice' => 33000000.0,
                'specialRequest' => NULL,
                'bookingStatus' => '',
                'created_at' => NULL,
                'updated_at' => NULL,
                'checkoutId' => NULL,
            ),
            6 => 
            array (
                'bookingId' => 7,
                'userId' => 5,
                'address' => 'Thanh Tri',
                'fullName' => 'Pham Viet Phuong',
                'email' => '22010465@st.phenikaa-uni.edu.vn',
                'phoneNumber' => '0912345678',
                'tourId' => 13,
                'numAdults' => 2,
                'numChildren' => 1,
                'bookingDate' => NULL,
                'totalPrice' => 33000000.0,
                'specialRequest' => NULL,
                'bookingStatus' => '',
                'created_at' => NULL,
                'updated_at' => NULL,
                'checkoutId' => NULL,
            ),
            7 => 
            array (
                'bookingId' => 8,
                'userId' => 5,
                'address' => 'Thanh Tri',
                'fullName' => 'Pham Viet Phuong',
                'email' => '22010465@st.phenikaa-uni.edu.vn',
                'phoneNumber' => '0912345678',
                'tourId' => 13,
                'numAdults' => 2,
                'numChildren' => 1,
                'bookingDate' => NULL,
                'totalPrice' => 33000000.0,
                'specialRequest' => NULL,
                'bookingStatus' => '',
                'created_at' => NULL,
                'updated_at' => NULL,
                'checkoutId' => NULL,
            ),
            8 => 
            array (
                'bookingId' => 9,
                'userId' => 5,
                'address' => 'Thanh Tri',
                'fullName' => 'Pham Viet Phuong',
                'email' => '22010465@st.phenikaa-uni.edu.vn',
                'phoneNumber' => '0912345678',
                'tourId' => 13,
                'numAdults' => 2,
                'numChildren' => 1,
                'bookingDate' => NULL,
                'totalPrice' => 33000000.0,
                'specialRequest' => NULL,
                'bookingStatus' => '',
                'created_at' => NULL,
                'updated_at' => NULL,
                'checkoutId' => NULL,
            ),
            9 => 
            array (
                'bookingId' => 10,
                'userId' => 5,
                'address' => 'Thanh Xuan Bac',
                'fullName' => 'Chu Tùng',
                'email' => '22010841@st.phenikaa-uni.edu.vn',
                'phoneNumber' => '0912345678',
                'tourId' => 12,
                'numAdults' => 1,
                'numChildren' => 0,
                'bookingDate' => NULL,
                'totalPrice' => 8000000.0,
                'specialRequest' => NULL,
                'bookingStatus' => 'y',
                'created_at' => NULL,
                'updated_at' => NULL,
                'checkoutId' => NULL,
            ),
            10 => 
            array (
                'bookingId' => 11,
                'userId' => 5,
                'address' => 'Thanh Tri',
                'fullName' => 'Pham Viet Phuong',
                'email' => '22010465@st.phenikaa-uni.edu.vn',
                'phoneNumber' => '0912345678',
                'tourId' => 12,
                'numAdults' => 1,
                'numChildren' => 0,
                'bookingDate' => NULL,
                'totalPrice' => 8000000.0,
                'specialRequest' => NULL,
                'bookingStatus' => 'b',
                'created_at' => NULL,
                'updated_at' => NULL,
                'checkoutId' => NULL,
            ),
        ));
        
        
    }
}