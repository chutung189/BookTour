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
        Schema::table('tbl_chat', function (Blueprint $table) {
            $table->foreign(['userId'], 'fk_chat_user')->references(['userId'])->on('tbl_users')->onDelete('CASCADE');
            $table->foreign(['adminId'], 'tbl_chat_ibfk_2')->references(['adminId'])->on('tbl_admin');
            $table->foreign(['adminId'], 'fk_chat_admin')->references(['adminId'])->on('tbl_admin')->onDelete('CASCADE');
            $table->foreign(['userId'], 'tbl_chat_ibfk_1')->references(['userId'])->on('tbl_users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tbl_chat', function (Blueprint $table) {
            $table->dropForeign('fk_chat_user');
            $table->dropForeign('tbl_chat_ibfk_2');
            $table->dropForeign('fk_chat_admin');
            $table->dropForeign('tbl_chat_ibfk_1');
        });
    }
};
