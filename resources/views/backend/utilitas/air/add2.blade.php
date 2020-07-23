<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@push('bottom')
<script src="{{ asset('js/utilitas/air/generate_table_detail.js') }}"></script>
@endpush
@section('content')
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>Add Form</div>
    <div class='panel-body' id="bodyform">
      
      <form method='post' action="{{CRUDBooster::mainpath('add-save')}}" enctype="multipart/form-data" class='form-horizontal'>
        {{ csrf_field() }}
        <input type='hidden' name='return_url' value='http://127.0.0.1:8000/pgnmas/Air'/>
        <input type='hidden' name='ref_mainpath' value='http://127.0.0.1:8000/pgnmas/Air'/>
        <input type='hidden' name='ref_parameter' value='return_url=http://127.0.0.1:8000/pgnmas/Air&amp;parent_id=&amp;parent_field='/>
        <div class="box-body" id="parent-form-area">
          <div class='form-group header-group-0 ' id='form-group-period' style="">
              <label class='control-label col-sm-2'>period
                      <span class='text-danger' title='This field is required'>*</span>
              </label>
              <div class="col-sm-10">
                  <select name="period" id="period" class="form-control">
                    <option value="0">-- Silahkan Pilih Period</option>
                    @foreach($bulan as $key => $value)
                      <option value="{{ $value->id }}" {{$value->id == $period  ? 'selected' : ''}}>{{ $value->nama }}</option>
                    @endforeach
                  </select>
                  <div class="text-danger">
                  </div>
                  <p class='help-block'></p>
              </div>
          </div>
          <div class='form-group header-group-0 ' id='form-group-aset_id' style="">
              <label class='control-label col-sm-2'>Aset
                      <span class='text-danger' title='This field is required'>*</span>
              </label>
              <div class="col-sm-10">
                  <select name="aset_id" id="aset_id" class="form-control">
                    <option value="">-- Silahkan Pilih Aset</option>
                    @foreach($aset as $key => $value)
                      <option value="{{ $value->id }}" {{$value->id == $asetid  ? 'selected' : ''}}>{{ $value->nama }}</option>
                    @endforeach
                  </select>
                  <div class="text-danger">
                  </div>
                  <p class='help-block'></p>
              </div>
          </div>
        @include('backend.utilitas.air.detail')
        
      
    </div>
    <div class='panel-footer'>
      
    </div>
    </form>
  </div>



@endsection