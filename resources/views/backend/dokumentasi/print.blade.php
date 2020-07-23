<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title>Document</title>
</head>
<body>
    
    <div id="header">
        <table class="w3-table-all">
            <thead>
                <tr class='w3-white'>
                    <th style="width:30%">
                    <img src="{{ base_path() . '/storage/app/uploads/img/logo.png' }}" alt="" height="50" widht="80">
                    </th>
                    <th class="w3-small">FORM WORK ORDER <br> PT.PERMATA GRAHA NUSANTARA <br> KANTOR PUSAT / AREA {{ strtoupper($area->uraian) }}</th>
                    <th class="w3-small">
                        Nomor &nbsp; : {{ $complain->nomor }} <br>
                        Sifat &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: ...........
                    </th>
                </tr>
            </thead>
        </table>
    </div>
    <div class="w3-display-container">
        <div class="w3-display-topleft w3-col s6">
            <table class="w3-table-all w3-tiny">
                <tr>
                    <td colspan=3>
                    <strong> <i> 1. Diisi Oleh Pengguna Gedung</i>
                    </strong>
                    </td>
                </tr>
                <tr>
                    <td>TGL/BLN/THN</td>
                    <td>:</td>
                    <td>{{ $tgl }} / {{ $bln }} / {{ $thn }}</td>
                </tr>
                <tr><td>WAKTU/JAM</td>
                    <td>:</td>
                    <td> {{ $jam }} : {{ $menit }} WIB</td>
                </tr>
                <tr>
                    <td>NAMA PEMOHON</td>
                    <td>:</td>
                    <td>{{ $complain->nama_pemohon }}</td>
                </tr>
                <tr>
                    <td>UNIT PELAPOR</td>
                    <td>:</td>
                    <td>{{ $complain->unit_pelapor }}</td>
                </tr>
                <tr>
                    <td>JENIS KOMPLAIN</td>
                    <td>:</td>
                    <td>
                    @foreach($jenis_complain as $jns)
                        @if($jns->id == $complain->jenis_complain_id)
                        {{ $jns->uraian }} /
                        @else
                        <strike> {{ $jns->uraian }} </strike> /
                        
                        @endif
                    @endforeach
                    </td>
                </tr>
                <tr>
                    <td>LOKASI</td>
                    <td>:</td>
                    <td>{{ $aset->nama }} ({{ $aset->alamat }})</td>
                </tr>
                <tr>
                    <td>URAIAN KOMPLAIN</td>
                    <td>:</td>
                    <td>{{ $complain->uraian }}
                    </td>
                </tr>
                <tr>
                    <td colspan=3>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan=3>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            </table>
        </div>
        <div class="w3-display-topright w3-col s6">
            <div>
                <table class="w3-table-all w3-tiny">
                    <tr>
                        <td colspan=3>
                        <strong> <i> 2. Diisi Oleh Pengelola Gedung</i>
                        </strong>
                        </td>
                    </tr>
                    <tr>
                        <td width=30%>PUSAT BIAYA</td>
                        <td width=5%>:</td>
                        <td>{{ $tindaklanjut_complain->keterangan_biaya }}
                        </td>
                    </tr>
                    <tr>
                        <td colspan=3>
                            <i>Estimasi Pekerjaan</i>
                        </td>
                    </tr>
                    <tr>
                        <td>BIAYA</td>
                        <td>:</td>
                        <td>Rp. {{ $tindaklanjut_complain->biaya }}</td>
                    </tr>
                    <tr>
                        <td>WAKTU PEKERJAAN</td>
                        <td>:</td>
                        <td>{{ $tindaklanjut_complain->waktu_pekerjaan }} {{ $tindaklanjut_complain->satuan_waktu }}</td>
                    </tr>
                    <tr>
                        <td>KETERANGAN</td>
                        <td>:</td>
                        <td></td>
                    </tr>
                </table>
            </div>
            <div>
                <table class="w3-table-all w3-tiny">
                    <tr>
                        <td colspan=3>
                        <strong> <i> 3. Diisi Oleh Pelaksana</i>
                        </strong>
                        </td>
                    </tr>
                    <tr>
                        <td width=30%>PUSAT BIAYA</td>
                        <td width=5%>:</td>
                        <td>{{ $tindaklanjut_complain->keterangan_biaya }}
                        </td>
                    </tr>
                    <tr>
                        <td>URAIAN TINDAKLANJUT</td>
                        <td>:</td>
                        <td>Rp. {{ $tindaklanjut_complain->biaya }}</td>
                    </tr>
                    <tr>
                        <td>DISELESAIKAN TANGGAL</td>
                        <td>:</td>
                        <td>
                        
                        {{ $tanggal_selesai }}</td>
                    </tr>
                    <tr>
                        <td>KETERANGAN</td>
                        <td>:</td>
                        <td></td>
                    </tr>
                </table>
            </div>
        </div>
        
    </div>
    <div class="w3-display-container w3-tiny">
        <div class="w3-row">
            <div class="w3-col s3" width="100%">
                Keterangan : <br>
                - Warna Putih : PGNMAS <br>
                - Warna Merah : Pemohon <br>
                - Warna Kuning : Operasional
            </div>
            <div class="w3-center w3-col s3" >
               <table class="w3-border" width="100%">
                    <tr class="w3-gray">
                        <td>
                            Pemohon, <br>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    <tr>
                    <td>........</td>
                    </tr>
               </table>
            </div>
            <div class="w3-center w3-col s3" >
               <table class="w3-border" width="100%">
                    <tr class="w3-gray">
                        <td>
                            Pengelola Gedung, <br>
                            PT.PGNMAS
                        </td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    
                    <tr>
                    <td>........</td>
                    </tr>
               </table>
            </div>
            <div class=" w3-center w3-col s3" >
               <table class="w3-border" width="100%">
                    <tr class="w3-gray">
                        <td>
                            Pelaksana Kegiatan, <br>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    <tr>
                    <td>........</td>
                    </tr>
               </table>
            </div>
        </div>
        
    </div>
    <br>
    <div class="w3-display-container w3-tiny">
        <div class="w3-row">
            <div class="w3-col s6  w3-center">
            <p>
            <strong>FOTO SEBELUM</strong>
            </p> <br>
            @if($tindaklanjut_complain->path_foto_sebelum == 'Tidak Ada') <!-- file link !-->
                <?php $url = $DokComplain->foto_sebelum;?>
                <img src="{{ $url }}" alt="" height="200px" width="300px">
            @else
            <?php $url = storage_path('app/' . $DokComplain->foto_sebelum . ''); ?>

                @if(file_exists($url))
                <img src="{{ $url }}" alt="" height="200px" width="300px">
                @else
                <?php $url = storage_path('app/uploads/img/no_images2.png'); ?>
                <img src="{{ $url }}" alt="" height="200px" width="300px">
                @endif
            @endif
                
            </div>

            <div class="w3-col s6  w3-center">
            <p>
            <strong>FOTO SESUDAH</strong>
            </p> <br>
            <?php 
            
            $url = storage_path('app/' . $DokComplain->foto_sesudah . '');
            ?>

            @if(file_exists($url)) 
            <img src="{{ $url }}" alt="" height="200px" width="300px">
            @else

                <?php $url = public_path($DokComplain->foto_sesudah); ?>
                @if(file_exists($url)) 
                    <img src="{{ $url }}" alt="" height="200px" width="300px">
                @else
                <?php $url = storage_path('app/uploads/img/no_images2.png'); ?>
                <img src="{{ $url }}" alt="" height="200px" width="300px">
                @endif
            @endif
            </div>
        </div>
    </div>
</body>
</html>