<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use CRUDBooster;
use DB;

class SendEmailController extends Controller
{
    public function Kirim()
    {
        $data = ['name'=>'John Doe','address'=>'Lorem ipsum dolor...']; 
            CRUDBooster::sendEmail(
                [
                    'to'=>'tezadwiaditya@yahoo.co.id',
                    'data'=>$data,
                    'template'=>'complain',
                    'attachments'=>[]
                ]);

            return 'OK';
    }

    public function kirim_fms($id)
    {
        $get_data = DB::table('complain_halomas')->where('complain_id' , $id)->first();

        if($get_data)
        {
            $jenis_complain_id = 999;
            $cek_jenis_complain = DB::table('jenis_complain')->where('uraian' , $get_data->category)->count();
            if($cek_jenis_complain)
            {
                $get_jenis_complain = DB::table('jenis_complain')->where('uraian' , $get_data->category)->first();
                $jenis_complain_id = $get_jenis_complain->id;
            }
				// End Jenis Complain

            // data aset
            $aset_id = 3;
            $address = "";
            $cek_aset = DB::table('aset')->where('nama' , $get_data->location)->count();
            if($cek_aset)
            {
                $get_aset = DB::table('aset')->where('nama' , $get_data->location)->first();
                $aset_id = $get_aset->id;
                $address = $get_aset->alamat;
            }

            // ===================================================================================================
            // GET Nomor Work Order
            // ===================================================================================================
                $current_no = DB::table('nomor_tiket')->where('tahun' , CRUDBooster::CurrYear())
                                                ->where('keterangan' , 'Work Order')
                                                ->Count();
                if(!$current_no){
                    $insert['keterangan']   = 'Work Order';
                    $insert['kode']         = 'WO-';
                    $insert['nilai']        = 1;
                    $insert['tahun']        = CRUDBooster::CurrYear();
                    DB::table('nomor_tiket')->insert($insert);

                    $kode = 'WO-';
                    $no   = 1;
                }
                else{
                    $current_no = DB::table('nomor_tiket')->where('tahun' , CRUDBooster::CurrYear())
                                                    ->where('keterangan' , 'Work Order')
                                                    ->first();
                    $kode   = $current_no->kode;
                    $no     = $current_no->nilai + 1;
                }

                switch (strlen($no)) {
                    case 1:
                        $no = '000' . $no;
                        break;
                    case 2:
                        $no = '00' . $no;
                        break;
                    case 2:
                        $no = '0' . $no;
                        break;
                    default:
                        $no = $no;
                        break;
                }

                $nomor = $kode . $no;
            //===================================================================================================

            //===================================================================================================
            // KIRIM ke Tabel Complain
            //===================================================================================================
                $insert['nomor'] 				= $nomor;
                $insert['complain_halomas_id'] 	= $id;
                $insert['nama_pemohon'] 		= $get_data->name;
                $insert['unit_pelapor'] 		= $get_data->company;
                $insert['jenis_complain_id'] 	= $jenis_complain_id;
                $insert['uraian'] 				= $get_data->problem;
                $insert['aset_id'] 				= $aset_id;
                $insert['lokasi'] 				= $address;
                $insert['status_id'] 			= 1;
                $insert['tanggal_masuk'] 		= $get_data->complain_date;
                $insert['tanggal_selesai'] 		= $get_data->complain_date;

                DB::table('complain')->insert($insert);
            //===================================================================================================

            //===================================================================================================
            // UPDATE NOMOR WO
            //===================================================================================================
                $current_no = DB::table('nomor_tiket')->where('tahun' , CRUDBooster::CurrYear())
                                                    ->where('keterangan' , 'Work Order')
                                                    ->first();

                $no     = $current_no->nilai + 1;
                DB::table('nomor_tiket')->where('id' , $current_no->id)->update(['nilai' => $no]);
            //===================================================================================================

            // ===================================================================================================
            // get data tujuan user
            //====================================================================================================
                $aset = DB::table('aset')->where('id' , $aset_id)->first();
                $area = DB::table('area')->where('id' , $aset->area_id)->first();
                
                $user_aset = DB::table('user_aset')->where('wilayah_id' , $area->wilayah_id)->get(['user_id']);

                
                $id2 = [];
                foreach ($user_aset as $key => $value) {
                    $id2[] = $value->user_id;
                }
                // return $id2;
                $user2 = DB::table('cms_users')->WhereIn('id' , $id2)->where('id_cms_privileges' , 4)->first();
            //====================================================================================================

            //=======================
            // SEND EMAIL
            //=======================
                $data = [
                    'nomor_wo'=>$nomor,
                    'lokasi'=>$get_aset->nama,
                    'jenis_kategori'=>$get_jenis_complain->uraian,
                    'informasi'=>$get_data->problem
                ]; 
                CRUDBooster::sendEmail(
                    [
                        'to'=>$user2->email,
                        'data'=>$data,
                        'template'=>'complain',
                        'attachments'=>[]
                    ]);
            //=======================
            
            //===========================================================
            // SEND NOTIFIKASI FMS
            //===========================================================
                $config['content'] = "Complain Baru";
                $config['to'] = CRUDBooster::adminPath('complain');
                $config['id_cms_users'] = [$user2->id]; 
                CRUDBooster::sendNotification($config);
            //===========================================================


        }
        

    }
}
