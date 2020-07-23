<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Crypt;
use DB;
use CRUDBooster;
use Carbon\carbon;

class PenilaianSlaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
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

    public function simpan(Request $request , $id)
    {
        // return $request->all();
        // return 'Ini Datetime :' . Carbon::now();
        $cek = DB::table('m_penilaian')->where('id' , $id)->first();
        // return $request->all();
        if($request && ($cek->status == 'BARU') )
        {
            $sedia = $request->sedia;
            $laksana = $request->laksana;
            $sesuai     = $request->sesuai;
            $master_id = $request->master_id;
            $catatan = '';
            $tgl = null;
            foreach ($sedia as $key => $value) {
                
                if($laksana[$key] != 0){$nilai_sesuai = $sesuai[$key];}
                else{$nilai_sesuai = 0;}

                DB::table('detail_penilaian')->where('id' , $key)
                                            ->update([
                                                'ketersediaan_fasilitas' => $value,
                                                'dilaksanakan' => $laksana[$key],
                                                'sesuai' => $nilai_sesuai
                                                ]);
            }
            
            // hitung
                $total_sedia = DB::table('detail_penilaian')
                ->where('ketersediaan_fasilitas' , 1)
                ->where('m_penilaian_id' , $master_id)
                ->count();

                $total_laksana = DB::table('detail_penilaian')
                ->where('dilaksanakan' , 1)
                ->where('m_penilaian_id' , $master_id)
                ->count();

                $total_baik = DB::table('detail_penilaian')
                ->where('sesuai' , 3)
                ->where('m_penilaian_id' , $master_id)
                ->count();

                $total_cukup = DB::table('detail_penilaian')
                ->where('sesuai' , 2)
                ->where('m_penilaian_id' , $master_id)
                ->count();

                $total_kurang = DB::table('detail_penilaian')
                ->where('sesuai' , 1)
                ->where('m_penilaian_id' , $master_id)
                ->count();
            // end hitung
            $nilai_maksimum             = $total_sedia * 3;
            $persentase_dilaksanakan    = ($total_laksana / $total_sedia) * 100;
            $pencapaian_sla             = ((($total_baik * 3) + ($total_cukup * 2) + ($total_kurang * 1)) / $nilai_maksimum) * 100;

            DB::table('m_penilaian')->where('id' , $master_id)
                                        ->update([
                                            'ketersediaan_fasilitas' => $total_sedia,
                                            'nilai_maksimum' => $nilai_maksimum,
                                            'persentase_pelaksanaan' => $persentase_dilaksanakan,
                                            'pencapaian' => $pencapaian_sla,
                                            'status' => 'LFM',
                                            'tanggal_disetujui' => $tgl,
                                            'catatan' => $catatan]);

            // return 'OK';

            DB::table('m_penilaian')->where('id' , $master_id)
                                        ->update([
                                            'ketersediaan_fasilitas' => $total_sedia,
                                            'nilai_maksimum' => $nilai_maksimum,
                                            'persentase_pelaksanaan' => $persentase_dilaksanakan,
                                            'pencapaian' => $pencapaian_sla,
                                            'status' => $status,
                                            'tanggal_disetujui' => $tgl,
                                            'catatan' => $catatan]);
            
            $master = DB::table('m_penilaian')->where('id' , $master_id)->first();
            
            $bulan = DB::table('bulan')->where('id' , $master->bulan)->first();
            $aset = DB::table('aset')->where('id' , $master->aset_id)->first();
            $dataarea = DB::table('aset')->where('id' , $master->aset_id)->first();

            $datauser = DB::table('cms_users')->where('id_cms_privileges' , 11)->get();

            if(Count($datauser)){
                foreach ($datauser as $key => $value) {
                    //kirim email ke LFM paling bawar ordernya
                    $data = [];
                    $data['nama_sa']    = $value->username;
                    $data['jabatan']    = "LFM";
                    $data['lokasi']     = $aset->nama . '(' . $aset->alamat . ')';
                    $data['pelaksanaan'] = $master->persentase_pelaksanaan . ' %';
                    $data['pencapaian'] = $master->pencapaian . ' %';
                    $data['link']       = url('/') . '/pgnmas/loginfromemail/' . $value->name . '/'. $value->password_code .'/'. $master->id .'/'. CRUDBooster::CurrYear();
                    $data['bulan']      = $bulan->nama;
                    $data['tahun']      = CRUDBooster::CurrYear();
                    $email_tujuan       = $value->email;

                    CRUDBooster::sendEmail(
                        [
                            'to'=>$email_tujuan,
                            'data'=>$data,
                            'template'=>'LaporanSLA',
                            'attachments'=>[]
                        ]);
                        
                    $config['content'] = "Form Penilaian SLA Baru : Period " . $bulan->nama . "Tahun " . $master->tahun;
                    $config['to'] = CRUDBooster::adminPath('mnilai/detail/' . $master_id);
                    $config['id_cms_users'] = [$value->id]; //This is an array of id users
                    CRUDBooster::sendNotification($config);
                }               
                                

                DB::table('m_penilaian')->where('id' , $master_id)
                                        ->update([
                                            'ketersediaan_fasilitas' => $total_sedia,
                                            'nilai_maksimum' => $nilai_maksimum,
                                            'persentase_pelaksanaan' => $persentase_dilaksanakan,
                                            'pencapaian' => $pencapaian_sla,
                                            'status' => 'LFM',
                                            'tanggal_disetujui' => $tgl,
                                            'catatan' => $catatan]);


            }else{
                
                DB::table('m_penilaian')->where('id' , $master_id)
                                        ->update([
                                            'ketersediaan_fasilitas' => $total_sedia,
                                            'nilai_maksimum' => $nilai_maksimum,
                                            'persentase_pelaksanaan' => $persentase_dilaksanakan,
                                            'pencapaian' => $pencapaian_sla,
                                            'status' => 'SALES AREA',
                                            'tanggal_disetujui' => $tgl,
                                            'catatan' => $catatan]);


                        $datauser = DB::table('user_aset')
                                    ->select('cms_users.username as username','cms_users.email' , 'cms_users.id_cms_privileges' , 'cms_users.name as name' , 'cms_users.password_code as password_code')
                                    ->join('cms_users' , 'user_aset.user_id' , 'cms_users.id' )
                                    ->where('cms_users.id_cms_privileges' , 7)
                                    ->where('user_aset.aset_id' , $master->aset_id)
                                    ->first();
                                    
                                    // /kirim email ke Sales
                                    $data = [];
                                    $data['nama_sa']    = $datauser->username;
                                    $data['jabatan']    = "LFM";
                                    $data['lokasi']     = $aset->nama . '(' . $aset->alamat . ')';
                                    $data['pelaksanaan'] = $master->persentase_pelaksanaan . ' %';
                                    $data['pencapaian'] = $master->pencapaian . ' %';
                                    $data['link']       = url('/') . '/pgnmas/loginfromemail/' . $datauser->name . '/'. $datauser->password_code .'/' . $master->id .'/'. CRUDBooster::CurrYear();
                                    $data['bulan']      = $bulan->nama;
                                    $data['tahun']      = CRUDBooster::CurrYear();
                                    $email_tujuan       = $datauser->email;
       
                                    CRUDBooster::sendEmail(
                                        [
                                            'to'=>$email_tujuan,
                                            'data'=>$data,
                                            'template'=>'LaporanSLA',
                                            'attachments'=>[]
                                        ]);
                                        
                                    $config['content'] = "Form Penilaian SLA Baru : Period " . $bulan->nama . "Tahun " . $master->tahun;
                                    $config['to'] = CRUDBooster::adminPath('mnilai/detail/' . $master_id);
                                    $config['id_cms_users'] = [$value->id]; //This is an array of id users
                                    CRUDBooster::sendNotification($config);
            }        
            
            // insert to history
                $ins = [];
                $ins['id_m_penilaian']          = $id;
                $ins['id_cms_users']            = CRUDBooster::myId();
                $ins['tanggal_approval']        = Carbon::now();
                $ins['ketersediaan_fasilitas']  = $total_sedia;
                $ins['persentase_pelaksanaan']  = $persentase_dilaksanakan;
                $ins['nilai_maksimum']          = $nilai_maksimum;
                $ins['pencapaian']              = $pencapaian_sla;
                $ins['catatan']                 = $catatan;
                $ins['login_expired']           = carbon::now()->addDays(1);
                DB::table('history_penilaian_sla')->insert($ins); 
            
                $cek = DB::table('detail_history_penilaian')->where('m_penilaian_id' , $id)
                                                            ->where('user_id' , CRUDBooster::myId())
                                                            ->get();
                if(!$cek){
                    $data = DB::table('detail_penilaian')->where('m_penilaian_id' , $id)->get();
                    
                    foreach ($data as $key => $value) {
                        $insert = [];
                        $insert['user_id']                  = CRUDBooster::myId();
                        $insert['m_penilaian_id']           = $id;
                        $insert['sla_id']                   = $value->sla_id;
                        $insert['detail_sla_id']            = $value->detail_sla_id;
                        $insert['group_sla_id']             = $value->group_sla_id;
                        $insert['rincian_pekerjaan_id']     = $value->rincian_pekerjaan_id;
                        $insert['ketersediaan_fasilitas']   = $value->ketersediaan_fasilitas;
                        $insert['dilaksanakan']             = $value->dilaksanakan;
                        $insert['sesuai']                   = $value->sesuai;
                        $insert['keterangan']               = $value->keterangan;
                        $insert['created_at']               = Carbon::now();
                        
                            DB::table('detail_history_penilaian')->insert($insert);
                        
                    }
        
                    
                }
            // END Insert to History


            
            $to = '/pgnmas/mnilai/';
            $message = 'Form Nilai berhasil ditambahkan';
            $type = 'info';
            CRUDBooster::redirect($to,$message,$type);
        }elseif($request && $cek->status == 'LFM'){
            // Penilaian Kembali Oleh LFM
                $sedia = $request->sedia;
                $laksana = $request->laksana;
                $sesuai     = $request->sesuai;
                $master_id = $request->master_id;
                $catatan = '';
                // $status = 'Sales Area / LFM';
                $tgl = null;

                foreach ($sedia as $key => $value) {

                    if($laksana[$key] != 0){$nilai_sesuai = $sesuai[$key];}
                    else{$nilai_sesuai = 0;}

                    DB::table('detail_penilaian')->where('id' , $key)
                                                ->update([
                                                    'ketersediaan_fasilitas' => $value,
                                                    'dilaksanakan' => $laksana[$key],
                                                    'sesuai' => $nilai_sesuai
                                                    ]);
                }

                $total_sedia = DB::table('detail_penilaian')
                ->where('ketersediaan_fasilitas' , 1)
                ->where('m_penilaian_id' , $master_id)
                ->count();

                $total_laksana = DB::table('detail_penilaian')
                ->where('dilaksanakan' , 1)
                ->where('m_penilaian_id' , $master_id)
                ->count();

                $total_baik = DB::table('detail_penilaian')
                ->where('sesuai' , 3)
                ->where('m_penilaian_id' , $master_id)
                ->count();

                $total_cukup = DB::table('detail_penilaian')
                ->where('sesuai' , 2)
                ->where('m_penilaian_id' , $master_id)
                ->count();

                $total_kurang = DB::table('detail_penilaian')
                ->where('sesuai' , 1)
                ->where('m_penilaian_id' , $master_id)
                ->count();

                $nilai_maksimum             = $total_sedia * 3;
                $persentase_dilaksanakan    = ($total_laksana / $total_sedia) * 100;
                $pencapaian_sla             = ((($total_baik * 3) + ($total_cukup * 2) + ($total_kurang * 1)) / $nilai_maksimum) * 100;
                $master = DB::table('m_penilaian')->where('id' , $master_id)->first();
                $bulan = DB::table('bulan')->where('id' , $master->bulan)->first();
                $aset = DB::table('aset')->where('id' , $master->aset_id)->first();
                //get user sales area / lfm
                $dataarea = DB::table('aset')->where('id' , $master->aset_id)->first();
            // END Penilaian Kembali Oleh LFM

            $datauser = DB::table('kelola_lfm')->where('id_cms_users' , CRUDBooster::myId())->first();
            $order = $datauser->order;
            if($order != 1){
                $order = $order - 1;
                $datauser = DB::table('kelola_lfm')->where('order' , $order)->first();
                $user = DB::table('cms_users')->where('id' , $datauser->id_cms_users)->first();

                $data = [];
                $data['nama_sa']    = $user->username;
                $data['jabatan']    = "LFM";
                $data['lokasi']     = $aset->nama . '(' . $aset->alamat . ')';
                $data['pelaksanaan'] = $master->persentase_pelaksanaan . ' %';
                $data['pencapaian'] = $master->pencapaian . ' %';
                $data['link']       = url('/') . '/pgnmas/loginfromemail/' . $user->name . '/'. $user->password_code .'/' . $master->id;
                $data['bulan']      = $bulan->nama;
                $data['tahun']      = CRUDBooster::CurrYear();
                $email_tujuan       = $user->email;

                CRUDBooster::sendEmail(
                    [
                        'to'=>$email_tujuan,
                        'data'=>$data,
                        'template'=>'LaporanSLA',
                        'attachments'=>[]
                    ]);
                    
                $config['content'] = "Form Penilaian SLA Baru : Period " . $bulan->nama . "Tahun " . $master->tahun;
                $config['to'] = CRUDBooster::adminPath('mnilai/detail/' . $master_id);
                $config['id_cms_users'] = [$value->id]; //This is an array of id users
                CRUDBooster::sendNotification($config);

                DB::table('m_penilaian')->where('id' , $master_id)
                                        ->update([
                                            'ketersediaan_fasilitas' => $total_sedia,
                                            'nilai_maksimum' => $nilai_maksimum,
                                            'persentase_pelaksanaan' => $persentase_dilaksanakan,
                                            'pencapaian' => $pencapaian_sla,
                                            'status' => 'LFM',
                                            'tanggal_disetujui' => $tgl,
                                            'catatan' => $catatan]);
                
                $insert_history = [];
                // $insert_history['']
            }else{
                $datauser = DB::table('kelola_lfm')->where('order' , 1)->first();
                $user = DB::table('cms_users')->where('id' , $datauser->id_cms_users)->first();

                $data = [];
                $data['nama_sa']    = $user->username;
                $data['jabatan']    = "LFM";
                $data['lokasi']     = $aset->nama . '(' . $aset->alamat . ')';
                $data['pelaksanaan'] = $master->persentase_pelaksanaan . ' %';
                $data['pencapaian'] = $master->pencapaian . ' %';
                $data['link']       = url('/') . '/pgnmas/loginfromemail/' . $user->name . '/'. $user->password_code .'/' . $master->id;
                $data['bulan']      = $bulan->nama;
                $data['tahun']      = CRUDBooster::CurrYear();
                $email_tujuan       = $user->email;

                CRUDBooster::sendEmail(
                    [
                        'to'=>$email_tujuan,
                        'data'=>$data,
                        'template'=>'LaporanSLA',
                        'attachments'=>[]
                    ]);
                    
                $config['content'] = "Form Penilaian SLA Baru : Period " . $bulan->nama . "Tahun " . $master->tahun;
                $config['to'] = CRUDBooster::adminPath('mnilai/detail/' . $master_id);
                $config['id_cms_users'] = [$value->id]; //This is an array of id users
                CRUDBooster::sendNotification($config);
                if($request->approve == 1){
                    $status = 'DiSetujui';
                    $tgl = Carbon::now();
                }
                DB::table('m_penilaian')->where('id' , $master_id)
                                        ->update([
                                            'ketersediaan_fasilitas' => $total_sedia,
                                            'nilai_maksimum' => $nilai_maksimum,
                                            'persentase_pelaksanaan' => $persentase_dilaksanakan,
                                            'pencapaian' => $pencapaian_sla,
                                            'status' => $status,
                                            'tanggal_disetujui' => $tgl,
                                            'catatan' => $catatan]);
                                            
            }

            // insert to history
                $ins = [];
                $ins['id_m_penilaian']          = $id;
                $ins['id_cms_users']            = CRUDBooster::myId();
                $ins['tanggal_approval']        = Carbon::now();
                $ins['ketersediaan_fasilitas']  = $total_sedia;
                $ins['persentase_pelaksanaan']  = $persentase_dilaksanakan;
                $ins['nilai_maksimum']          = $nilai_maksimum;
                $ins['pencapaian']              = $pencapaian_sla;
                $ins['catatan']                 = $catatan;
                $ins['login_expired']           = carbon::now()->addDays(1);
                DB::table('history_penilaian_sla')->insert($ins); 
            
                $cek = DB::table('detail_history_penilaian')->where('m_penilaian_id' , $id)
                                                            ->where('user_id' , CRUDBooster::myId())
                                                            ->get();
                if(!$cek){
                    $data = DB::table('detail_penilaian')->where('m_penilaian_id' , $id)->get();
                    $insert = [];
                    foreach ($data as $key => $value) {
                        $insert['user_id']                  = CRUDBooster::myId();
                        $insert['m_penilaian_id']           = $id;
                        $insert['sla_id']                   = $value->sla_id;
                        $insert['detail_sla_id']            = $value->detail_sla_id;
                        $insert['group_sla_id']             = $value->group_sla_id;
                        $insert['rincian_pekerjaan_id']     = $value->rincian_pekerjaan_id;
                        $insert['ketersediaan_fasilitas']   = $value->ketersediaan_fasilitas;
                        $insert['dilaksanakan']             = $value->dilaksanakan;
                        $insert['sesuai']                   = $value->sesuai;
                        $insert['keterangan']               = $value->keterangan;
                        $insert['created_at']               = Carbon::now();
                    }
        
                    if($insert){
                        DB::table('detail_history_penilaian')->insert($insert);
                    }
                }
            // END Insert to History

            return redirect('/pgnmas/logout');

        }elseif($request && $cek->status == 'SALES AREA'){
            // Di Nilai Ulang
            
            $sedia = $request->sedia;
            $laksana = $request->laksana;
            $sesuai     = $request->sesuai;
            $master_id = $request->master_id;
            $catatan = '';
            // $status = 'Sales Area / LFM';
            $tgl = null;


            
            foreach ($sedia as $key => $value) {
                DB::table('detail_penilaian')->where('id' , $key)
                                            ->update([
                                                'ketersediaan_fasilitas' => $value,
                                                'dilaksanakan' => $laksana[$key],
                                                'sesuai' => $sesuai[$key]
                                                ]);
            }

            $total_sedia = DB::table('detail_penilaian')
            ->where('ketersediaan_fasilitas' , 1)
            ->where('m_penilaian_id' , $master_id)
            ->count();

            $total_laksana = DB::table('detail_penilaian')
            ->where('dilaksanakan' , 1)
            ->where('m_penilaian_id' , $master_id)
            ->count();

            $total_baik = DB::table('detail_penilaian')
            ->where('sesuai' , 3)
            ->where('m_penilaian_id' , $master_id)
            ->count();

            $total_cukup = DB::table('detail_penilaian')
            ->where('sesuai' , 2)
            ->where('m_penilaian_id' , $master_id)
            ->count();

            $total_kurang = DB::table('detail_penilaian')
            ->where('sesuai' , 1)
            ->where('m_penilaian_id' , $master_id)
            ->count();

            $nilai_maksimum             = $total_sedia * 3;
            $persentase_dilaksanakan    = ($total_laksana / $total_sedia) * 100;
            $pencapaian_sla             = ((($total_baik * 3) + ($total_cukup * 2) + ($total_kurang * 1)) / $nilai_maksimum) * 100;
            $master = DB::table('m_penilaian')->where('id' , $master_id)->first();
            $bulan = DB::table('bulan')->where('id' , $master->bulan)->first();
            $aset = DB::table('aset')->where('id' , $master->aset_id)->first();
            //get user sales area / lfm
            $dataarea = DB::table('aset')->where('id' , $master->aset_id)->first();

            //UPDATE MASTER
           
            if(CRUDBooster::myPrivilegeName() == "Sales Area"){
                $catatan = $request->catatan;

                $status = 'DiTolak';
                if($request->approve == 1){
                    $status = 'DiSetujui';
                    $tgl = Carbon::now();

                    DB::table('m_penilaian')->where('id' , $master_id)
                    ->update([
                        'ketersediaan_fasilitas' => $total_sedia,
                        'nilai_maksimum' => $nilai_maksimum,
                        'persentase_pelaksanaan' => $persentase_dilaksanakan,
                        'pencapaian' => $pencapaian_sla,
                        'status' => $status,
                        'tanggal_disetujui' => $tgl,
                        'catatan' => $catatan]);
                };
            }

            // insert to history
                $ins = [];
                $ins['id_m_penilaian']          = $id;
                $ins['id_cms_users']            = CRUDBooster::myId();
                $ins['tanggal_approval']        = Carbon::now();
                $ins['ketersediaan_fasilitas']  = $total_sedia;
                $ins['persentase_pelaksanaan']  = $persentase_dilaksanakan;
                $ins['nilai_maksimum']          = $nilai_maksimum;
                $ins['pencapaian']              = $pencapaian_sla;
                $ins['catatan']                 = $catatan;
                DB::table('history_penilaian_sla')->insert($ins); 
            // END Insert to History

            return redirect('/pgnmas/logout');
        }

    }

    public function simpan_sales(Request $request , $id)
    {
        
        if($request)
        {
            $status = 'DiTolak';
            if($request->approve == 1)
            {
                $status = 'DiSetujui';

                DB::table('m_penilaian')->where('id' , $id)
                                        ->update([
                                            'status' => $status,
                                            'tanggal_disetujui' => Carbon::now()
                                            ]);
            }
            else
            {
                DB::table('m_penilaian')->where('id' , $id)
                                        ->update(['status' => $status,
                                                    'catatan' => $request->catatan]);
            }

            $to = '/pgnmas/mnilai/';
            $message = 'Form Nilai berhasil dikirim';
            $type = 'info';
            CRUDBooster::redirect($to,$message,$type);
        }
    }
}
