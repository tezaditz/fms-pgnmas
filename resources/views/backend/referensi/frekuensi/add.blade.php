<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>Add Form</div>
    <div class='panel-body'>
      <form method='post' action='{{CRUDBooster::mainpath('add-save')}}'>
      {{ csrf_field() }}
        <div class="box-body" id="parent-form-area">

            <div class='form-group header-group-0 row' id='form-group-uraian' style="">
                <label class='control-label col-sm-2'>Uraian<span class='text-danger' title='This field is '>*</span>
                </label>

                <div class="col-sm-10">
                    <input type='text' title="Uraian"  maxlength=255 class='form-control' name="uraian" id="uraian" value=''/>

                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
            </div>

            <div class='form-group header-group-0 row' id='form-group-kode' style="">
                <label class='control-label col-sm-2'>
                    Kode
                                <span class='text-danger' title='This field is required'>*</span>
                        </label>

                <div class="col-sm-10">
                    <input type='text' title="Kode"
                    required    maxlength=255 class='form-control'
                        name="kode" id="kode" value=''/>

                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
            </div>
            <div class='form-group header-group-0 row' id='form-group-warna' style="">
                <label class='control-label col-sm-2'>
                    Warna
                                <span class='text-danger' title='This field is required'>*</span>
                        </label>

                <div class="col-sm-10">
                    <input type='color' title="Warna"
                        required    maxlength=255 class='form-control'
                        name="warna" id="warna" value=''/>

                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
            </div>
            <div class='form-group header-group-0 row' id='form-group-warna' style="">
                <label class='control-label col-sm-2'>Hari
                <span class='text-danger' title='This field is required'></span>
                </label>
                <div class="col-sm-1">
                    <input type='checkbox' title="H1"
                         
                        name="H1" id="H1" value="1"/> Senin
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="H2"
                         
                        name="H2" id="H2" value="1"/> Selasa
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="H3"
                         
                        name="H3" id="H3" value="1"/> Rabu
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="H4"
                         
                        name="H4" id="H4" value="1"/> Kamis
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="H5"
                         
                        name="H5" id="H5" value="1"/> Jumat
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="H6"
                         
                        name="H6" id="H6" value="1"/> Sabtu
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="H7"
                         
                        name="H7" id="H7" value="1"/> Minggu
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
            </div>
            <div class='form-group header-group-0 row' id='form-group-warna' style="">
                <label class='control-label col-sm-2'>Minggu
                <span class='text-danger' title='This field is '></span>
                </label>
                <div class="col-sm-1">
                    <input type='checkbox' title="M1"
                         
                        name="M1" id="M1" value="1"/> Minggu Ke 1
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="M2"
                         
                        name="M2" id="M2" value="1"/> Minggu Ke 2
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="M3"
                         
                        name="M3" id="M3" value="1"/> Minggu Ke 3
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="M4"
                         
                        name="M4" id="M4" value="1"/> Minggu Ke 4
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="M5"
                         
                        name="M5" id="M5" value="1"/> Minggu Ke 5
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                
            </div>
            <div class='form-group header-group-0 row' id='form-group-warna' style="">
                <label class='control-label col-sm-2'>Bulan
                <span class='text-danger' title='This field is '></span>
                </label>
                <div class="col-sm-1">
                    <input type='checkbox' title="B1"
                         
                        name="B1" id="B1" value="1"/> Jan
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="B2"
                         
                        name="B2" id="B2" value="1"/> Feb
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="B3"
                         
                        name="B3" id="B3" value="1"/> Mar
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="B4"
                         
                        name="B4" id="B4" value="1"/> Apr
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="B5"
                         
                        name="B5" id="B5" value="1"/> Mei
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="B6"
                         
                        name="B6" id="B6" value="1"/> Jun
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                
                
            </div>
            <div class='form-group header-group-0 row' id='form-group-warna' style="">
                <label class='control-label col-sm-2'>
                <span class='text-danger' title='This field is '></span>
                </label>
                <div class="col-sm-1">
                    <input type='checkbox' title="B7"
                         
                        name="B7" id="B7" value="1"/> Jul
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="B8"
                         
                        name="B8" id="B8" value="1"/> Aug
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="B9"
                         
                        name="B9" id="B9" value="1"/> Sep
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="B10"
                         
                        name="B10" id="B10" value="1"/> Okt
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="B11"
                         
                        name="B11" id="B11" value="1"/> Nov
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <div class="col-sm-1">
                    <input type='checkbox' title="B12"
                         
                        name="B12" id="B12" value="1"/> Des
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                
            </div>
        </div>
      
    </div>
    <div class='panel-footer text-center'>
      <input type='submit' class='btn btn-primary' value='Save changes'/>
    </div>
    </form>
  </div>
@endsection