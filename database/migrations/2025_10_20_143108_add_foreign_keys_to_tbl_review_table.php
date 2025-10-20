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
        Schema::table('tbl_review', function (Blueprint $table) {
            $table->foreign(['userId'], 'tbl_review_ibfk_1')->references(['userId'])->on('tbl_users');
            $table->foreign(['tourId'], 'tbl_review_ibfk_2')->references(['tourId'])->on('tbl_tours');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tbl_review', function (Blueprint $table) {
            $table->dropForeign('tbl_review_ibfk_1');
            $table->dropForeign('tbl_review_ibfk_2');
        });
    }
};
