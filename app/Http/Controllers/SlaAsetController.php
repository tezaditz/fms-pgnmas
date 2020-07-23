<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use CRUDBooster;

class SlaAsetController extends Controller
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
        // return $request->all();
        // before save
        $cek = DB::table('sla_aset')
					->join('aset' , 'sla_aset.aset_id' , '=', 'aset.id')
					->join('sla' , 'sla_aset.sla_id' , '=', 'sla.id')
					->where('sla.tahun' ,  CRUDBooster::CurrYear())
					->where('aset.id' , $request->aset_id)
					->select( 'aset.id' , 'aset.nama' , 'aset.alamat')
					->groupBy('aset.id' , 'aset.nama' , 'aset.alamat')->get();
        // $cek = DB::table('sla_aset')->where('aset_id' ,$request->aset_id)->get();
        if(Count($cek) > 0)
        {
            $to = '/pgnmas/sa';
            $message = 'SLA Aset Sudah Tersedia!!';
            $type = 'warning';
            CRUDBooster::redirect($to,$message,$type);
        }
        // end before save
        if($request)
        {
            $insert = [];
            if($request->sla)
            {
                foreach ($request->sla as $key => $value)
                {
                    $insert[$key]['aset_id'] = $request->aset_id;
                    $insert[$key]['sla_id'] = $key;
                    $insert[$key]['aktif'] = 1;
                }
                if($insert)
                {
                    DB::table('sla_aset')->insert($insert);
                }

            }
            else
            {
                $insert[$key]['aset_id'] = $request->aset_id;
                DB::table('sla_aset')->insert($insert);
            }
        
            $to = '/pgnmas/sa';
            $message = 'Data SLA Aset Berhasil Ditambahkan';
            $type = 'info';
            CRUDBooster::redirect($to,$message,$type);
        }
        
        
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
        $data = $request->all();
        if($data)
        {
            DB::table('sla_aset')->where('aset_id' , $id)->delete();
            $insert = [];
            if($request->sla)
                foreach ($request->sla as $key => $value)
                {
                    $insert[$key]['aset_id'] = $request->aset_id;
                    $insert[$key]['sla_id'] = $key;
                    $insert[$key]['aktif'] = 1;
                }
                if($insert)
                {
                    DB::table('sla_aset')->insert($insert);
                }
            else
            {
                $insert[$key]['aset_id'] = $request->aset_id;
                DB::table('sla_aset')->insert($insert);
            }
            $to = '/pgnmas/sa';
            $message = 'Data SLA Aset Berhasil DiUbah';
            $type = 'info';
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
