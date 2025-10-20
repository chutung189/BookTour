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
        Schema::create('tbl_users', function (Blueprint $table) {
            $table->integer('userId', true);
            $table->string('username', 100);
            $table->string('password');
            $table->string('name', 100)->nullable();
            $table->string('fullName', 100)->nullable();
            $table->string('email', 100)->nullable();
            $table->string('phone', 20)->nullable();
            $table->string('phoneNumber', 20)->nullable();
            $table->string('address')->nullable();
            $table->enum('gender', ['Male', 'Female', 'Other'])->nullable();
            $table->enum('role', ['Customer', 'Admin', 'Staff'])->nullable()->default('Customer');
            $table->string('activation_token')->nullable();
            $table->char('isActive', 1)->nullable()->default('n');
            $table->string('avatar')->nullable();
            $table->timestamps();
            $table->string('status', 10)->nullable()->default('');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_users');
    }
};
