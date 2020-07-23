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
            <input type="hidden" class="form-control" id="aset_id" name="aset_id" value="{{ $aset->id }}"> 
            <input type="text" class="form-control" id="aset_name" name="aset_name" value="{{ $aset->nama }}" disabled>
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
                <tr class="danger">
                    <td>
                    <strong>
                    {{ $data_sla->uraian }}
                    </strong>
                    </td>
                    <td class='text-center'>
                    <input type="checkbox" name="master[{{ $data_sla->id }}]" class='master[{{$data_sla->id}}]' value="{{ $data_sla->id }}" onClick='check_uncheck_checkbox(this , this.checked);' 
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
                        <tr class="success">
                            <td>
                            
                            {{ $data_detail_sla->uraian }}</td>
                            <td class='text-center'>
                            <input type="checkbox"  name="detail[{{ $data_detail_sla->id }}]" class='master[{{$data_sla->id}}]' value="{{ $data_detail_sla->id }}" onClick='check_uncheck_checkbox_sub(this , this.checked);' 
                            <?php
                                    $x = 0;
                                    foreach ($ketersediaan as $key => $value) {
                                        if($data_detail_sla->id == $value->detail_sla_id)
                                        {
                                            if($x == 0){
                                                $x = 1;
                                            }else{ $x = 2;}
                                            
                                        }
                                        if($x == 1){
                                            echo 'Checked';
                                        }

                                    }
                                    ?>>
                            </td>
                        </tr>
                        @foreach($sub_detail_sla as $data_sub_detail)
                            @if($data_sub_detail->detail_id == $data_detail_sla->id)
                                <tr class="info">
                                    <td>
                                    @if($data_sub_detail->group_sla_id != 1)
                                    <strong>{{ $data_sub_detail->Nmgroup }}</strong> |  
                                    @endif
                                    {{ $data_sub_detail->uraian }}</td>
                                    <td class='text-center'>
                                    <input type="checkbox" id='detail[{{ $data_detail_sla->id }}]' name="subdetail[{{ $data_sub_detail->id }}]" class='master[{{$data_sla->id}}]' value="{{ $data_sub_detail->rincian_pekerjaan_id }}"
                                    <?php
                                    foreach ($ketersediaan as $key => $value) {
                                        if($data_sub_detail->rincian_pekerjaan_id == $value->rincian_pekerjaan_id)
                                        {
                                            echo 'Checked';
                                        }
                                    }
                                    ?>>
                                    </td>
                                </tr>
                            @endif
                        @endforeach
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