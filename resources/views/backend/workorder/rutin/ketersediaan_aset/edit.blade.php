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
            <?php $lvl1 = 0;$lvl2 = 0;$lvl3 = 0; ?>
                    @foreach($ketersediaan as $data_detail)
                        @if($lvl1 == 0)
                            <tr class="danger">
                                    <td >{{  $data_detail->slaU }}</td>
                                    <td class='text-center'>
                                        <input type="checkbox" name="master[{{ $data_detail->slaid }}]" class='master[{{$data_detail->slaid}}]' value="{{ $data_detail->slaid }}" onClick='check_uncheck_checkbox(this , this.checked);' 
                                        <?php if($data_detail->sedia == 1){echo "Checked";}?>>
                                    </td>
                            </tr>
                            <?php $lvl1 = $data_detail->slaid; ?>
                        @else
                            @if($lvl1 != $data_detail->slaid)
                            <tr class="danger">
                                <td>{{  $data_detail->slaU }}</td>
                                <td class='text-center'>
                                        <input type="checkbox" name="master[{{ $data_detail->slaid }}]" class='master[{{$data_detail->slaid}}]' value="{{ $data_detail->slaid }}" onClick='check_uncheck_checkbox(this , this.checked);' 
                                        <?php if($data_detail->sedia == 1){echo "Checked";}?>>
                                </td>
                            </tr>
                            <?php $lvl1 = $data_detail->slaid; ?>
                            @endif
                        @endif

                        @if($lvl2 == 0)
                            <tr class="success">
                                    <td >{{  $data_detail->detailslaU }}</td>
                                    <td class='text-center'>
                                    <input type="checkbox"  name="detail[{{ $data_detail->detailslaid }}]" class='master[{{$data_detail->slaid}}]' value="{{ $data_detail->detailslaid }}" onClick='check_uncheck_checkbox_sub(this , this.checked);' 
                                    <?php if($data_detail->sedia == 1){echo "Checked";}?>>
                                    </td>
                            </tr>
                            <?php $lvl2 = $data_detail->detailslaid; ?>
                        @else
                            @if($lvl2 != $data_detail->detailslaid)
                            <tr class="success">
                                <td>{{  $data_detail->detailslaU }}</td>
                                <td class='text-center'>
                                    <input type="checkbox"  name="detail[{{ $data_detail->detailslaid }}]" class='master[{{$data_detail->slaid}}]' value="{{ $data_detail->detailslaid }}" onClick='check_uncheck_checkbox_sub(this , this.checked);' 
                                    <?php if($data_detail->sedia == 1){echo "Checked";}?>>
                                    </td>
                            </tr>
                            <?php $lvl2 = $data_detail->detailslaid; ?>
                            @endif
                        @endif

                        @if($$lvl3 == 0)
                            <tr class="info">
                                <td>{{  $data_detail->rinciU }}</td>
                                <td class='text-center'>
                                    <input type="hidden" name="subdetail[{{ $data_detail->id }}]" value=0>
                                    <input type="checkbox" id='detail[{{ $data_detail->detailslaid }}]' name="subdetail[{{ $data_detail->id }}]" class='master[{{$data_detail->slaid}}]' value="1"
                                    <?php if($data_detail->sedia == 1){echo "Checked";}?>>
                                </td>
                            </tr>
                            <?php $$lvl3 = $data_detail->rinciid; ?>
                        @else
                            @if($$lvl3 != $data_detail->rinciid)
                            <tr class="info">
                                <td>{{  $data_detail->rinciU }}</td>
                                <td class='text-center'>
                                    <input type="hidden" name="subdetail[{{ $data_detail->id }}]" value=0>
                                    <input type="checkbox" id='detail[{{ $data_detail->detailslaid }}]' name="subdetail[{{ $data_detail->id }}]" class='master[{{$data_detail->slaid}}]' value="1"
                                    <?php if($data_detail->sedia == 1){echo "Checked";}?>></td>
                            </tr>
                            <?php $$lvl3 = $data_detail->rinciid; ?>
                            @endif
                        @endif
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