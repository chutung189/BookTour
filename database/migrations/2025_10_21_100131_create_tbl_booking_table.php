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
        Schema::create('tbl_booking', function (Blueprint $table) {
            $table->integer('bookingId', true);
            $table->integer('userId')->nullable()->index('fk_booking_user');
            $table->string('address')->nullable();
            $table->string('fullName', 100)->nullable();
            $table->string('email', 100)->nullable();
            $table->string('phoneNumber', 20)->nullable();
            $table->integer('tourId')->nullable()->index('fk_booking_tour');
            $table->integer('numAdults')->nullable()->default(0);
            $table->integer('numChildren')->nullable()->default(0);
            $table->date('bookingDate')->nullable();
            $table->double('totalPrice')->nullable();
            $table->text('specialRequest')->nullable();
            $table->enum('bookingStatus', ['b', 'c', 'y', 'f'])->nullable()->default('b');
            $table->timestamps();
            $table->integer('checkoutId')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_booking');
    }
};
