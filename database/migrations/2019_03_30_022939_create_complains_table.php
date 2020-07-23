<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateComplainsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('complain', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nomor');
            $table->string('nama_pemohon');
            $table->string('unit_pelapor');
            $table->integer('jenis_complain_id');
            $table->text('uraian');
            $table->integer('aset_id');
            $table->string('lokasi');
            $table->integer('status_id');
            $table->datetime('tanggal_masuk');
            $table->datetime('tanggal_selesai');
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
        Schema::dropIfExists('complain');
    }
}
