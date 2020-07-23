<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>
    <strong><i class='fa fa-th-list'></i>Master Penilaian</strong>
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

  @if(CRUDBooster::myPrivilegeId() == 7)
  <div class='panel panel-default'>
    <div class='panel-heading'>
    <strong><i class='fa fa-th-list'></i> Form Hasil Penilaian</strong>
    </div>
    <div class="panel-body">
    <div class="box-body" id="parent-form-area">
        <div class='table-responsive'>
            <table id='table-detail' class='table table-striped'>   
                <thead>
                    <tr>
                        <th class="text-center">Ketersediaan SLA</th>
                        <th class="text-center">Nilai Maksimum</th>
                        <th class="text-center">Persentase Pelaksanaan Kegiatan</th>
                        <th class="text-center">Pencapaian SLA</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class='text-center'>{{ $row->ketersediaan_fasilitas }}</td>
                        <td class='text-center'>{{ $row->nilai_maksimum }}</td>
                        <td class='text-center'>{{ $row->persentase_pelaksanaan }} %</td>
                        <td class='text-center'>{{ $row->pencapaian }} %</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    </div>
  </div>
@endif


  <div class='panel panel-default'>
    <div class='panel-heading'>
    <strong><i class='fa fa-th-list'></i> Detail Penilaian</strong>
    </div>
    <div class="panel-body" style="padding:20px 0px 0px 0px">
    <div class="box-body" id="parent-form-area">
        <div class='table-responsive'>     
            <form class='form-horizontal' method='post' id="form" enctype="multipart/form-data" action='{{ route("simpan-nilai" , $id) }}'>
            <div class='table-responsive'>
                <table id='table-detail' class='table table-striped'>
                    <thead>
                        <tr>
                            
                            <th  class='text-center'>Uraian Pekerjaan</th>
                            <th  class='text-center'>Ketersediaan Fasilitas</th>
                            <th  class='text-center'>DiLaksanakan</th>
                            <th  class='text-center'>Sesuai</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($detail_penilaian as $detail_penilaian)
                        @endforeach
                    </tbody>
                </table>
            </div>
            @if(CRUDBooster::myPrivilegeId() == 5)
                <div class='panel-footer'>
                    {{ csrf_field() }}
                    <input type="hidden" name="master_id" id="master_id" value ="{{ $id }}">
                    <input type="hidden" name="previous" id="previous" value ="{{ url()->previous() }}">
                    <a href="{{ url()->previous() }}" class="btn btn-default"><i class='fa fa-chevron-circle-left'></i> Back</a>
                    <input type='submit' class='btn btn-primary' value='Save changes'/>
                </div>
            @endif
        </div>
    </div>
    </div>
  </div>
@if(CRUDBooster::myPrivilegeId() == 7 || CRUDBooster::myPrivilegeId() == 11)
<div class="panel panel-default">
    <div class="panel-heading">
        <strong><i class='fa fa-th-list'></i> Form Approval</strong>
    </div>
    <div class="panel-body">
        <div class='form-group header-group-0 ' id='form-group-tahun' style="">
            <label class='control-label col-sm-2'>Approved
                    <span class='text-danger' title='This field is required'>*</span>
            </label>

            <div class="col-sm-10">
                <select class='form-control' id="approve" data-value='' required    name="approve">
                    <option value=''>** Silahkan Pilih</option>
                    <option value='1'>Setujui</option>
                    <option value='0'>Tolak</option>
                </select>
                <div class="text-danger"></div>
                <p class='help-block'></p>
                
            </div>
        </div> 
        <div class='form-group header-group-0 ' id='form-group-tahun' style="">
            <label class='control-label col-sm-2'>Catatan
                    <span class='text-danger' title='This field is required'>*</span>
            </label>

            <div class="col-sm-10">
            <textarea name="catatan" id="catatan" cols="100" rows="10"></textarea>
                <div class="text-danger"></div>
                <p class='help-block'></p>
                
            </div>
        </div> 
    </div>
    <div class='panel-footer'>
    {{ csrf_field() }}
        <input type="hidden" name="master_id" id="master_id" value ="{{ $id }}">
        <input type="hidden" name="previous" id="previous" value ="{{ url()->previous() }}">
        <a href="{{ url()->previous() }}" class="btn btn-default"><i class='fa fa-chevron-circle-left'></i> Back</a>
        <input type='submit' class='btn btn-primary' value='Save changes'/>
    </div>
</div>

               
                
                
        </form>
        </div>
    </div>
    </div>
  </div>
@endif
@endsection