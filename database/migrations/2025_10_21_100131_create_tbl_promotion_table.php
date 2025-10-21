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
        Schema::create('tbl_promotion', function (Blueprint $table) {
            $table->integer('promotionId', true);
            $table->string('promoCode', 50)->nullable();
            $table->text('description')->nullable();
            $table->double('discount')->nullable();
            $table->date('startDate')->nullable();
            $table->date('endDate')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_promotion');
    }
};
