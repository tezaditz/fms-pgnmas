@extends('crudbooster::admin_template')

@section('content')
@push('bottom')
<script type="text/javascript">
        $(document).ready(function(){
       
        });

        function cetak(){
            a = document.getElementById('period');
            console.log(a.value);
        };


</script>
@endpush
<form class='form-horizontal' method='post' id="form" enctype="multipart/form-data" action='/pgnmas/utilitasReport' target="_blank">
<input type="hidden" name="_token" value="{{ csrf_token() }}">
<div class='panel panel-default'>
    <div class='panel-heading'>
        Rekap Penilaian Utilitas
    </div>
    <div class='panel-body'>
            <div class="form-group header-group-0 " id="form-group-pemakaian" style="">
              <label class="control-label col-sm-2 text-right">TAHUN
                              <span class='text-danger' title='This field is required'>*</span>
                      </label>

              <div class="col-sm-10">
                  <input type="text" title="tahun" required maxlenght=10    class="form-control text-center" readonly="true"
                        name="tahun" id="tahun" value="{{ CRUDBooster::CurrYear() }}">
                  <div class="text-danger"></div>
                  <p class="help-block"></p>
              </div>
            </div>
          <div class='form-group header-group-0 ' id='form-group-period' style="">
                <label class='control-label col-sm-2 text-right'>UTILITAS
                        <span class='text-danger' title='This field is required'>*</span>
                </label>
                
                <div class="col-sm-10">
                    <select name="utilitas" id="utilitas" class="form-control" required>
                        <option value="">-- Silahkan Pilih Utilitas --</option>
                        <option value="listrik">Listrik</option>
                        <option value="airpam">Air PAM</option>
                        <option value="airsumur">Air Sumur</option>
                        <option value="limbahbasah">Limbah Basah</option>
                        <option value="limbahkering">Limbah Kering</option>
                        <option value="solar">Solar</option>
                    </select>
                </div>
          </div>
    </div>
    <div class="panel-footer text-center">
        <a href="" class="btn btn-sm btn-default"><i class="fa fa-chevron-circle-left" aria-hidden="true"></i> Kembali</a>
        <button type="submit" class="btn btn-sm btn-success">
            <i class="fa fa-print" aria-hidden="true"></i> Cetak
        </button>
    </div>
</div>
</form>
@endsection
