<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title>Laporan Rekap Sertifikat</title>
</head>
<body>
<div>

<img src="{{ base_path() . '/storage/app/uploads/img/logo2.png' }}" alt="spatium" style="width:50%;max-width:200px">
</div>
    <div class="w3-center">
        <strong>DAFTAR SERTIFIKASI DAN INSTALASI PERALATAN DAN UTILITAS BANGUNAN</strong>
    </div>
    <br>
    <div class="w3-tiny" style="overflow-x:auto;">
    <table class="w3-table w3-bordered" border="1">
		<thead class="w3-center">
			<tr>
				<th>No</th>
                <th>Lokasi</th>
                <th>INSTALASI PERALATAN/UTILITAS</th>
                <th>NO. SERTIFIKASI</th>
                <th>QUANTITY  (UNIT)</th>
                <th>TGL SERTIFIKAT</th>
                <th>MASA BERLAKU (TAHUN)</th>
                <th>MASA KADALUARSA</th>
                <th>KETERANGAN</th>
			</tr>
		</thead>
		<tbody>
        <?php 
        $x =1; 
        $a = "";
        $b = "";
        $c = "";
        $aa = "";
        $bb = "";
        $cc = "";
        ?>
        @foreach($sertifikat as $data)
        <?php 
        $a = $data->aset; 
        $aa = $data->peralatan;
        if($b==$a){$c="";}else{$c=$a;$b=$a;}
        if($bb==$aa){$cc="";}else{$cc=$aa;$bb=$aa;}
        ?>
            <tr>
            
                <td class="w3-center">{{ $x }}</td>
                <td>{{ $c }}</td>
                <td>{{ $cc }}</td>
                <td>No : {{ $data->no_ijin }} <br>
                Re : {{ $data->no_reg }}</td>
                <td class="w3-center">{{ $data->quantity }}</td>
                <td class="w3-center">{{ date("d-M-y" , strtotime($data->tgl_ijin)) }}</td>
                <td class="w3-center">{{ $data->masa_berlaku }}</td>
                <td class="w3-center">{{ date("d-M-y" , strtotime($data->tgl_kadaluarsa)) }}</td>
                <td>{{ $data->catatan }}</td>
            </tr>
            <?php $x++; ?>
        @endforeach
		</tbody>
	</table>
    </div>
</body>
</html>