<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSubDetailSla extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sub_detail_sla', function (Blueprint $table) {
            $table->increments('id');
            $table->foreignId('detail_sla_id')->constrained('detail_sla');
            $table->integer('tahun');
            $table->string('uraian', 255);
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
        Schema::dropIfExists('sub_detail_sla');
    }
}
