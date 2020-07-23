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

  <div class='panel panel-default'>
    <div class='panel-heading'>Detail Work Order</div>
    <div class="panel-body">
      <div class='box-body'>
        <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
          <label class='control-label col-sm-2'>
          Pusat Biaya
          </label>
          <div class="col-sm-10">
                  <input type="text" name="nama_pemohon" id="nama_pemohon" class="form-control" readonly maxlenght=255  value = "{{ $row2->pusat_biaya }}"require>
                  <div class="text-danger"></div>
                  <p class='help-block'></p>
          </div>
        </div>
        <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
          <label class='control-label col-sm-2'>
          Biaya
          </label>
          <div class="col-sm-10">
                  <input type="text" name="nama_pemohon" id="nama_pemohon" class="form-control" readonly maxlenght=255  value = "Rp. {{ number_format($row2->biaya , 0 , '.' , ',' ) }}"require>
                  <div class="text-danger"></div>
                  <p class='help-block'></p>
          </div>
        </div>
        <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
          <label class='control-label col-sm-2'>
          Waktu Pekerjaan
          </label>
          <div class="col-sm-10">
                  <input type="text" name="unit_pelapor" id="unit_pelapor" class="form-control" readonly maxlenght=255  value = "{{ $row2->waktu_pekerjaan }} {{ $row2->satuan_waktu }}"require>
                  <div class="text-danger"></div>
                  <p class='help-block'></p>
          </div>
        </div>
        
        <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
          <label class='control-label col-sm-2'>
          Uraian Koordinator Wilayah
          </label>
          <div class="col-sm-10">
                  <input type="text" name="nama_pemohon" id="nama_pemohon" class="form-control" readonly maxlenght=255  value = "{{ $row2->keterangan }}"require>
                  <div class="text-danger"></div>
                  <p class='help-block'></p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class='panel panel-default'>
    <div class='panel-heading'>Set Jadwal</div>
    <div class='panel-body'>
      <form method='post' action='{{CRUDBooster::mainpath('korea/save/'.$row->id)}}'>
      {{ csrf_field() }}
      <div class="box-body" id="parent-form-area">
        <input type='hidden' name="complain_id" value='{{ $row->id }}'/>   
        <div class='form-group form-datepicker header-group-0 ' id='form-group-tgl_akhir'
                style="">
                <label class='control-label col-sm-2'>Set Tanggal Mulai Pekerjaan
                                <span class='text-danger' title='This field is required'>*</span>
                        </label>

                <div class="col-sm-10">
                    <div class="input-group">
                        <span class="input-group-addon open-datetimepicker"><a><i class='fa fa-calendar '></i></a></span>
                        <input type='text' title="Tgl Akhir" readonly
                            required    class='form-control notfocus input_date' name="tanggal_mulai" id="tanggal_mulai"
                            value=''/>
                    </div>
                    <div class="text-danger"></div>
                    <p class='help-block'></p>
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