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
        Schema::create('tbl_client', function (Blueprint $table) {
            $table->integer('userId', true);
            $table->string('username', 100);
            $table->string('email');
            $table->string('password');
            $table->string('activation_token')->nullable();
            $table->boolean('isActive')->nullable()->default(false);
            $table->string('avatar')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_client');
    }
};
