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
        Schema::table('tbl_reviews', function (Blueprint $table) {
            $table->foreign(['userId'], 'fk_reviews_user')->references(['userId'])->on('tbl_users')->onDelete('CASCADE');
            $table->foreign(['tourId'], 'fk_reviews_tour')->references(['tourId'])->on('tbl_tours')->onDelete('CASCADE');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tbl_reviews', function (Blueprint $table) {
            $table->dropForeign('fk_reviews_user');
            $table->dropForeign('fk_reviews_tour');
        });
    }
};
