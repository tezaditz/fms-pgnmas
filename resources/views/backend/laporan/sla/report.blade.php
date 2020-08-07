<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<title>Rekap Penilaian</title>
</head>
<body>
<div class="w3-display-container ">
    <div class="w3-display-topleft">
        <img src="{{ base_path() . '/storage/app/uploads/img/logo.png' }}" alt="" height="50px" widht="80px">
    </div>
    <div class="w3-display-topright">
        <img src="{{ base_path() . '/storage/app/uploads/img/logo2.png' }}" alt="" height="100px">
    </div>
    <div class="w3-display-topmiddle"><div class="w3-center">
        <strong>
        REKAP PENILAIAN SLA <br/>
        PERIODE {{ strtoupper($period_text) }} <br/>
        TAHUN {{ $tahun }}
        </strong>
    </div>

</div>
<br><br><br><br><br>
<div class="w3-tiny">
        <table class="w3-table w3-bordered" border="1">
            <thead class="w3-center">
                <tr>
                    <th rowspan="2">No</th>
                    <th rowspan="2">Wilayah</th>
                    <!-- <th rowspan="2">Indeks</th> -->
                    <th rowspan="2">Lokasi Gedung/Bangunan</th>
                    <th colspan="6">Pencapaian SLA</th>
                </tr>
                <tr>
                    <th>{{ $bulan[0] }}</th>
                    <th>{{ $bulan[1] }}</th>
                    <th>{{ $bulan[2] }}</th>
                    <th>{{ $bulan[3] }}</th>
                    <th>{{ $bulan[4] }}</th>
                    <th>{{ $bulan[5] }}</th>
                </tr>
            </thead>
            <tbody>
                <?php $x =1;
                $tot1=0;$tot2=0;$tot3=0;$tot4=0;$tot5=0;$tot6=0 ?>
                @foreach($pencapaian as $data)
                <tr>
                    <td class="text-center">{{ $x }}</td>
                    <td>{{ $data->uraian }}</td>
                    <td>{{ $data->nama }}</td>
                    @if($period == 1)
                    <?php
                        $tot1 = $tot1 + $data->jan;$tot2 = $tot2 + $data->feb;$tot3 = $tot3 + $data->mar;
                        $tot4 = $tot4 + $data->apr;$tot5 = $tot5 + $data->mei;$tot6 = $tot6 + $data->jun;
                    ?>
                    <td class="w3-right-align">{{ number_format($data->jan , 2 , "." , ',') }} %</td>
                    <td class="w3-right-align">{{ number_format($data->feb , 2 , "." , ',') }} %</td>
                    <td class="w3-right-align">{{ number_format($data->mar , 2 , "." , ',') }} %</td>
                    <td class="w3-right-align">{{ number_format($data->apr , 2 , "." , ',') }} %</td>
                    <td class="w3-right-align">{{ number_format($data->mei , 2 , "." , ',') }} %</td>
                    <td class="w3-right-align">{{ number_format($data->jun , 2 , "." , ',') }} %</td>
                    @else
                    <?php
                        $tot1 = $tot1 + $data->jul;$tot2 = $tot2 + $data->aug;$tot3 = $tot3 + $data->sep;
                        $tot4 = $tot4 + $data->oct;$tot5 = $tot5 + $data->nov;$tot6 = $tot6 + $data->dec;
                    ?>
                    <td class="w3-right-align">{{ number_format($data->jul , 2 , "." , ',') }} %</td>
                    <td class="w3-right-align">{{ number_format($data->aug , 2 , "." , ',') }} %</td>
                    <td class="w3-right-align">{{ number_format($data->sep , 2 , "." , ',') }} %</td>
                    <td class="w3-right-align">{{ number_format($data->oct , 2 , "." , ',') }} %</td>
                    <td class="w3-right-align">{{ number_format($data->nov , 2 , "." , ',') }} %</td>
                    <td class="w3-right-align">{{ number_format($data->dec , 2 , "." , ',') }} %</td>
                    @endif
                    
                </tr>
                <?php $x++; ?>
                @endforeach
                <tr>
                    <td class="w3-center" colspan=3><strong>TOTAL</strong></td>
                    <td class="w3-right-align"><strong>{{ number_format($tot1, 2 , "." , ',') }}</strong></td>
                    <td class="w3-right-align"><strong>{{ number_format($tot2, 2 , "." , ',') }}</strong></td>
                    <td class="w3-right-align"><strong>{{ number_format($tot3, 2 , "." , ',') }}</strong></td>
                    <td class="w3-right-align"><strong>{{ number_format($tot4, 2 , "." , ',') }}</strong></td>
                    <td class="w3-right-align"><strong>{{ number_format($tot5, 2 , "." , ',') }}</strong></td>
                    <td class="w3-right-align"><strong>{{ number_format($tot6, 2 , "." , ',') }}</strong></td>
                </tr>

            </tbody>
        </table>
    </div>
</body>
</html>