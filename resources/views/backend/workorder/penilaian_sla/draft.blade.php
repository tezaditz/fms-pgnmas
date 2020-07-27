<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>
    <strong><i class='fa fa-th-list'></i> {{ $page_title }}</strong>
    </div>

    <div class="panel-body" style="padding:20px 0px 0px 0px">
    <div class="container">
    <div class='panel panel-default'>
    <div class='panel-heading'>
    <strong><i class='fa fa-th-list'></i> Master Penilaian</strong>
    </div>
    <div class="panel-body" style="padding:20px 0px 0px 0px">
    <div class="box-body" id="parent-form-area">
        <div class='table-responsive'>     
        
            <div class='table-responsive'>
                <table id='table-detail' class='table table-striped'>
                    <tr>
                        <td>Tahun</td>
                        <td>{{ $row->tahun }}</td>
                    </tr>
                    <tr>
                        <td>Bulan</td>
                        <td>{{ $row->bulan }}</td>
                    </tr>
                    <tr>
                        <td>Aset</td>
                        <td>{{ $aset->nama }}</td>
                    </tr>
                </table>
            </div>
        
        
        </div>
    </div>
    </div>
  </div>

  <div class='panel panel-default'>
    <div class='panel-heading'>
        <strong><i class='fa fa-th-list'></i> Detail Penilaian </strong>
    </div>
    <div class="panel-body" style="padding:20px 0px 0px 0px">
        <div class="box-body" id="parent-form-area">
        <div class='table-responsive'>     
            
            <div class='table-responsive'>
                <table id='table-detail' class='table table-striped'>
                    <thead>
                        <tr>
                            
                            <th  class='text-center'>Uraian Pekerjaan</th>
                            <th  class='text-center'>Ketersediaan Fasilitas</th>
                            <th  class='text-center'>DiLaksanakan</th>
                            <th  class='text-center'>Sesuai</th>
                            <th  class='text-center'>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php $lvl1 = 0;$lvl2 = 0;$lvl3 = 0; ?>
                    @foreach($detail_penilaian as $data_detail)
                        @if($lvl1 == 0)
                            <tr class="danger">
                                    <td colspan=5 width= 50%>{{  $data_detail->slaU }}</td>
                            </tr>
                            <?php $lvl1 = $data_detail->slaid; ?>
                        @else
                            @if($lvl1 != $data_detail->slaid)
                            <tr class="danger">
                                <td colspan=5 width= 50%>{{  $data_detail->slaU }}</td>
                            </tr>
                            <?php $lvl1 = $data_detail->slaid; ?>
                            @endif
                        @endif

                        @if($lvl2 == 0)
                            <tr class="success">
                                    <td colspan=5 width= 50%>{{  $data_detail->detailslaU }}</td>
                            </tr>
                            <?php $lvl2 = $data_detail->detailslaid; ?>
                        @else
                            @if($lvl2 != $data_detail->detailslaid)
                            <tr class="success">
                                <td colspan=5 width= 50%>{{  $data_detail->detailslaU }}</td>
                            </tr>
                            <?php $lvl2 = $data_detail->detailslaid; ?>
                            @endif
                        @endif

                        @if($$lvl3 == 0)
                            <tr class="info">
                                <td>{{  $data_detail->rinciU }}</td>
                                <td class='text-center'>
                                    <input type="radio" name="sedia[{{ $data_detail->id }}]"  value = 1
                                    <?php if($data_detail->sedia == '1'){echo "Checked disabled";}else{echo "disabled";} ?>> 
                                </td>
                                <td  class='text-center'>
                                            <input type="radio" required name="laksana[{{ $data_detail->id }}]" value = 1
                                            <?php if($data_detail->laksana == 1){echo "Checked disabled";}else{echo "disabled";} ?>> Ya 
                                            <input type="radio" required name="laksana[{{ $data_detail->id }}]" value = 0
                                            <?php if($data_detail->laksana == 0){echo "Checked disabled";}else{echo "disabled";} ?>> Tidak
                                </td>
                                <td  class='text-center'>
                                    <div class='text-left'>
                                    <input type="radio" required name="sesuai[{{ $data_detail->id }}]" value = 3
                                    <?php if($data_detail->sesuai == 3){echo "Checked disabled";}else{echo "disabled";} ?>
                                    > Baik
                                    <br>
                                    <input type="radio" required name="sesuai[{{ $data_detail->id }}]" value = 2
                                    <?php if($data_detail->sesuai == 2){echo "Checked disabled";}else{echo "disabled";} ?>
                                    > Cukup
                                    <br>
                                    <input type="radio" required name="sesuai[{{ $data_detail->id }}]" value = 1
                                    <?php if($data_detail->sesuai == 1){echo "Checked disabled";}else{echo "disabled";} ?>
                                    > Kurang
                                    </div>
                                    </td>
                                    <td class="text-center">
                                        <a href="" class="btn btn-success btn-xs" data-toggle="modal" data-target="#Form_{{ $data_detail->id }}"
                                        <?php if($data_detail->sedia == 0){echo 'disabled';} ?>
                                         > <i class="fa fa-pencil"></i> </a>
                                    
                                    
                                    </td>
                            </tr>
                            <?php $$lvl3 = $data_detail->rinciid; ?>
                        @else
                            @if($$lvl3 != $data_detail->rinciid)
                            <tr class="info">
                                <td>{{  $data_detail->rinciU }}</td>
                                <td class='text-center'>
                                    <input type="radio" name="sedia[{{ $data_detail->rincianid }}]"  value = 1
                                    <?php if($data_detail->sedia == 1){echo "Checked";}else{echo "disabled";} ?>> 
                                </td>
                                <td  class='text-center'>
                                            <input type="radio" required name="laksana[{{ $data_detail->rincianid }}]" value = 1
                                            <?php if($data_detail->sedia == 1){echo "Checked";}else{echo "disabled";} ?>> Ya 
                                            <input type="radio" required name="laksana[{{ $data_detail->rincianid }}]" value = 0
                                            <?php if($data_detail->sedia == 0){echo "disabled";} ?>> Tidak
                                </td>
                                <td  class='text-center'>
                                    <div class='text-left'>
                                    <input type="radio" required name="sesuai[{{ $data_detail->id }}]" value = 3
                                    <?php if($data_detail->sesuai == 3){echo "Checked disabled";}else{echo "disabled";} ?>
                                    > Baik
                                    <br>
                                    <input type="radio" required name="sesuai[{{ $data_detail->id }}]" value = 2
                                    <?php if($data_detail->sesuai == 2){echo "Checked disabled";}else{echo "disabled";} ?>
                                    > Cukup
                                    <br>
                                    <input type="radio" required name="sesuai[{{ $data_detail->id }}]" value = 1
                                    <?php if($data_detail->sesuai == 1){echo "Checked disabled";}else{echo "disabled";} ?>
                                    > Kurang
                                    </div>
                                    </td>
                                    <td class="text-center">
                                        <a href="" class="btn btn-success btn-xs" data-toggle="modal" data-target="#myModal"> <i class="fa fa-pencil"></i> </a>
                                    
                                    
                                    </td>
                            </tr>
                            <?php $$lvl3 = $data_detail->rinciid; ?>
                            @endif
                        @endif


                        <div id="Form_{{ $data_detail->id }}" class="modal fade" role="dialog">
                        <form class='form-horizontal' method='post' id="form" enctype="multipart/form-data" action='{{ route("EditNilai" , ["id" => $id ]) }}'>
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title"> 
                                    {{ $data_detail->rinciU }}</h4>
                                </div>
                                <div class="modal-body">
                                <div class="form-group">
                                    <label for="email">Ketersediaan Fasilitas</label>
                                    <input type="radio" name="form_sedia[{{ $data_detail->id }}]"  value = 1
                                    <?php if($data_detail->sedia == 1){echo "Checked disabled";}else{echo "disabled";} ?>> 
                                </div>
                                <div class="form-group">
                                    <label for="pwd">DiLaksanakan:</label>
                                    <input type="radio" required name="form_laksana[{{ $data_detail->id }}]" value = 1
                                            <?php if($data_detail->laksana == 1){echo "Checked";}else{echo "disabled";} ?>> Ya 
                                            <input type="radio" required name="form_laksana[{{ $data_detail->id }}]" value = 0
                                            <?php if($data_detail->laksana == 0){echo "disabled";} ?>> Tidak
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Sesuai:</label>
                                    <div class='text-left'>
                                    <input type="radio" required name="form_sesuai[{{ $data_detail->id }}]" value = 3
                                    <?php if($data_detail->sesuai == 3){echo "Checked";} ?>
                                    > Baik
                                    <br>
                                    <input type="radio" required name="form_sesuai[{{ $data_detail->id }}]" value = 2
                                    <?php if($data_detail->sesuai == 2){echo "Checked";} ?>
                                    > Cukup
                                    <br>
                                    <input type="radio" required name="form_sesuai[{{ $data_detail->id }}]" value = 1
                                    <?php if($data_detail->sesuai == 1){echo "Checked";} ?>
                                    > Kurang
                                    </div>
                                </div>
                                    
                                </div>
                                <div class="modal-footer">
                                {{ csrf_field() }}
                                <input type="hidden" name="id_detail_penilaian" value="{{$data_detail->id}}">
                                    <input type='submit' class='btn btn-success' value='Kirim'/>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                                </div>
                                

                            </div>
                        </form>
                        </div>
                    @endforeach
                    </tbody>
                </table>
            </div>

        </div>
        </div>
    </div>
    <div class='panel-footer'>
        
        
        <a href="{{ url()->previous() }}" class="btn btn-default btn-xs"><i class='fa fa-chevron-circle-left'></i> Back</a>
        <a href="{{ Route('SendPenilaian' , $id) }}" class="btn btn-success btn-xs"><i class='fa fa-paper-plane'></i> Send</a>
    </div>
  </div>
    </div>
      <!-- Your html goes here -->

    </div>
  </div>



@endsection