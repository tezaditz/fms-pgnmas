@extends('crudbooster::admin_template')
@section('content')
<div class='panel panel-default'>
    <div class='panel-heading'>Edit Laporan</div>
    <form method='post' action="{{ Route('PostEditSaveUtility' , ['table'=>'master_air' , 'id' => $master->id  ] )}}" enctype="multipart/form-data" class='form-horizontal'>
        <div class='panel-body' id="bodyform">
            
                {{ csrf_field() }}
                        <input type="hidden" id="id" name="id" value="{{ $master->id }}">
                        <div class="form-group header-group-0 " id="form-group-pemakaian" style="">
                            <label class="control-label col-sm-2">Period
                                            <span class='text-danger' title='This field is required'>*</span>
                                    </label>

                            <div class="col-sm-10">
                                <input type="text" title="Periode" required maxlenght=10    class="form-control inputMoney"
                                        name="periode" id="periode" value="{{ $bulan }}" disabled> 
                                <div class="text-danger"></div>
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <div class="form-group header-group-0 " id="form-group-pemakaian" style="">
                            <label class="control-label col-sm-2">Aset
                                            <span class='text-danger' title='This field is required'>*</span>
                                    </label>

                            <div class="col-sm-10">
                                <input type="text" title="nama_aset" required maxlenght=10    class="form-control inputMoney"
                                        name="aset" id="aset" value="{{ $aset->nama }}" disabled> 
                                        <input type="hidden" id="aset_id" name="aset_id" value="{{ $aset->id }}">
                                <div class="text-danger"></div>
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <div class="form-group header-group-0 " id="form-group-pemakaian" style="">
                            <label class="control-label col-sm-2">Jenis
                                            <span class='text-danger' title='This field is required'>*</span>
                                    </label>

                            <div class="col-sm-10">
                                <input type="text" title="jenis" required maxlenght=10    class="form-control inputMoney"
                                        name="aset" id="aset" value="{{ $master->jenis }}" disabled> 
                                        
                                <div class="text-danger"></div>
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <div class="form-group header-group-0 " id="form-group-pemakaian" style="">
                            <label class="control-label col-sm-2">Pemakaian
                                            <span class='text-danger' title='This field is required'>*</span>
                                    </label>

                            <div class="col-sm-10">
                                <input type="text" title="Pemakaian" required maxlenght=10    class="form-control text-right inputMoney"
                                        name="pemakaian" id="pemakaian" value="{{ $pemakaian }}">
                                <div class="text-danger"></div>
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <div class="form-group header-group-0 " id="form-group-rupiah" style="">
                            <label class="control-label col-sm-2">Rupiah
                                            <span class='text-danger' title='This field is required'>*</span>
                                    </label>

                            <div class="col-sm-10">
                                <input type="text" title="Rupiah" required    class="form-control text-right inputMoney"
                                        name="rupiah" id="rupiah" value="{{ $rupiah }}">
                                <div class="text-danger"></div>
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <div class='form-group header-group-0 ' id='form-group-foto_before' style="">
                            <label class='col-sm-2 control-label'>Foto Before
                                            <span class='text-danger' title='This field is required'>*</span>
                                    </label>

                            <div class="col-sm-10">
                            
                                @if($master->foto_before == null)
                                    <input type='file' id="foto_before" title="Foto Before"    class='form-control' name="foto_before"/>
                                @else
                                    <img src="{{ url($master->foto_before) }}" alt="foto_sebelum" width="20%" height="20%">
                                    <a href="{{ route('hapusfotoutilitas' , ['id' => $master->id , 'utilitas'=> 'air' , 'photo'=>'foto_before'  ]) }}" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></a>
                                @endif
                                    <p class='help-block'></p>
                                        <div class="text-danger"></div>

                            </div>
                        </div>
                        <div class='form-group header-group-0 ' id='form-group-foto_after' style="">
                            <label class='col-sm-2 control-label'>Foto After
                                            <span class='text-danger' title='This field is required'>*</span>
                                    </label>

                            <div class="col-sm-10">
                            @if($master->foto_after == null)
                                <input type='file' id="foto_after" title="Foto Before"    class='form-control' name="foto_after"/>
                            @else
                                <input type="hidden" id="foto_after" nama="foto_after" value="{{ $master->foto_after }}" >
                                    <img src="{{ url($master->foto_after) }}" alt="foto_sebelum" width="20%" height="20%">
                                    <a href="{{ route('hapusfotoutilitas' , ['id' => $master->id , 'utilitas'=> 'air' , 'photo'=>'foto_after']) }}" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></a>
                            @endif
                                                    
                                    <p class='help-block'></p>
                                        <div class="text-danger"></div>

                            </div>

                        </div>

                    </div>
                    <div class="text-center">
                    
                    </div>
            
            <div class="panel-footer text-center">
                <a href="#" class="btn btn-default btn-md"> <i class="fa fa-chevron-circle-left" aria-hidden="true"></i> Back</a>
                <button type="submit" class="btn btn-success btn-md"><span class="fa fa-save"></span> Simpan</button>
            </div>
        </div>
    </form>
</div>
@endsection
