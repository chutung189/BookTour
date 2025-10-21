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
        Schema::create('tbl_admin', function (Blueprint $table) {
            $table->integer('adminId', true);
            $table->string('username', 100);
            $table->string('fullName', 100)->nullable();
            $table->string('password');
            $table->string('email', 100)->nullable();
            $table->string('address')->nullable();
            $table->string('phone', 20)->nullable();
            $table->string('phoneNumber', 20)->nullable();
            $table->string('avatar')->nullable();
            $table->date('createdDate')->nullable();
            $table->enum('role', ['SuperAdmin', 'Moderator'])->nullable()->default('Moderator');
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
        Schema::dropIfExists('tbl_admin');
    }
};
