<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class TblImagesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('tbl_images')->delete();
        
        \DB::table('tbl_images')->insert(array (
            0 => 
            array (
                'imageId' => 9,
                'tourId' => 10,
                'imageUrl' => 'screenshot_1732899322_1732899362_1760796303.png',
                'description' => 'screenshot_1732899322_1732899362',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            1 => 
            array (
                'imageId' => 10,
                'tourId' => 10,
                'imageUrl' => 'screenshot_1732898520_1732898694_1760796304.png',
                'description' => 'screenshot_1732898520_1732898694',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            2 => 
            array (
                'imageId' => 11,
                'tourId' => 10,
                'imageUrl' => 'screenshot_1732898508_1732898694_1760796305.png',
                'description' => 'screenshot_1732898508_1732898694',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            3 => 
            array (
                'imageId' => 12,
                'tourId' => 10,
                'imageUrl' => 'screenshot_1732899330_1732899364_1760796305.png',
                'description' => 'screenshot_1732899330_1732899364',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            4 => 
            array (
                'imageId' => 13,
                'tourId' => 10,
                'imageUrl' => 'screenshot_1732898531_1732898696_1760796305.png',
                'description' => 'screenshot_1732898531_1732898696',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            5 => 
            array (
                'imageId' => 14,
                'tourId' => 11,
                'imageUrl' => 'halong5_1760882813.jpg',
                'description' => 'halong5',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            6 => 
            array (
                'imageId' => 15,
                'tourId' => 11,
                'imageUrl' => 'halong1_1760882814.jpg',
                'description' => 'halong1',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            7 => 
            array (
                'imageId' => 16,
                'tourId' => 11,
                'imageUrl' => 'halong2_1760882814.jpg',
                'description' => 'halong2',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            8 => 
            array (
                'imageId' => 17,
                'tourId' => 11,
                'imageUrl' => 'vinh-ha-long-quang-ninh_1735834627_1760882814.jpg',
                'description' => 'vinh-ha-long-quang-ninh_1735834627',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            9 => 
            array (
                'imageId' => 18,
                'tourId' => 11,
                'imageUrl' => 'vinh-ha-long_1732896698_1760882048_1760882814.png',
                'description' => 'vinh-ha-long_1732896698_1760882048',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            10 => 
            array (
                'imageId' => 19,
                'tourId' => 12,
                'imageUrl' => 'bien-my-khe_1732895854_1760886866.jpg',
                'description' => 'bien-my-khe_1732895854',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            11 => 
            array (
                'imageId' => 20,
                'tourId' => 12,
                'imageUrl' => 'cau-rong-da-nang_1732897880_1760886866.png',
                'description' => 'cau-rong-da-nang_1732897880',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            12 => 
            array (
                'imageId' => 21,
                'tourId' => 12,
                'imageUrl' => 'ben-trong-ba-na-hills-da-nang_1732896301_1760886866.png',
                'description' => 'ben-trong-ba-na-hills-da-nang_1732896301',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            13 => 
            array (
                'imageId' => 22,
                'tourId' => 12,
                'imageUrl' => 'ba-na-hill-da-nang-1_1732896298_1760886866.png',
                'description' => 'ba-na-hill-da-nang-1_1732896298',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            14 => 
            array (
                'imageId' => 23,
                'tourId' => 12,
                'imageUrl' => 'cau-vang-da-nang_1732896303_1760886867.png',
                'description' => 'cau-vang-da-nang_1732896303',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            15 => 
            array (
                'imageId' => 24,
                'tourId' => 13,
                'imageUrl' => 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-2_1732938419_1760889091.jpg',
                'description' => 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-2_1732938419',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            16 => 
            array (
                'imageId' => 25,
                'tourId' => 13,
                'imageUrl' => 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-3_1732938419_1760889091.jpg',
                'description' => 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-3_1732938419',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            17 => 
            array (
                'imageId' => 26,
                'tourId' => 13,
                'imageUrl' => 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-tet_1732938420_1760889092.jpg',
                'description' => 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-tet_1732938420',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            18 => 
            array (
                'imageId' => 27,
                'tourId' => 13,
                'imageUrl' => 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-4_1732938419_1760889092.jpg',
                'description' => 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-4_1732938419',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            19 => 
            array (
                'imageId' => 28,
                'tourId' => 13,
                'imageUrl' => 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-5_1732938420_1760889092.jpg',
                'description' => 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-5_1732938420',
                'uploadDate' => NULL,
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
        ));
        
        
    }
}