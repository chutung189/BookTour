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
        Schema::table('tbl_images', function (Blueprint $table) {
            $table->foreign(['tourId'], 'fk_images_tours')->references(['tourId'])->on('tbl_tours')->onUpdate('CASCADE')->onDelete('CASCADE');
            $table->foreign(['tourId'], 'fk_images_tour')->references(['tourId'])->on('tbl_tours')->onDelete('CASCADE');
            $table->foreign(['tourId'], 'tbl_images_ibfk_1')->references(['tourId'])->on('tbl_tours');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tbl_images', function (Blueprint $table) {
            $table->dropForeign('fk_images_tours');
            $table->dropForeign('fk_images_tour');
            $table->dropForeign('tbl_images_ibfk_1');
        });
    }
};
