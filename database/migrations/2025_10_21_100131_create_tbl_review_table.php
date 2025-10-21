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
        Schema::create('tbl_review', function (Blueprint $table) {
            $table->integer('reviewId', true);
            $table->integer('userId')->nullable()->index('userID');
            $table->integer('tourId')->nullable()->index('tourID');
            $table->integer('rating')->nullable();
            $table->text('comment')->nullable();
            $table->date('reviewDate')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_review');
    }
};
