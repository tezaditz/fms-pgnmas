<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use CRUDBooster;
use Image;
use File;
use Carbon\Carbon;

class MasterController extends Controller
{
    public function __construct(){
        //DEFINISIKAN PATH
        $this->path = storage_path('app/public/images');
        //DEFINISIKAN DIMENSI
        $this->dimensions = ['245', '300', '500'];
    }



    public function HapusFotoUtilitas($utilitas , $id , $photo ){
        $table = '';
        switch ($utilitas) {
            case 'air':
                $table = 'master_air';
                break;
            case 'limbah':
                $table = 'master_limbah';
                break;
            case 'solar':
                $table = 'master_solar';
                break;
            default:
                $table = 'master_listrik';
                break;
        }

        DB::table($table)->where('id' , $id)->update([$photo => NULL]);

        return redirect()->back();
    }

    public function PostEditSave(Request $req , $table , $id   ){
        
        $master = DB::table($table)->where('id' , $id)->first();

        $this->validate($req, [
            'foto_before' => 'image|mimes:jpg,png,jpeg',
            'foto_after' => 'image|mimes:jpg,png,jpeg'
        ]);   

        if(!CRUDBooster::uploadFile('foto_before' , 200 , 200 , CRUDBooster::myId())){
            $fileName1 = $master->foto_before;
        }else{
            $fileName1 = CRUDBooster::uploadFile('foto_before' , 200 , 200 , CRUDBooster::myId());
        }

        if(!CRUDBooster::uploadFile('foto_after' , 200 , 200 , CRUDBooster::myId())){
            $fileName2 = $master->foto_after;
        }else{
            $fileName2 = CRUDBooster::uploadFile('foto_after' , 200 , 200 , CRUDBooster::myId());
        }
        
        // return $fileName1;
        // if(!$fileName1){
           
        // }
        $pemakaian  = str_replace(',' , '' , $req->input('pemakaian'));
        $rupiah     = str_replace(',' , '' , $req->input('rupiah'));
        
        DB::table($table)->where('id' , $id)->update([
            'tahun'     => CRUDBooster::CurrYear(),
            'pemakaian' => $pemakaian,
            'rupiah'    => $rupiah,
            'foto_before'   => $fileName1,
            'foto_after'   => $fileName2
        ]);
        
            $url_back = '';
            switch ($table) {
                case 'master_air':
                    $url_back = '/pgnmas/Air';
                    break;
                
                default:
                $url_back = '/pgnmas/master_listrik';
                    break;
            }


        
            $to         = $url_back;
            $message    = 'Form Nilai berhasil ditambahkan';
            $type       = 'info';
       
        CRUDBooster::redirect($to,$message,$type);

        return redirect()->back()->with(['success' => 'Gambar Telah Di-upload']);


    }
}
