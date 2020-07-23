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
<form class='form-horizontal' method='post' id="form" enctype="multipart/form-data" action='/pgnmas/laporan/sertifikat' target="_blank">
<input type="hidden" name="_token" value="{{ csrf_token() }}">
<div class='panel panel-default'>
    <div class='panel-heading'>
        Cetak Rekapan Sertifikat
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
                <label class='control-label col-sm-2 text-right'>Jenis Laporan
                        <span class='text-danger' title='This field is required'>*</span>
                </label>
                <label class='control-label col-sm-2'><input type="radio" name="JnsFile" value="PDF">PDF</label>
                <label class='control-label col-sm-2'><input type="radio" name="JnsFile" value="EXCEL">EXCEL</label>
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
