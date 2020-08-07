@extends('crudbooster::admin_template')

@section('content')
<div class='panel panel-default'>
    <div class='panel-heading'>
        Pencarian Data
    </div>
    <div class='panel-body'>
    <form action="" id='form-cari'>
        <div class='form-group header-group-0 ' id='form-group-period' style="">
              <label class='control-label col-sm-2'>Aset
                      <span class='text-danger' id='text_danger_aset_id' title='This field is required'>*</span>
              </label>
              <div class="col-sm-10">
                  <select name="aset_id" id="aset_id" class="form-control">
                    <option value="0">-- Silahkan Pilih Aset</option>
                    @foreach($aset as $key => $value)
                      <option value="{{ $value->id }}">{{ $value->nama }}</option>
                    @endforeach
                  </select>
                  <div class="text-danger">
                  </div>
                  <p class='help-block'></p>
              </div>
        </div>
        <div class='form-group header-group-0 ' id='form-group-period' style="">
              <label class='control-label col-sm-2'>Period
                      <span class='text-danger' title='This field is required'>*</span>
              </label>
              <div class="col-sm-10">
                  <select name="period" id="period" class="form-control">
                  <option value="0">-- Silahkan Pilih Period</option>
                  @foreach($period as $key => $value)
                      <option value="{{ $value->id }}">{{ $value->nama }}</option>
                    @endforeach
                  </select>
                  <div class="text-danger">
                  </div>
                  <p class='help-block'></p>
              </div>
        </div>
        <div class='form-group header-group-0 ' id='form-group-period' style="">
              <label class='control-label col-sm-2'>SLA
                      <span class='text-danger' title='This field is required'>*</span>
              </label>
              <div class="col-sm-10">
                  <select name="sla_id" id="sla_id" class="form-control">
                    <option value="0">-- Silahkan Pilih SLA</option>
                    @foreach($sla as $key => $value)
                      <option value="{{ $value->id }}">{{ $value->uraian }}</option>
                    @endforeach
                  </select>
                  <div class="text-danger">
                  </div>
                  <p class='help-block'></p>
              </div>
        </div>
        <div class='form-group header-group-0 ' id='form-group-period' style="">
              <label class='control-label col-sm-2'>Detail SLA
                      <span class='text-danger' title='This field is required'>*</span>
              </label>
              <div class="col-sm-10">
                  <select name="detail_sla" id="detail_sla" class="form-control">
                  </select>
                  <div class="text-danger">
                  </div>
                  <p class='help-block'></p>
              </div>
        </div>
        <div class='form-group header-group-0 ' id='form-group-period' style="">
              <label class='control-label col-sm-2'>Rincian Pekerjaan
                      <span class='text-danger' title='This field is required'>*</span>
              </label>
              <div class="col-sm-10">
                  <select name="rincian_pekerjaan" id="rincian_pekerjaan" class="form-control">
                  </select>
                  <div class="text-danger">
                  </div>
                  <p class='help-block'></p>
              </div>
        </div>
        
    </form>
    </div>
    <div class='panel-footer text-center'>
        <a href="javascript:void(0)" class='btn btn-primary btn-sm'> <i class='fa fa-refresh'></i> Reset </a>
        <a href="javascript:void(0)" class='btn btn-primary btn-sm' id='cari' name='cari'> <i class='fa fa-search'></i> Cari </a>
    </div>
</div>
<div class='panel panel-default'>
    <div class='panel-heading'>
        Data Dokumentasi Pekerjaan
    </div>
    <div class='panel-body'>
        <input type="hidden" id="base_url" name="base_url" value="{{ asset('/') }}">
        <table class='table'>
            <thead>
                <tr>
                    <th class='text-center'>Tanggal</th>
                    <th class='text-center'>Foto Sebelum</th>
                    <th class='text-center'>Foto Sesudah</th>
                    <th class='text-center'>Actions</th>
                </tr>
            </thead>
            <tbody>
               
            </tbody>
        </table>
    </div>
    <div class='panel-footer'>
    </div>
</div>
@endsection
