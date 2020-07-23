<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <p><a title='Return' href='{{g("return_url")}}'><i class='fa fa-chevron-circle-left '></i>
                        &nbsp; {{trans("crudbooster.form_back_to_list",['module'=>CRUDBooster::getCurrentModule()->name])}}</a></p>
  <div class='panel panel-default'>
    <div class='panel-heading'>Add SLA Aset</div>
    <div class='panel-body'>
      <form method='post' action='{{ route("update-sla-aset" , $id) }}' class='form-horizontal'>
        <div class='form-group'>
            <label class='control-label col-sm-2'>Aset
                        <span class='text-danger' title='This field is required'>*</span>
            </label>
        
            <div class="col-sm-10">
                <input type="hidden" class="form-control" name="aset_id" id="aset_id" value="{{ $aset_id}}">
                <input type="text" class="form-control" name="aset_name" id="aset_name" value="{{ $aset_name }}" readonly=true>
                <div class="text-danger">
                    <p class='help-block'></p>
                </div>
            </div>
        </div>
        <!-- SLA -->
        <div class='form-group'>
            <label class='control-label col-sm-2'>
                        
            </label>
        
            <div class="col-sm-10">
            <input type="checkbox" name="pilih_semua" id="pilih_semua" class='c' value="0"> Pilih Semua<br>
                <div class="text-danger">
                    <p class='help-block'></p>
                </div>
            </div>
        </div>
        @foreach($sla as $data_sla)
        
       
        <div class='form-group'>
            <label class='control-label col-sm-2'>
            </label>
            <div class="col-sm-10">
            <input type="checkbox" name="sla[{{ $data_sla->id }}]" value="{{ $data_sla->id }}"
            <?php
                foreach ($sla_aset as $data_sla_aset) {
                    if ($data_sla->id == $data_sla_aset->sla_id) {
                        echo "Checked";
                    }
                }
            ?>
            
            > {{ $data_sla->uraian }}<br>
                <div class="text-danger">
                    <p class='help-block'></p>
                </div>
            </div>
        </div>
        
        
        @endforeach
      
    </div>
    <div class='panel-footer text-center'>
    <input type="hidden"  name='_token' value='{{ csrf_token() }}'>
    <a href='http://127.0.0.1:8000/pgnmas/sa' class='btn btn-default'><i
                                                    class='fa fa-chevron-circle-left'></i> Back</a>
      <input type='submit' class='btn btn-primary' value='Save changes'/>
    </div>
    </form>
  </div>
@endsection