<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <p><a title='Return' href='{{g("return_url")}}'><i class='fa fa-chevron-circle-left '></i>
                        &nbsp; {{trans("crudbooster.form_back_to_list",['module'=>CRUDBooster::getCurrentModule()->name])}}</a></p>
  <div class='panel panel-default'>
    <div class='panel-heading'>Add SLA Aset</div>
    <div class='panel-body'>
      <form method='post' action='{{ route("update-sedia-sla" , $id) }}' class='form-horizontal'>
      <div class='form-group'>
            <label class='control-label col-sm-2'>Tahun
                        <span class='text-danger' title='This field is required'>*</span>
            </label>
        
            <div class="col-sm-10">
                        <input type='number' step="1" title="Tahun"
                            required readonly     class='form-control'
                            name="tahun" id="tahun" value='{{ CRUDBooster::CurrYear() }}'/>
                        <div class="text-danger"></div>
                        <p class='help-block'></p>
                    </div>
        </div>
        <div class='form-group'>
        
            <label class='control-label col-sm-2'>Aset
                        <span class='text-danger' title='This field is required'>*</span>
            </label>
        
            <div class="col-sm-10">
                <select style='width:100%' class='form-control' id="aset_id"
                    required    name="aset_id"  >
                    <option value="">-- Pilih Aset --</option>
                    @foreach($aset as $data_aset)
                    <option value="{{ $data_aset->id }}"
                    <?php
                    if ($data_aset->id == $aset_id) {
                        echo 'Selected';
                    }
                    ?>
                    
                    >{{ $data_aset->nama }}</option>
                    @endforeach
                </select>
                <div class="text-danger">
                    <p class='help-block'></p>
                </div>
            </div>
        </div>
        <!-- SLA -->
        
        <table class='table table-striped table-bordered'>
            <thead>
                <tr>
                    <th>Uraian</th>
                    <th style='width:5%' class='text-center'><input type="checkbox" name="pilih_semua" id="pilih_semua" class='c' value="0">Pilih</th>
                </tr>
                
            </thead>
            <tbody>
            @foreach($sla as $data_sla)
                <tr>
                    <td>
                    <strong>
                    {{ $data_sla->uraian }}
                    </strong>
                    </td>
                    <td class='text-center'>
                    <input type="checkbox" name="master[{{ $data_sla->id }}]" class='{{ $data_sla->uraian }}' value="{{ $data_sla->id }}" onClick='check_uncheck_checkbox(this , this.checked);' 
                    <?php
                    foreach ($sla_id as $key => $value) {
                        if($data_sla->id == $value->sla_id)
                        {
                            echo 'Checked';
                        }
                    }
                   ?>
                   
                    >
                    </td>
                </tr>
                @foreach($detail_sla as $data_detail_sla)
                    @if($data_detail_sla->sla_id == $data_sla->id)
                        <tr>
                            <td>{{ $data_detail_sla->uraian }}</td>
                            <td class='text-center'>
                            <input type="checkbox" name="detail[{{ $data_detail_sla->id }}]" class='{{ $data_sla->uraian }}' value="{{ $data_detail_sla->id }}"
                            <?php
                            foreach ($ketersediaan as $key => $value) {
                                if($data_detail_sla->id == $value->detail_sla_id)
                                {
                                    echo 'Checked';
                                }
                            }
                            ?>
                            
                            
                            >
                            </td>
                        </tr>
                   
                    @endif
                @endforeach    
            @endforeach
            </tbody>
        </table>

      
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