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
        Schema::table('tbl_invoice', function (Blueprint $table) {
            $table->foreign(['bookingId'], 'tbl_invoice_ibfk_1')->references(['bookingId'])->on('tbl_booking');
            $table->foreign(['bookingId'], 'fk_invoice_booking')->references(['bookingId'])->on('tbl_booking')->onDelete('CASCADE');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tbl_invoice', function (Blueprint $table) {
            $table->dropForeign('tbl_invoice_ibfk_1');
            $table->dropForeign('fk_invoice_booking');
        });
    }
};
