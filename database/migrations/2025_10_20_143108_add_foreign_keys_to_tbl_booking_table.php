<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tbl_booking', function (Blueprint $table) {
            $table->foreign(['tourId'], 'fk_booking_tour')->references(['tourId'])->on('tbl_tours')->onDelete('CASCADE');
            $table->foreign(['userId'], 'tbl_booking_ibfk_1')->references(['userId'])->on('tbl_users');
            $table->foreign(['userId'], 'fk_booking_user')->references(['userId'])->on('tbl_users')->onDelete('CASCADE');
            $table->foreign(['tourId'], 'tbl_booking_ibfk_2')->references(['tourId'])->on('tbl_tours');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tbl_booking', function (Blueprint $table) {
            $table->dropForeign('fk_booking_tour');
            $table->dropForeign('tbl_booking_ibfk_1');
            $table->dropForeign('fk_booking_user');
            $table->dropForeign('tbl_booking_ibfk_2');
        });
    }
};
