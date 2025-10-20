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
        Schema::create('tbl_tours', function (Blueprint $table) {
            $table->integer('tourId', true);
            $table->string('title')->nullable();
            $table->text('description')->nullable();
            $table->text('imageList')->nullable();
            $table->string('location')->nullable();
            $table->enum('domain', ['b', 't', 'n'])->nullable();
            $table->string('destination')->nullable();
            $table->double('priceAdult')->nullable();
            $table->double('priceChild')->nullable();
            $table->string('time', 50)->nullable();
            $table->date('startDate')->nullable();
            $table->date('endDate')->nullable();
            $table->integer('quantity')->nullable();
            $table->integer('availableSlots')->nullable();
            $table->double('rating')->nullable()->default(0);
            $table->boolean('availability')->nullable()->default(true);
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
        Schema::dropIfExists('tbl_tours');
    }
};
