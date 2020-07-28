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
        if($request){
            $data['sedia']      = $request->sedia;
            $data['laksana']    = $request->laksana;
            $data['sesuai']    = $request->sesuai;

            // return $data['sesuai'];
            // $nilai_sesuai = 0;
            foreach ($data['sedia'] as $key => $value) {
                $dataketersediaan = DB::table('ketersediaan_sla')->where('id' , $key)->first();
                // return $data['sesuai'][$key];
                if($data['laksana'][$key] == 0){$nilai_sesuai = 0;}else{$nilai_sesuai = $data['sesuai'][$key];}

                DB::table('detail_penilaian')
                            ->where('m_penilaian_id' , $id)
                            ->where('sla_id' , $dataketersediaan->sla_id)
                            ->where('detail_sla_id' , $dataketersediaan->detail_sla_id)
                            ->where('rincian_pekerjaan_id' , $dataketersediaan->rincian_pekerjaan_id)
                            ->update([
                                'ketersediaan_fasilitas' => $data['sedia'][$key],
                                'dilaksanakan'           => $data['laksana'][$key],
                                'sesuai'                 => $nilai_sesuai
                            ]);                
            }

                $nilai = $this->hitung($id);
            // return $nilai;
            $this->update_master($id ,  $nilai['sedia'] , $nilai['maks']  , $nilai['persentase'] , $nilai['pencapaian'] , '' , null);
            if(CRUDBooster::myPrivilegeId() == 11 || CRUDBooster::myPrivilegeId() == 7){

                if($request->approve == 1){
                    $this->update_master($id ,  $nilai['sedia'] , $nilai['maks']  , $nilai['persentase'] , $nilai['pencapaian'] , $request->catatan , null);
                    $this->update_status_master($id , 'DISETUJUI');
                    $this->create_history($id);
                }else{
                    // return 'a';
                    $this->update_master($id ,  $nilai['sedia'] , $nilai['maks']  , $nilai['persentase'] , $nilai['pencapaian'] , $request->catatan , null);
                    $this->update_status_master($id , 'DITOLAK');
                    $this->create_history($id);
                }
                
            }
            
        


            $to = '/pgnmas/penilaian/draft/' . $id;
            $message = 'Form Nilai berhasil ditambahkan , Silakan Periksa Kembali Pekerjaan Anda';
            $type = 'info';
            CRUDBooster::redirect($to,$message,$type);
        }
        
    }

    public function hitung($id){
        $total_sedia = DB::table('detail_penilaian')
                ->where('ketersediaan_fasilitas' , 1)
                ->where('m_penilaian_id' , $id)
                ->count();

                // return $total_sedia;

                $total_laksana = DB::table('detail_penilaian')
                ->where('dilaksanakan' , 1)
                ->where('m_penilaian_id' , $id)
                ->count();

                $total_baik = DB::table('detail_penilaian')
                ->where('sesuai' , 3)
                ->where('m_penilaian_id' , $id)
                ->count();

                $total_cukup = DB::table('detail_penilaian')
                ->where('sesuai' , 2)
                ->where('m_penilaian_id' , $id)
                ->count();

                $total_kurang = DB::table('detail_penilaian')
                ->where('sesuai' , 1)
                ->where('m_penilaian_id' , $id)
                ->count();
            // end hitung
            $nilai_maksimum             = $total_sedia * 3;
            // return $total_sedia;
            $persentase_dilaksanakan    = ($total_laksana / $total_sedia) * 100;
            $pencapaian_sla             = ((($total_baik * 3) + ($total_cukup * 2) + ($total_kurang * 1)) / $nilai_maksimum) * 100;

            $data['sedia'] = $total_sedia;
            $data['maks']   = $nilai_maksimum;
            $data['persentase'] = $persentase_dilaksanakan;
            $data['pencapaian'] = $pencapaian_sla;
            return $data;
    }

    public function update_master($id  , $sedia ,$maks , $persentase , $pencapaian , $catatan , $tanggal_disetujui){
        DB::table('m_penilaian')->where('id' , $id)->update([
            'ketersediaan_fasilitas'    => $sedia,
            'nilai_maksimum'            => $maks,
            'persentase_pelaksanaan'    => $persentase,
            'pencapaian'                => $pencapaian,
            'catatan'                   => $catatan,
            'tanggal_disetujui'         => $tanggal_disetujui 
        ]);
        
    }

    public function update_status_master($id , $status){

        if($status == 'DISETUJUI'){
            DB::table('m_penilaian')->where('id' , $id)->update([
                'status'                    => $status,
                'tanggal_disetujui'         => Carbon::now()
            ]);
        }else{
            DB::table('m_penilaian')->where('id' , $id)->update([
                'status'                    => $status
            ]);
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

    public function edit_nilai(Request $request , $id){
        // return $id;
        // return $request->form_laksana[$request->id_detail_penilaian];
        if($request){
            

                DB::table('detail_penilaian')->where('id' , $request->id_detail_penilaian)
                                            ->update([
                                                'dilaksanakan' => $request->form_laksana[$request->id_detail_penilaian],
                                                'sesuai' => $request->form_sesuai[$request->id_detail_penilaian],
                                                ]);
                
           
            return redirect('/pgnmas/penilaian/draft/' . $id);
        }
    }

    public function send($id){

            $this->hitung($id);

            $master = DB::table('m_penilaian')->where('id' , $id)->first();
            $bulan = DB::table('bulan')->where('id' , $master->bulan)->first();
            $aset = DB::table('aset')->where('id' , $master->aset_id)->first();
            $dataarea = DB::table('aset')->where('id' , $master->aset_id)->first();

            $SAH = DB::table('user_aset')->where('aset_id' , $master->aset_id )
                                            ->join('cms_users' , 'cms_users.id' , 'user_aset.user_id')
                                            ->where('cms_users.id_cms_privileges' , 11)
                                            ->get();
            $jabatan = 'LFM';
            $jabatan_ttd = "Legal Facility Management";
            $this->update_status_master($id , 'LFM');
            if(Count($SAH) == 0){
                $jabatan = 'SALES AREA';
                $jabatan_ttd = 'SALES AREA';
                $SAH = DB::table('user_aset')->where('aset_id' , $master->aset_id )
                                            ->join('cms_users' , 'cms_users.id' , 'user_aset.user_id')
                                            ->where('cms_users.id_cms_privileges' , 7)
                                            ->get();
            }

            if(Count($SAH) == 0){
                $to = '/pgnmas/mnilai/detail/' . $id;
                $message = 'Data LFM / Sales Area Pada Aset ini Tidak ditemukan !';
                $type = 'warning';
                CRUDBooster::redirect($to,$message,$type);
            }else{
                // kirim email
                $this->update_status_master($id , $jabatan);
                foreach ($SAH as $key => $value) {
                    //kirim email ke LFM paling bawar ordernya
                    $data = [];
                    $data['nama_sa']    = $value->username;
                    $data['jabatan']    = $jabatan_ttd;
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
            }
            $this->update_master($id , $master->ketersediaan_fasilitas , $master->nilai_maksimum ,  $master->persentase_pelaksanaan , $master->pencapaian , '' , Carbon::now());
            
            
            
            
            $this->create_history($id);

            $to = '/pgnmas/mnilai';
            $message = 'Form Nilai berhasil dikirim';
            $type = 'info';
            CRUDBooster::redirect($to,$message,$type);
    }

    public function create_history($id){
        $data = DB::table('m_penilaian')->where('id' , $id)->first();

        $insert = [];
        $insert['id_m_penilaian']           = $id;
        $insert['id_cms_users']             = CRUDBooster::myId();
        $insert['tanggal_approval']         = Carbon::now();
        $insert['ketersediaan_fasilitas']  = $data->ketersediaan_fasilitas;
        $insert['persentase_pelaksanaan']  = $data->persentase_pelaksanaan;
        $insert['nilai_maksimum']          = $data->nilai_maksimum;
        $insert['pencapaian']              = $data->pencapaian;
        $insert['catatan']                 = $data->catatan;
        if($insert){
            DB::table('history_penilaian_sla')->insert($insert);
        }
        $insert = [];
        $detail = DB::table('detail_penilaian')->where('m_penilaian_id' , $id)->get();
        foreach ($detail as $key => $value) {
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
            if($insert){
                DB::table('detail_history_penilaian')->insert($insert);
            }
        }

    }

}
