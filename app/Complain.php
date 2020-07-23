<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Complain extends Model
{
    protected $table = 'complain';
    protected $fillable = [
            'nomor',
            'nama_pemohon',
            'unit_pelapor',
            'jenis_complain_id',
            'uraian',
            'aset_id',
            'lokasi',
            'status_id',
            'tanggal_masuk',
            'tanggal_selesai'];
}
