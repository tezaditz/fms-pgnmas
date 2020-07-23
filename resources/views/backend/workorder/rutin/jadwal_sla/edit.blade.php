<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>Add Form</div>
    <div class='panel-body'>
      <form method='post' action='{{CRUDBooster::mainpath('edit-save/'.$row->id)}}'>
      {{ csrf_field() }}
        <div class="box-body" id="parent-form-area">

            <div class='form-group header-group-0 row' id='form-group-uraian' style="">
                <label class='control-label col-sm-2'>SLA<span class='text-danger' title='This field is '>*</span>
                </label>

                <div class="col-sm-10">
                    <select name="sla_id" id="sla_id" class="form-control">
                    <option value="">** Please Choose SLA</option>
                    @foreach($sla as $key => $value)
                    <option value="{{ $value->id }}"
                    <?php
                    if($value->id == $row->sla_id){echo 'Selected';}
                    ?>
                    >{{ $value->uraian }}</option>
                    @endforeach
                    </select>

                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
            </div>

            <div class='form-group header-group-0 row' id='form-group-kode' style="">
                <label class='control-label col-sm-2'>
                    Detail SLA
                                <span class='text-danger' title='This field is required'>*</span>
                        </label>

                <div class="col-sm-10">
                <select name="detail_sla_id" id="detail_sla_id" class="form-control">
                    <option value="">** Please Choose Detail SLA</option>
                    @foreach($detail_sla as $key => $value)
                    <option value="{{ $value->id }}"
                    <?php
                    if($value->id == $row->detail_sla_id){echo 'Selected';}
                    ?>
                    >{{ $value->uraian }}</option>
                    @endforeach
                    </select>

                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
            </div>
            <div class='form-group header-group-0 row' id='form-group-warna' style="">
                <label class='control-label col-sm-2'>
                    Frekuensi
                                <span class='text-danger' title='This field is required'>*</span>
                        </label>

                <div class="col-sm-10">
                    <select name="frekuensi_id" id="frekuensi_id" class="form-control">
                    <option value="">** Please Choose Frekuensi</option>
                    @foreach($frekuensi as $key => $value)
                    <option value="{{ $value->id }}" 
                    <?php
                    if($value->id == $row->frekuensi_id){echo 'Selected';}
                    ?>>{{ $value->uraian }}</option>
                    @endforeach
                    </select>

                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
            </div>
            <div class='form-group header-group-0 row' id='form-group-warna' style="">
                <label class='control-label col-sm-2'>Hari
                <span class='text-danger' title='This field is required'></span>
                </label>

                <?php
                $hari = ['' , 'Senin' , 'Selasa' , 'Rabu' , 'Kamis' , 'Jumat' , 'Sabtu' , 'Minggu' ];
                for ($i=1; $i <= 7 ; $i++) { 
                    $text = 'H' . $i;
                ?>
                <div class="col-sm-1">
                <input type="hidden" name="H{{ $i }}" value="0">
                    <input type='checkbox' title="H{{ $i }}"
                         
                        name="H{{ $i }}" id="H{{ $i }}" value = '1' <?php if ($row->$text == 1) { echo "checked='checked'"; } ?>/> {{ $hari[$i] }}
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <?php } ?>

            </div>
            <div class='form-group header-group-0 row' id='form-group-warna' style="">
                <label class='control-label col-sm-2'>Minggu
                <span class='text-danger' title='This field is '></span>
                </label>
                <?php 
                
                for ($i=1; $i <= 5 ; $i++) { 
                    $nilai_minggu = $row->M . $i;
                    $text = 'M' . $i;
                ?>
                <div class="col-sm-1">
                <input type="hidden" name="M{{ $i }}" value="0">
                    <input type='checkbox' title="M{{ $i }}"
                        name="M{{ $i }}" id="M{{ $i }}" value = '1'<?php if ($row->$text == 1) { echo "checked='checked'"; } ?>/> Minggu Ke {{ $i }}
                    <div class="text-danger"></div>
                    <p class='help-block'></p>
                </div>

                    <?php
                }
                ?>



                
                
            </div>
            <div class='form-group header-group-0 row' id='form-group-warna' style="">
                <label class='control-label col-sm-2'>Bulan
                <span class='text-danger' title='This field is '></span>
                </label>
                <?php 
                $bulan = ['' , 'Jan' , 'Feb' , 'Mar' , 'Apr' , 'Mei' , 'Jun'];
                for ($i=1; $i <=6  ; $i++) { 
                    $text = 'B' . $i;
                ?>
                <div class="col-sm-1">
                <input type="hidden" name="B{{ $i }}" value="0">
                    <input type='checkbox' title="B{{ $i }}"
                         
                        name="B{{ $i }}" id="B{{ $i }}" value = '1'<?php if ($row->$text == 1) { echo "checked='checked'"; } ?>/> {{ $bulan[$i] }}
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <?php    
                }
                ?>
            </div>
            <div class='form-group header-group-0 row' id='form-group-warna' style="">
                <label class='control-label col-sm-2'>
                <span class='text-danger' title='This field is '></span>
                </label>
                <?php 
                $bulan = ['' ,'Jan' , 'Feb' , 'Mar' , 'Apr' , 'Mei' , 'Jun' , 'Jul' , 'Aug' , 'Sep' , 'Oct' , 'Nov' , 'Des'];
                for ($i=7; $i <=12  ; $i++) { 
                    $text = 'B' . $i;
                ?>
                <div class="col-sm-1">
                <input type="hidden" name="B{{ $i }}" value="0">
                    <input type='checkbox' title="B{{ $i }}"
                         
                        name="B{{ $i }}" id="B{{ $i }}" value='1'<?php if($row->$text == 1) { echo "Checked" ;} ?>/> {{ $bulan[$i] }}
                    <div class="text-danger"></div>
                    <p class='help-block'></p>

                </div>
                <?php    
                }
                ?>
            </div>
        </div>
      
    </div>
    <div class='panel-footer text-center'>
      <input type='submit' class='btn btn-primary' value='Save changes'/>
    </div>
    </form>
  </div>
@endsection