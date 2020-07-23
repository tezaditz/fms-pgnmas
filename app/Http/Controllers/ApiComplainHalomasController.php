<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiComplainHalomasController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "complain_halomas";        
				$this->permalink   = "complain_halomas";    
				$this->method_type = "post";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process
				
		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query

		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
				$no = DB::table('nomor_tiket')->where('tahun' , CRUDBooster::CurrYear())
												->where('keterangan' , 'Work Order')
												->first();
												
				$nomor = $no->nilai + 1;
				$nomor2 = $no->nilai + 1;
				switch (strlen($nomor)) {
					case 1:
						$nomor = "000" . $nomor;
						break;
					case 2:
						$nomor = "00" . $nomor;
						break;
					case 3:
						$nomor = "0" . $nomor;
						break;
					default:
						$nomor = "0" . $nomor;
						break;
				}  
				$nomor = "WO-" . $nomor;
								
				$get_data = DB::table('complain_halomas')->where('id' , $result['id'])->first();
				// jenis complain
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


				$insert['nomor'] 				= $nomor;
				$insert['complain_halomas_id'] 				= $result['id'];
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
				
				DB::table('nomor_tiket')->where('tahun' , CRUDBooster::CurrYear())
												->where('keterangan' , 'Work Order')
												->update(['nilai' => $nomor2]);

				$insert = [];
				$get_complain = DB::table('complain')->where('nomor' , $nomor)->first();
				$insert['complain_id'] = $get_complain->id;
				DB::table('tindaklanjut_complain')->insert($insert);


				
		    }

		}