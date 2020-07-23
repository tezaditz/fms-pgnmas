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
                    <th style="width:30%" class="w3-center">
                    <img src="{{ base_path() . '/storage/app/uploads/img/logo.png' }}" alt="" height="50" widht="80">
                    </th>
                    <th class="w3-small w3-center">FORM HASIL TINDAKLANJUT PEKERJAAN RUTIN <br>
                    BULAN {{ strtoupper($bulan->nama) }} TAHUN {{ $tahun }} <br>
                     PT.PERMATA GRAHA NUSANTARA</th>
                    
                </tr>
            </thead>
        </table>
    </div>
    <div class="w3-display-container">
        <div class="w3-display-topleft w3-col s6">
            <table class="w3-table-all w3-tiny">
                <tr>
                    <td colspan=3>
                    <strong> <i> 1. SERVICE LEVEL AGREEMENTS</i>
                    </strong>
                    </td>
                </tr>
                <tr>
                    <td width='40%'>URAIAN SLA</td>
                    <td width='5%'>:</td>
                    <td width='55%'>{{ $sla->uraian }}</td>
                </tr>
                <tr><td>DETAIL PEKERJAAN</td>
                    <td>:</td>
                    <td>{{ $detail_sla->uraian }}</td>
                </tr>
                <tr>
                    <td>TANGGAL</td>
                    <td>:</td>
                    <td>{{ $tgl }} / {{ $bln }} / {{ $thn }}</td>
                </tr>
                <tr>
                    <td colspan=3></td>
                </tr>
                <tr>
                    <td colspan=3></td>
                </tr>
            </table>
        </div>
        <div class="w3-display-topright w3-col s6">
            <table class="w3-table-all w3-tiny">
                <tr>
                    <td colspan=3>
                    <strong> <i> 2. LOKASI</i>
                    </strong>
                    </td>
                </tr>
                <tr>
                    <td width='40%'>NAMA ASET</td>
                    <td width='5%'>:</td>
                    <td width='55%'>{{ $sla->uraian }}</td>
                </tr>
                <tr><td>ALAMAT</td>
                    <td>:</td>
                    <td>{{ $detail_sla->uraian }}</td>
                </tr>
                <tr>
                    <td>AREA</td>
                    <td>:</td>
                    <td>{{ $area->uraian }}</td>
                </tr>
                <tr>
                    <td>WILAYAH</td>
                    <td>:</td>
                    <td>{{ $wilayah->uraian }}</td>
                </tr>
                <tr>
                    <td colspan=3></td>
                </tr>
            </table>
        </div>
        <div class="w3-display-container w3-tiny">
        <div class="w3-row">
            <div class="w3-col s6  w3-center">
            <p>
            <strong>FOTO SEBELUM</strong>
            </p> <br>
                <img src="{{ base_path() . '/storage/app/' }}{{$sub->foto_sebelum}}" alt="" height="200" width="350">
            </div>
            <div class="w3-col s6  w3-center">
            <p>
            <strong>FOTO SESUDAH</strong>
            </p> <br>
            <img src="{{ base_path() . '/storage/app/' }}{{$sub->foto_sesudah}}" alt="" height="200" width="350">
            </div>
        </div>
    </div>
    </div>
</body>
</html>