<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>Add Form</div>
    <div class='panel-body'>
      <form method='post' action="{{CRUDBooster::mainpath('add-save')}}" enctype="multipart/form-data" class='form-horizontal'>
        {{ csrf_field() }}
        <input type='hidden' name='return_url' value='http://127.0.0.1:8000/pgnmas/Solar'/>
        <input type='hidden' name='ref_mainpath' value='http://127.0.0.1:8000/pgnmas/Solar'/>
        <input type='hidden' name='ref_parameter' value='return_url=http://127.0.0.1:8000/pgnmas/Solar&amp;parent_id=&amp;parent_field='/>
        <div class="box-body" id="parent-form-area">
          <div class='form-group header-group-0 ' id='form-group-period' style="">
              <label class='control-label col-sm-2'>period
                      <span class='text-danger' title='This field is required'>*</span>
              </label>
              <div class="col-sm-10">
                  <select name="period" id="period" class="form-control">
                    <option value="">-- Silahkan Pilih Period</option>
                    @foreach($bulan as $key => $value)
                      <option value="{{ $value->id }}">{{ $value->nama }}</option>
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
                      <option value="{{ $value->id }}">{{ $value->nama }}</option>
                    @endforeach
                  </select>
                  <div class="text-danger">
                  </div>
                  <p class='help-block'></p>
              </div>
          </div>
          <div class="form-group header-group-0 " id="form-group-pemakaian" style="">
              <label class="control-label col-sm-2">Pemakaian
                              <span class='text-danger' title='This field is required'>*</span>
                      </label>

              <div class="col-sm-10">
                  <input type="text" title="Pemakaian" required maxlenght=10    class="form-control text-right inputMoney"
                        name="pemakaian" id="pemakaian" value="">
                  <div class="text-danger"></div>
                  <p class="help-block"></p>
              </div>
          </div>
          <div class="form-group header-group-0 " id="form-group-rupiah" style="">
              <label class="control-label col-sm-2">Rupiah
                              <span class='text-danger' title='This field is required'>*</span>
                      </label>

              <div class="col-sm-10">
                  <input type="text" title="Rupiah" required    class="form-control inputMoney"
                        name="rupiah" id="rupiah" value="">
                  <div class="text-danger"></div>
                  <p class="help-block"></p>
              </div>
          </div>
          <div class='form-group header-group-0 ' id='form-group-foto_before' style="">
    <label class='col-sm-2 control-label'>Foto Before
                    <span class='text-danger' title='This field is required'>*</span>
            </label>

    <div class="col-sm-10">
                            <input type='file' id="foto_before" title="Foto Before" required   class='form-control' name="foto_before"/>
            <p class='help-block'></p>
                <div class="text-danger"></div>

    </div>

</div>
<div class='form-group header-group-0 ' id='form-group-foto_after' style="">
    <label class='col-sm-2 control-label'>Foto After
                    <span class='text-danger' title='This field is required'>*</span>
            </label>

    <div class="col-sm-10">
                            <input type='file' id="foto_after" title="Foto Before" required   class='form-control' name="foto_after"/>
            <p class='help-block'></p>
                <div class="text-danger"></div>

    </div>

</div>
    
      
    </div>
    <div class='panel-footer'>
      <input type='submit' class='btn btn-primary' value='Save changes'/>
    </div>
    </form>
  </div>
@endsection