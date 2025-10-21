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
        Schema::table('tbl_history', function (Blueprint $table) {
            $table->foreign(['userId'], 'fk_history_user')->references(['userId'])->on('tbl_users')->onDelete('CASCADE');
            $table->foreign(['tourId'], 'tbl_history_ibfk_2')->references(['tourId'])->on('tbl_tours');
            $table->foreign(['tourId'], 'fk_history_tour')->references(['tourId'])->on('tbl_tours')->onDelete('CASCADE');
            $table->foreign(['userId'], 'tbl_history_ibfk_1')->references(['userId'])->on('tbl_users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tbl_history', function (Blueprint $table) {
            $table->dropForeign('fk_history_user');
            $table->dropForeign('tbl_history_ibfk_2');
            $table->dropForeign('fk_history_tour');
            $table->dropForeign('tbl_history_ibfk_1');
        });
    }
};
