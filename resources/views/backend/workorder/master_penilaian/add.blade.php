<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>Add Form</div>
    <div class='panel-body'>
      <form method='post' action='{{CRUDBooster::mainpath('add-save')}}'>
      {{ csrf_field() }}
    <input type='hidden' name='return_url' value='{{ CRUDBooster::mainpath() }}'/>
    <input type='hidden' name='ref_mainpath' value='{{ CRUDBooster::mainpath() }}'/>

    <div class='form-group header-group-0 ' id='form-group-tahun' style="">
        <label class='control-label col-sm-2'>
            Tahun
        <span class='text-danger' title='This field is required'>*</span>
        </label>

        <div class="col-sm-10">
            <input type='text' title="Tahun"
                required readonly    class='form-control'
                name="tahun" id="tahun" value='{{ CRUDBooster::CurrYear() }}'/>

            <div class="text-danger"></div>
            <p class='help-block'></p>

        </div>
    </div>

    <div class='form-group header-group-0 ' id='form-group-bulan' style="">
        <label class='control-label col-sm-2'>Bulan
                <span class='text-danger' title='This field is required'>*</span>
        </label>

        <div class="col-sm-10">
            <select class='form-control' id="bulan" data-value='' required    name="bulan">
                <option value=''>** Please select a Bulan</option>
                @foreach($bulan as $rows)
                <option value='{{ $rows->id }}'>{{ $rows->nama }}</option>
                @endforeach
            </select>
            <div class="text-danger"></div>
            <p class='help-block'></p>
        </div>
    </div>

<div class='form-group header-group-0 ' id='form-group-aset_id' style="">
    <label class='control-label col-sm-2'>Aset
            <span class='text-danger' title='This field is required'>*</span>
    </label>

    <div class="col-sm-10">
        <select style='width:100%' class='form-control' id="aset_id"
                required    name="aset_id"  >
            <option value=''>** Please select a Aset</option>
            @foreach($aset as $rows)
            <option value='{{ $rows->id }}'>{{ $rows->nama }}</option>
            @endforeach
        </select>
        <div class="text-danger">
            
        </div><!--end-text-danger-->
        <p class='help-block'></p>

    </div>
</div>
         
        <!-- etc .... -->
        
      
    </div>
    <div class='panel-footer'>
      <input type='submit' class='btn btn-primary' value='Save changes'/>
    </div>
  </div>
  </form>
@endsection