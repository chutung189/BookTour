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
        Schema::create('tbl_contact', function (Blueprint $table) {
            $table->integer('contactId', true);
            $table->string('fullName', 100);
            $table->string('phoneNumber', 20)->nullable();
            $table->string('email', 100);
            $table->string('subject')->nullable();
            $table->text('message');
            $table->enum('isReply', ['y', 'n'])->nullable()->default('n');
            $table->text('replyMessage')->nullable();
            $table->dateTime('created_at')->nullable()->useCurrent();
            $table->dateTime('updated_at')->nullable()->useCurrent();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_contact');
    }
};
