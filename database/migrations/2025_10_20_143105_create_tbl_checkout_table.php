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
        Schema::create('tbl_checkout', function (Blueprint $table) {
            $table->integer('checkoutId', true);
            $table->integer('userId')->nullable();
            $table->integer('bookingId')->nullable()->index('fk_checkout_booking');
            $table->enum('paymentMethod', ['Credit Card', 'PayPal', 'Cash', 'Bank Transfer', 'office-payment'])->nullable();
            $table->double('amount')->nullable();
            $table->date('paymentDate')->nullable();
            $table->char('paymentStatus', 1)->nullable()->default('n');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_checkout');
    }
};
