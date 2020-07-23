<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>Master Complain</div>
    <div class="panel-body">
      <div class='box-body'>
        <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
          <label class='control-label col-sm-2'>
          Nomor Work Order
          </label>
          <div class="col-sm-10">
                  <input type="text" name="nama_pemohon" id="nama_pemohon" class="form-control" readonly maxlenght=255  value = "{{ $row->nomor }}"require>
                  <div class="text-danger"></div>
                  <p class='help-block'></p>
          </div>
        </div>
        <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
          <label class='control-label col-sm-2'>
          Nama Pemohon
          </label>
          <div class="col-sm-10">
                  <input type="text" name="nama_pemohon" id="nama_pemohon" class="form-control" readonly maxlenght=255  value = "{{ $row->nama_pemohon }}"require>
                  <div class="text-danger"></div>
                  <p class='help-block'></p>
          </div>
        </div>
        <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
          <label class='control-label col-sm-2'>
          Unit Pelapor
          </label>
          <div class="col-sm-10">
                  <input type="text" name="unit_pelapor" id="unit_pelapor" class="form-control" readonly maxlenght=255  value = "{{ $row->unit_pelapor }}"require>
                  <div class="text-danger"></div>
                  <p class='help-block'></p>
          </div>
        </div>
        <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
          <label class='control-label col-sm-2'>
          Jenis Complain
          </label>
          <div class="col-sm-10">
                  <input type="text" name="nama_pemohon" id="nama_pemohon" class="form-control" readonly maxlenght=255  value = "{{ $jenis_complain->uraian }}"require>
                  <div class="text-danger"></div>
                  <p class='help-block'></p>
          </div>
        </div>
        <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
          <label class='control-label col-sm-2'>
          Uraian Complain
          </label>
          <div class="col-sm-10">
                  <input type="text" name="nama_pemohon" id="nama_pemohon" class="form-control" readonly maxlenght=255  value = "{{ $row->uraian }}"require>
                  <div class="text-danger"></div>
                  <p class='help-block'></p>
          </div>
        </div>
      </div>
    </div>
  </div>

    <div class="panel panel-default">
        <div class="panel-heading">Detail Work Order
        </div>
        <div class="panel-body">
            <div class="box-body">
            <!-- Pusat Biaya  -->
                <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
                    <label class='control-label col-sm-2'>
                    Pusat Biaya
                    </label>
                    <div class="col-sm-10">
                            <input type="text" name="pusat_biaya" id="pusat_biaya" class="form-control" readonly maxlenght=255  value = "{{ $row2->pusat_biaya }}"require>
                            <div class="text-danger"></div>
                            <p class='help-block'></p>
                    </div>
                </div>
            <!-- End Pusat Biaya -->
            <!-- Biaya  -->
                <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
                    <label class='control-label col-sm-2'>
                    Biaya
                    </label>
                    <div class="col-sm-10">
                            <input type="text" name="biaya" id="biaya" class="form-control " readonly maxlenght=255  value = " Rp. {{ number_format($row2->biaya , 0 , '.' , ',') }}"require>
                            <div class="text-danger"></div>
                            <p class='help-block'></p>
                    </div>
                </div>
            <!-- End Biaya -->
            <!-- Waktu Pekerjaan  -->
                <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
                    <label class='control-label col-sm-2'>
                    Waktu Pekerjaan
                    </label>
                    <div class="col-sm-10">
                            <input type="text" name="waktu_pekerjaan" id="waktu_pekerjaan" class="form-control " readonly maxlenght=255  value = "{{ $row2->waktu_pekerjaan }} {{ $row2->satuan_waktu }}"require>
                            <div class="text-danger"></div>
                            <p class='help-block'></p>
                    </div>
                </div>
            <!-- End Waktu Pekerjaan -->
            <!-- Keterangan  -->
                <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
                    <label class='control-label col-sm-2'>
                    Keterangan
                    </label>
                    <div class="col-sm-10">
                            <input type="text" name="keterangan" id="keterangan" class="form-control " readonly maxlenght=255  value = "{{ $row2->keterangan }}" require>
                            <div class="text-danger"></div>
                            <p class='help-block'></p>
                    </div>
                </div>
            <!-- End Keterangan -->
            <!-- Jadwal Mulai Pekerjaan -->
                <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
                    <label class='control-label col-sm-2'>
                    Jadwal Mulai Pekerjaan
                    </label>
                    <div class="col-sm-10">
                            <input type="text" name="tanggal_mulai" id="tanggal_mulai" class="form-control " readonly maxlenght=255  value = "{{ $row2->tanggal_mulai }}" require>
                            <div class="text-danger"></div>
                            <p class='help-block'></p>
                    </div>
                </div>
            <!-- End Jadwal Mulai Pekerjaan -->
            </div>
        </div>
    </div>

  <div class='panel panel-default'>
    <div class='panel-heading'>Detail Pekerjaan</div>
    <div class='panel-body'>
      <form method='post' enctype="multipart/form-data" action='{{CRUDBooster::mainpath('leader/save/'.$row->id)}}' >
      {{ csrf_field() }}
      <div class="box-body" id="parent-form-area">
        <input type='hidden' name="complain_id" value='{{ $row->id }}'/>   
        <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
                    <label class='control-label col-sm-2'>
                    Catatan
                    </label>
                    <div class="col-sm-10">
                            <input type="text" name="notes_leader" id="notes_leader" class="form-control " maxlenght=255>
                            <div class="text-danger"></div>
                            <p class='help-block'></p>
                    </div>
                </div>
        <div class='form-group header-group-0 ' id='form-group-foto_sebelum' style="">
            <label class='col-sm-2 control-label'>Foto Sebelum
                            <span class='text-danger' title='This field is required'>*</span>
                    </label>

            <div class="col-sm-10">
            
            <?php 
              $path = $row2->path_foto_sebelum;
              $foto = $row2->foto_sebelum;
              if($path == 'Tidak Ada'):
                $a = strlen($foto) - 5;
                $b = substr($foto , $a , 5);
                $c = explode("." , $b );
                $d = Count($c);
             
              endif
            ?>
            @if($d == 1)   
            <input type="file" id="foto_sesudah" title="Foto Before" required   class="form-control" name="foto_sesudah"/>
            @else
                  @if($row2->foto_sebelum == '')
                  <input type="file" id="foto_sesudah" title="Foto Before" required   class="form-control" name="foto_sesudah"/>
                  @else
                  <p><img  title="Image For Foto_sesudah" src='{{ $row2->foto_sebelum }}' height="300" width="500"/></a></p>
                  <a href='{{ route("HapusFotoSebelum" , [ id =>  $row2->id ]) }}' class = "btn btn-md btn-danger"><i class = "fa fa-trash"></i></a>
                  @endif
           
            @endif

            </div>

        </div>
        <div class='form-group header-group-0 ' id='form-group-foto_sesudah' style="">
            <label class='col-sm-2 control-label'>Foto Sesudah
                            <span class='text-danger' title='This field is required'>*</span>
                    </label>

            <div class="col-sm-10">
                                    <input type='file' id="foto_sesudah" title="Foto Before" required   class='form-control' name="foto_sesudah"/>
                    <p class='help-block'></p>
                        <div class="text-danger"></div>
                
            </div>

        </div>


      </div>
      
    </div>
    <div class='panel-footer text-center'>
      <a href="{{ url()->previous() }}" class="btn btn-default"><i class="fa fa-chevron-circle-left"></i> Back</a>
      <input type='submit' class='btn btn-primary' value='Save changes'/>
    </div>
    </form>
  </div>
@endsection