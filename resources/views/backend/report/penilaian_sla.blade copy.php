
<html><head>
	<title>PENILAIAN SERVICE LEVEL AGREEMENT (SLA)</title>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<script type="text/php">
      if (isset($pdf)) {
        $font = $fontMetrics->getFont("Arial", "bold");
        $pdf->page_text(555, 970, "Page {PAGE_NUM}/{PAGE_COUNT}", $font, 7, array(0, 0, 0));
      }
</script>
<div class="w3-container w3-row ">
	

<table id="header" class="w3-table ">
	<tr>
		<td>
			<p style="text-align: center;">PENILAIAN SERVICE LEVEL AGREEMENT (SLA) </p>
			<p style="text-align: center;">JASA MANAJEMEN GEDUNG, KAWASAN , DAN FASILITAS KANTOR</p>
		</td>
	</tr>
</table>

<table class="w3-table w3-small">
  <tr>
    <td width="20%">Periode </td>
    <td width="5%">:</td>
    <td width="75%">{{ $period->nama }}</td>
  </tr>
  <tr>
    <td>Area</td>
    <td>:</td>
    <td>{{$area->uraian}}</td>
  </tr>
  <tr>
    <td>Lokasi</td>
    <td>:</td>
    <td>{{$aset->nama}}</td>
  </tr>
  <tr>
    <td>Tanggal Pemeriksaan</td>
    <td>:</td>
    <td>{{ date('d-M-Y H:i:s' , strtotime($tanggal_kirim)) }}</td>
  </tr>
</table>

<table border="1" class="w3-table w3-border w3-small">
 <tr>
    
    <td rowspan="2" colspan="2"><p style="text-align: center;">URAIAN PEKERJAAN DAN LINGKUP KEGIATAN / SLA</p></td>
    <td rowspan="2"><p style="text-align: center;">Ketersediaan fasilitas (Ada / Tidak Ada)</p></td>
  	<td colspan="2"><p style="text-align: center;">Pelaksanaan Pekerjaan</p></td>
    <td colspan="3"><p style="text-align: center;"> Pencapaian SLA*</p></td>
    <td rowspan="2"><p style="text-align: center;"> Keterangan</p></td>
  </tr>
  
  <tr>
    <td ><p style="text-align: center;">Dilaksanakan</p></td>
    <td ><p style="text-align: center;">Tidak Dilaksanakan</p></td>
    <td ><p style="text-align: center;">Baik<br />
      (nilai =3)</p></td>
    <td ><p style="text-align: center;">Cukup<br />
      (nilai =2)</p></td>
    <td ><p style="text-align: center;">Kurang <br />
      (nilai =1)</p></td>
  </tr>
  @foreach($sla as $data)
      
      <tr>
        <td colspan=9><strong>{{ $data->uraian }}</strong></td>
      </tr>
      @foreach($detail as $data_detail)
          @if($data_detail->sla_id == $data->sla_id)
          <tr>
              <td colspan=2>{{ $data_detail->uraian }}</td>
              <td class="w3-center">
                  @if($data_detail->ketersediaan_fasilitas == 1)
                  Ada
                  @else
                  Tidak Ada
                  @endif
              </td>
              <td class="w3-center"> 
              <!-- Dilaksanakan -->
                  @if($data_detail->dilaksanakan == 1)
                      v
                  @endif    
              </td>
              <td class="w3-center">
                  @if($data_detail->dilaksanakan == 0)
                      v
                  @endif 
              </td>
              <td class="w3-center">
                  @if($data_detail->sesuai == 3)
                      v
                  @endif
              </td>
              <td class="w3-center">
                  @if($data_detail->sesuai == 2)
                      v
                  @endif
              </td>
              <td class="w3-center">
                  @if($data_detail->sesuai == 1)
                      v
                  @endif
              </td>
              <td class="w3-center"></td>
          </tr>
          @endif
      @endforeach
  @endforeach

  
</table>

<p style="text-align: center;"><i>*Jika terdapat fasilitas dilokasi yang menjadi objek, cukup beri tanda "-" pada pencapaian SLA</i></p>

<table border="1" class="w3-table w3-border w3-small">
  <tr>
    <td colspan="4">Kriteria Penilaian</td>
  </tr>
  <tr>
    <td>Ketersediaan Fasilitas</td>
    <td> {{ number_format($master->ketersediaan_fasilitas,2)}} </td>
    <td >PERSENTASE KEGIATAN</td>
    <td >{{ number_format($master->persentase_pelaksanaan,2)}} %</td>
    
  </tr>
  <tr>
  <td>Nilai maksimum SLA</td>
    <td >{{ number_format($master->ketersediaan_fasilitas * 3,2)}}</td>
    <td >PENCAPAIAN SLA</td>
    <td>{{ number_format($master->pencapaian,2)}} %</td>
  </tr>
</table>
</div>
<br>
        <br>
        <br>
<div class="w3-container w3-small">
  <div class="w3-cell-row">

    <div class="w3-container  w3-cell">
      <div class="w3-center">
        Dibuat Oleh <br>
        PT Permata Graha nusantara <br>
        Koordinator Area {{ $area->uraian }}
        <br>
        <br>
        <br>
        {{ $korea->username }}
        <br><br>
        
        Status  : <strong>Terkirim</strong> <br>
        Tanggal : {{ date( 'd-M-Y H:i:s' , strtotime($tanggal_kirim)) }}
        
      </div>
    </div>

    <div class="w3-container  w3-cell">
      <div class="w3-center">
        Menyetujui, <br>
        {{ $jabatanSA }} Area {{ $area->uraian }} <br>
        
        <br>
        <br>
        <br>
        {{ $SA->username }}
        <br><br>
        @if($master->status == 'DiSetujui')
        Status  : <strong>DiSetujui</strong> <br>
        Tanggal : {{ date( 'd-M-Y H:i:s' , strtotime($master->tanggal_disetujui)) }}
        @endif



      </div>
    </div>

  </div>
</div>

</body>
</html>