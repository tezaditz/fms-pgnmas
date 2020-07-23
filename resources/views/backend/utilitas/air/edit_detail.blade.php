@extends('crudbooster::admin_template')
@section('content')
<div class='panel panel-default'>
    <div class='panel-heading'>Edit Laporan</div>
    <form method='post' action="{{ route('simpandetailair')}}" enctype="multipart/form-data" class='form-horizontal'>
        <div class='panel-body' id="bodyform">
            
                {{ csrf_field() }}
                        <input type="hidden" id="id" name="id" value="{{ $id }}">
                        <div class="form-group header-group-0 " id="form-group-pemakaian" style="">
                            <label class="control-label col-sm-2">Period
                                            <span class='text-danger' title='This field is required'>*</span>
                                    </label>

                            <div class="col-sm-10">
                                <input type="text" title="Periode" required maxlenght=10    class="form-control text-right inputMoney"
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
                                <input type="text" title="nama_aset" required maxlenght=10    class="form-control text-right inputMoney"
                                        name="aset" id="aset" value="{{ $dataaset->nama }}" disabled> 
                                        <input type="hidden" id="aset_id" name="aset_id" value="{{ $dataaset->id }}">
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
                                        name="pemakaian" id="pemakaian" value="{{ $utilitas->pemakaian }}">
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
                                        name="rupiah" id="rupiah" value="{{ $utilitas->rupiah }}">
                                <div class="text-danger"></div>
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <div class='form-group header-group-0 ' id='form-group-foto_before' style="">
                            <label class='col-sm-2 control-label'>Foto Before
                                            <span class='text-danger' title='This field is required'>*</span>
                                    </label>

                            <div class="col-sm-10">
                                @if($utilitas->foto_sebelum == null)
                                    <input type='file' id="foto_before" title="Foto Before" required   class='form-control' name="foto_before"/>
                                @else
                                    <input type="hidden" id="foto_before_text" nama="foto_before_text" value="{{ $utilitas->foto_sebelum }}" >
                                    <img src="{{ url($utilitas->foto_sebelum) }}" alt="foto_sebelum" width="20%" height="20%">
                                    <a href="{{ route('hapusFoto' , ['id' => $utilitas->id , 'foto'=> 'before']) }}" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></a>
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
                            @if($utilitas->foto_sesudah == null)
                                <input type='file' id="foto_after" title="Foto Before" required   class='form-control' name="foto_after"/>
                            @else
                                <input type="hidden" id="foto_after" nama="foto_after" value="{{ $utilitas->foto_sesudah }}" >
                                    <img src="{{ url($utilitas->foto_sesudah) }}" alt="foto_sebelum" width="20%" height="20%">
                                    <a href="{{ route('hapusFoto' , ['id' => $utilitas->id , 'foto'=> 'after']) }}" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></a>
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
