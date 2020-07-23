<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableDetailAir extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('meter_air', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('aset_id')->nullable();
            $table->string('meter_id')->nullable();
            $table->string('jenis')->nullable();

            $table->timestamps();
            $table->foreign('aset_id')->references('id')->on('aset');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
