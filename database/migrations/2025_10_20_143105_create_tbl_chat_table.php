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
        Schema::create('tbl_chat', function (Blueprint $table) {
            $table->integer('chatId', true);
            $table->integer('userId')->nullable()->index('fk_chat_user');
            $table->integer('adminId')->nullable()->index('fk_chat_admin');
            $table->text('message')->nullable();
            $table->dateTime('timestamp')->nullable();
            $table->boolean('isRead')->nullable()->default(false);
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
        Schema::dropIfExists('tbl_chat');
    }
};
