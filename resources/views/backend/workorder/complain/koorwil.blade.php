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
        <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
          <label class='control-label col-sm-2'>
          Foto
          </label>
          <div class="col-sm-10">
                  <img src="{{ $row2->photo }}" alt="">
                  <div class="text-danger"></div>
                  <p class='help-block'></p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class='panel panel-default'>
    <div class='panel-heading'>{{ $page_title }}</div>
    <div class='panel-body'>
      <form method='post' action='{{CRUDBooster::mainpath('korwil/save/'.$row->id)}}'>
      {{ csrf_field() }}
      <div class="box-body" id="parent-form-area">

        <input type='hidden' name="complain_id" value='{{ $row->id }}'/>   
          <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
            <label class='control-label col-sm-2'>
            Pusat Biaya
            </label>

            <div class="col-sm-10">
              <select name="pusat_biaya" id="pusat_biaya" class="form-control" require>
                <option value="">** Please Select Pusat Biaya</option>
                <option value="PGNMAS">PGNMAS</option>
                <option value="PGN">PGN</option>
                <option value="Lainnya">Lainnya..</option>
              </select>

              <div class="text-danger"></div>
              <p class='help-block'></p>

            </div>
          </div>

          <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
            <label class='control-label col-sm-2'>
            Keterangan Biaya
            </label>

            <div class="col-sm-10">
              <input type="text" name="keterangan_biaya" id="keterangan_biaya" class="form-control" readonly maxlenght=255 require>
              <div class="text-danger"></div>
              <p class='help-block'></p>

            </div>
          </div>

          <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
            <label class='control-label col-sm-2'>
            Biaya
            </label>

            <div class="col-sm-10">
              <input type="text" name="biaya" id="biaya" class="form-control text-right" require placeholder=0 maxlength=11 onkeypress='return isNumber(event)' onkeyup='return addcoma(this)'>
              <div class="text-danger"></div>
              <p class='help-block'></p>

            </div>
          </div>

          <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
            <label class='control-label col-sm-2'>
            Waktu Pekerjaan
            </label>

            <div class="col-sm-10">
              <input type="text" name="waktu_pekerjaan" id="waktu_pekerjaan" class="form-control text-right" require placeholder=0 maxlength=2 onkeypress='return isNumber(event)' onkeyup='return addcoma(this)'>
              <div class="text-danger"></div>
              <p class='help-block'></p>

            </div>
          </div>

          <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
            <label class='control-label col-sm-2'>
            Satuan Waktu
            </label>

            <div class="col-sm-10">
              <select name="satuan_waktu" id="satuan_waktu" class="form-control" require>
                <option value="">** Please Select Satuan Waktu</option>
                <option value="Menit">Menit</option>
                <option value="Jam">Jam</option>
                <option value="Hari">Hari</option>
              </select>

              <div class="text-danger"></div>
              <p class='help-block'></p>

            </div>
          </div>

          <div class='form-group header-group-0 ' id='form-group-pusat_biaya' style="">
            <label class='control-label col-sm-2'>
            Keterangan
            </label>

            <div class="col-sm-10">
              <input type="text" name="Keterangan" id="Keterangan" class="form-control" require maxlength=225>
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