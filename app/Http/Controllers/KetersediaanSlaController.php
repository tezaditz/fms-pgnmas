<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use CRUDBooster;

class KetersediaanSlaController extends Controller
{
  

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // return $request->all();
        $data = $request;
        if($data)
        {

            $Reg_aset = DB::table('ketersediaan_sla')->where('aset_id' , $request->aset_id)
            ->where('tahun' , $request->tahun)
            ->Count();
            if($Reg_aset > 0)
            {
                $to = '/pgnmas/sdaset';
                $message = 'Ketersediaan SLA Pada Aset Sudah Tersedia!!';
                $type = 'warning';
                CRUDBooster::redirect($to,$message,$type);
            }


            if($request->detail)
            {
                $insert = [];
                $parameter = DB::table('parameter')->where('nama' , 'tahun')->first();
                foreach ($request->subdetail as $key =>  $value) {
                    $sub_detail_sla = DB::table('sub_detail_sla')->where('id' , $key)->first();
                    $detail_sla = DB::table('detail_sla')->where('id' , $sub_detail_sla->detail_sla_id)->first();
                    
                    $insert[$key]['tahun'] = $request->tahun;
                    $insert[$key]['aset_id'] = $request->aset_id;
                    $insert[$key]['sla_id'] = $detail_sla->sla_id;
                    $insert[$key]['detail_sla_id'] = $sub_detail_sla->detail_sla_id;
                    $insert[$key]['group_sla_id'] = $sub_detail_sla->group_sla_id;
                    $insert[$key]['rincian_pekerjaan_id'] = $sub_detail_sla->rincian_pekerjaan_id;
                    $insert[$key]['ketersediaan'] = 1;
                }
                if($insert)
                {
                    DB::table('ketersediaan_sla')->insert($insert);
                }
            }

            

			// $insert = [];
			// for ($i=1; $i <= 12  ; $i++) { 
			// 	$insert['tahun'] = CRUDBooster::CurrYear();
			// 	$insert['bulan'] = $i;
			// 	$insert['aset_id'] = $request->aset_id;
			// 	$insert['status'] = 'Baru';

			// 	DB::table('m_penilaian')->insert($insert);
			// }

            $to = '/pgnmas/sdaset';
            $message = 'Data Berhasil Disimpan';
            $type = 'info';
            CRUDBooster::redirect($to,$message,$type);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // return $request->all();

            if($request->subdetail)
            {
                DB::table('ketersediaan_sla')->where('aset_id' , $id)->delete();

                $insert = [];
                $parameter = DB::table('parameter')->where('nama' , 'tahun')->first();
                foreach ($request->subdetail as $key =>  $value) {
                    $sub_detail_sla = DB::table('sub_detail_sla')->where('id' , $key)->first();
                    $detail_sla = DB::table('detail_sla')->where('id' , $sub_detail_sla->detail_sla_id)->first();
                    
                    $insert[$key]['tahun'] = $request->tahun;
                    $insert[$key]['aset_id'] = $request->aset_id;
                    $insert[$key]['sla_id'] = $detail_sla->sla_id;
                    $insert[$key]['detail_sla_id'] = $sub_detail_sla->detail_sla_id;
                    $insert[$key]['group_sla_id'] = $sub_detail_sla->group_sla_id;
                    $insert[$key]['rincian_pekerjaan_id'] = $sub_detail_sla->rincian_pekerjaan_id;
                    $insert[$key]['ketersediaan'] = 1;
                }
                if($insert)
                {
                    DB::table('ketersediaan_sla')->insert($insert);
                }
            

                $to = '/pgnmas/sdaset';
                $message = 'Data SLA Aset Berhasil Diubah';
                $type = 'info';
                CRUDBooster::redirect($to,$message,$type);
            }else{
                $to = '/pgnmas/sdaset';
                $message = 'Tidak ada SLA yang di Pilih';
                $type = 'warning';
                CRUDBooster::redirect($to,$message,$type);
            }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
