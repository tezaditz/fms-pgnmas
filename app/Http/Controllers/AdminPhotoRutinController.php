<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;
	use Illuminate\Support\Facades\App;
	use PDF;
	use Carbon\Carbon;
	use Maatwebsite\Excel\Facades\Excel;
	use PHPExcel_Worksheet_Drawing;

	class AdminPhotoRutinController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = false;
			$this->button_edit = true;
			$this->button_delete = false;
			$this->button_detail = false;
			$this->button_show = false;
			$this->button_filter = false;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "dokumentasi_pekerjaan";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Tanggal","name"=>"tanggal"];
			$this->col[] = ["label"=>"Foto Sebelum","name"=>"foto_sebelum",'image'=>true];
			$this->col[] = ["label"=>"Foto Sesudah","name"=>"foto_sesudah",'image'=>true];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Detail Pekerjaan Id','name'=>'id_t','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'detail_pekerjaan,id'];
			$this->form[] = ['label'=>'Tanggal','name'=>'tanggal','type'=>'date','validation'=>'required|date','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Foto Sebelum','name'=>'foto_sebelum','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Foto Sesudah','name'=>'foto_sesudah','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ["label"=>"Detail Pekerjaan Id","name"=>"detail_pekerjaan_id","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"detail_pekerjaan,id"];
			//$this->form[] = ["label"=>"Tanggal","name"=>"tanggal","type"=>"date","required"=>TRUE,"validation"=>"required|date"];
			//$this->form[] = ["label"=>"Foto Sebelum","name"=>"foto_sebelum","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Foto Sesudah","name"=>"foto_sesudah","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			# OLD END FORM

			/* 
	        | ---------------------------------------------------------------------- 
	        | Sub Module
	        | ----------------------------------------------------------------------     
			| @label          = Label of action 
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class  
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        | 
	        */
	        $this->sub_module = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */
	        $this->addaction = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Button Selected
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button 
	        | Then about the action, you should code at actionButtonSelected method 
	        | 
	        */
	        $this->button_selected = array();

	                
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------     
	        | @message = Text of message 
	        | @type    = warning,success,danger,info        
	        | 
	        */
	        $this->alert        = array();
	                

	        
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add more button to header button 
	        | ----------------------------------------------------------------------     
	        | @label = Name of button 
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        | 
	        */
	        $this->index_button = array();



	        /* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
	        $this->table_row_color = array();     	          

	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | You may use this bellow array to add statistic at dashboard 
	        | ---------------------------------------------------------------------- 
	        | @label, @count, @icon, @color 
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ---------------------------------------------------------------------- 
	        | Add javascript at body 
	        | ---------------------------------------------------------------------- 
	        | javascript code in the variable 
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;


            /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code before index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code after index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include Javascript File 
	        | ---------------------------------------------------------------------- 
	        | URL of your javascript each array 
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();
	        $this->load_js[] = asset("js/dokumentasi/rutin.js");
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Add css style at body 
	        | ---------------------------------------------------------------------- 
	        | css code in the variable 
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include css File 
	        | ---------------------------------------------------------------------- 
	        | URL of your css each array 
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();
	        
	        
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for button selected
	    | ---------------------------------------------------------------------- 
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here
	            
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
	    public function hook_query_index(&$query) {
	        //Your code here
	            
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
	    	//Your code here
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before add data is execute
	    | ---------------------------------------------------------------------- 
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
	    public function hook_after_add($id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before update data is execute
	    | ---------------------------------------------------------------------- 
	    | @postdata = input post data 
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_edit(&$postdata,$id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_edit($id) {
	        //Your code here 

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }

		public function getIndex()
		{
			if(!CRUDBooster::isView()) CRUDBooster::redirect(CRUDBooster::adminPath(),trans('crudbooster.denied_access'));
   
			//Create your own query 
			$data = [];
			$data['page_title'] = 'Dokumentasi Pekerjaan';
			$data['result'] = DB::table('dokumentasi_pekerjaan')->orderby('id','desc')
			->where('jenis_transaksi' , 'Rutin')
			->paginate(10);
			$aset = [];
			$user_aset = DB::table('user_aset')->where('user_id' , CRUDBooster::MyId())->get();
			foreach ($user_aset as $key => $value) {
				$aset[] = $value->aset_id;
			}

			$data['tgl']    = Carbon::now()->format('Y-m-d');
			$data['period'] = DB::table('bulan')->get();
			$data['sla'] 	= DB::table('SLA')->where('tahun' , CRUDBooster::CurrYear())->get();
			$data['aset']	= DB::table('aset')->whereIn('id' , $aset)->get();
				
			//Create a view. Please use `cbView` method instead of view method from laravel.
			$this->cbView('backend.dokumentasi.index',$data);
		}

		public function getDetailSLA($id)
		{
			$data = DB::table('Detail_Sla')->where('sla_id' , $id)->get();

			return response()->json($data);
		}

		public function getRincianPekerjaan($id)
		{

			$data = DB::table('sub_detail_sla')->where('detail_sla_id' , $id)
			->join('rincian_pekerjaan' , 'sub_detail_sla.rincian_pekerjaan_id' , 'rincian_pekerjaan.id')
			->select('rincian_pekerjaan.id' , 'rincian_pekerjaan.uraian')
			->get();

			return response()->json($data);
		}


		public function cari_data( $aset_id = null , $sla_id = null , $detail_sla_id = null , $rinci_id = null  , $period = null  ){
			
			if($aset_id != null){
				if($period != null){
					if($sla_id != null){
						if($detail_sla_id != null){
							if($rinci_id != null){

							}
							$master = DB::table('m_pekerjaan')
								->where('tahun' , CRUDBooster::CurrYear())
								->where('aset_id' , $aset_id)
								->where('period' , $period)->first();

							$detail = DB::table('detail_pekerjaan')->where('m_pekerjaan_id' , $master->id)
																	->where('sla_id' , $sla_id)
																	->where('detail_sla_id' , $detail_sla_id)
																	->get();
							$iddetail = [];
							// return response()->json($detail);
							foreach ($detail as $key => $value) {
								$iddetail[] = $value->id;
							};
							$sub = DB::table('sub_detail_pekerjaan')->WhereMonth('tanggal' , $period)
																	->whereIn('detail_pekerjaan_id' , $iddetail)
																	->get();
							
							$data['master'] = $master;
							$data['detail'] = $detail;
							$data['sub'] = $sub;
				
							return response()->json($data);
										

						}else{
							$master = DB::table('m_pekerjaan')
							->where('tahun' , CRUDBooster::CurrYear())
							->where('aset_id' , $aset_id)
							->where('period' ,$period)->first();

							$detail = DB::table('detail_pekerjaan')->where('m_pekerjaan_id' , $master->id)
																->where('sla_id' , $sla_id)
																->get();
							
							$iddetail = [];
							// return response()->json($detail);
							foreach ($detail as $key => $value) {
								$iddetail[] = $value->id;
							};
							$sub = DB::table('sub_detail_pekerjaan')->WhereMonth('tanggal' , $period)
																	->whereIn('detail_pekerjaan_id' , $iddetail)
																	->get();
							
							$data['master'] = $master;
							$data['detail'] = $detail;
							$data['sub'] = $sub;
				
							return response()->json($data);							
						}
					}else{
						$master = DB::table('m_pekerjaan')
							->where('tahun' , CRUDBooster::CurrYear())
							->where('aset_id' , $aset_id)
							->where('period' ,$period)->first();

							$detail = DB::table('detail_pekerjaan')->where('m_pekerjaan_id' , $master->id)
																->get();
							$iddetail = [];
							// return response()->json($detail);
							foreach ($detail as $key => $value) {
								$iddetail[] = $value->id;
							};
							$sub = DB::table('sub_detail_pekerjaan')->WhereMonth('tanggal' , $period)
																	->whereIn('detail_pekerjaan_id' , $iddetail)
																	->get();
							
							$data['master'] = $master;
							$data['detail'] = $detail;
							$data['sub'] = $sub;
				
							return response()->json($data);
					}
				}else{
					
				}
			}

			
				
				
			
			
		}

		public function print($id){
			
			$data['sub'] 		= DB::table('sub_detail_pekerjaan')->where('id' , $id)->first();
			$data['detail'] 	= DB::table('detail_pekerjaan')->where('id' , $data['sub']->detail_pekerjaan_id)->first();
			$data['master']		= DB::table('m_pekerjaan')->where('id' , $data['detail']->m_pekerjaan_id)->first();
			$data['bulan']		= DB::table('bulan')->where('id' , $data['master']->period)->first();
			$data['tahun']		= CRUDBooster::CurrYear();
			$data['sla']		= DB::table('sla')->where('id' , $data['detail']->sla_id)->first();
			$data['detail_sla']	= DB::table('detail_sla')->where('id' , $data['detail']->detail_sla_id)->first();
			$tanggal 			= Carbon::parse($data['sub']->tanggal);
			
			$data['tgl'] 		= $tanggal->day;
			$data['bln'] 		= $tanggal->month;
			$data['thn'] 		= $tanggal->year;
			$data['aset']		= DB::table('aset')->where('id' , $data['master']->aset_id)->first();
			$data['area']		= DB::table('area')->where('id' , $data['aset']->area_id)->first();
			$data['wilayah']		= DB::table('wilayah')->where('id' , $data['area']->wilayah_id)->first();


			$pdf = PDF::setOptions(['isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true])->loadView('backend.dokumentasi.print2', $data);
			return $pdf->stream('test.pdf');
		}

		public function create_excel($id){
			ini_set('memory_limit', '1024M');
			set_time_limit(180);
			
			$a = DB::table('sub_detail_pekerjaan')->where('id' , $id)->first();
			$data['detail_pekerjaan'] = DB::table('detail_pekerjaan')->where('id' , $a->detail_pekerjaan_id)->first();
			$b = DB::table('m_pekerjaan')->where('id',$data['detail_pekerjaan']->m_pekerjaan_id)->first();
			$data['aset'] = DB::table('aset')
			->join('area' , 'aset.area_id' , 'area.id')
			->join('wilayah' , 'wilayah.id' , 'area.wilayah_id')
			->where('aset.id' , $b->aset_id)
			->select('aset.nama as NmAset' , 'aset.alamat as alamat' , 'area.uraian as NmArea' , 'wilayah.uraian as NmWilayah')
			->first();
			
			$tanggal			= 	Carbon::parse($a->tanggal);
			$data['bulan'] 		=	DB::table('bulan')->where('id' , $tanggal->month)->first();
			$data['thn']		= 	$tanggal->year;
			$data['foto1']		= 	'app/'.$a->foto_sebelum;
			$data['foto2']		=   'app/'.$a->foto_sesudah;


			Excel::create('Laporan', function ($excel) use ($data) {
				$excel->getProperties()->setCreator("Maarten Balliauw")
                ->setLastModifiedBy("Data Solusion Comindo")
                ->setTitle("Office 2007 XLSX Test Document")
                ->setSubject("Office 2007 XLSX Test Document")
                ->setDescription("Test document for Office 2007 XLSX, generated using PHP classes.")
                ->setKeywords("office 2007 openxml php")
                ->setCategory("Test result file");
            		$excel->sheet('sheet_1', function ($sheet) use ($data ) {
						$objDrawing = new PHPExcel_Worksheet_Drawing;
						$objDrawing->setPath(storage_path('app/uploads/img/logo2.png'));
						$objDrawing->setHeight(80);
						$objDrawing->setCoordinates('A1');
						$objDrawing->setWorksheet($sheet);

						$objDrawing = new PHPExcel_Worksheet_Drawing;
						$objDrawing->setPath(storage_path('app/uploads/img/logo.png'));
						$objDrawing->setHeight(30);
						$objDrawing->setCoordinates('K2');
						$objDrawing->setWorksheet($sheet);



						$sheet->mergeCells('E2:J2');
						$sheet->mergeCells('E3:J3');
						$sheet->mergeCells('E4:J4');
						$sheet->setCellValue('E2', 'FORM HASIL TINDAKLANJUT PEKERJAAN RUTIN');
						$sheet->setCellValue('e3', 'BULAN '. strtoupper($data['bulan']->nama) .' TAHUN ' . $data['thn']);
						$sheet->setCellValue('e4', 'PT.PERMATA GRAHA NUSANTARA');

						$sheet->cells('E2:J4', function($cells) {
							$cells->setAlignment('center');
							$cells->setValignment('center');
							$cells->setFontWeight('bold');
						});
				
						$sheet->mergeCells('B6:E6');
						$sheet->setCellValue('B6', '1.SERVICES LEVEL AGGREEMENTS');
						$sheet->mergeCells('g6:K6');
						$sheet->setCellValue('G6', '2.LOKASI');
						$sheet->cells('B6:K6', function($cells) {
							$cells->setAlignment('LEFT');
							$cells->setValignment('center');
							$cells->setFontWeight('bold');
							$cells->setFont(array('italic'=>true));
						});
						$sheet->setCellValue('B8', 'Uraian SLA');				
						
						$sheet->setCellValue('B9', 'Detail SLA');
						$sheet->setCellValue('B10', 'Detail Pekerjaan');
						$sheet->setCellValue('C9', ':');
						$sheet->setCellValue('C8', ':');
						$sheet->setCellValue('C10', ':');

						$sheet->setCellValue('D8', $data['detail_pekerjaan']->sla_uraian);
						$sheet->setCellValue('D9', $data['detail_pekerjaan']->detail_sla_uraian);
						$sheet->mergeCells('D10:E12');				
						$sheet->setCellValue('D10', $data['detail_pekerjaan']->rincian_pekerjaan_uraian);				
						$sheet->getStyle('D10')->getAlignment()->setWrapText(true);
						
						$label = ['NAMA ASET' , 'ALAMAT' , 'AREA' , 'WILAYAH'];
						$nilai = [$data['aset']->NmAset , $data['aset']->alamat , $data['aset']->NmArea  , $data['aset']->NmWilayah ];
						$no = 0;
						$no_start = 8;   
						foreach ($label as $key => $value) {
							$sheet->setCellValue('G'.$no_start.'' , $label[$no]);
							$sheet->setCellValue('H'.$no_start.'' , ':');
							$sheet->setCellValue('I'.$no_start.'' , $nilai[$no]);
							$no_start = $no_start + 1;
							$no++;
						}
						
						$row = 14;
						$sheet->mergeCells('B'.$row.':F'.$row.'');
						$sheet->setCellValue('B'.$row, 'FOTO SEBELUM');
						$sheet->mergeCells('G'.$row.':L'.$row.'');
						$sheet->setCellValue('G'.$row, 'FOTO SESUDAH');

						$objDrawing = new PHPExcel_Worksheet_Drawing;
						$objDrawing->setPath(storage_path($data['foto1']));
						$objDrawing->setHeight(200);
						$objDrawing->setCoordinates('B16');
						$objDrawing->setWorksheet($sheet);

						$objDrawing = new PHPExcel_Worksheet_Drawing;
						$objDrawing->setPath(storage_path($data['foto2']));
						$objDrawing->setHeight(200);
						$objDrawing->setCoordinates('G16');
						$objDrawing->setWorksheet($sheet);

						$sheet->setWidth(array(
							'A'     =>  5,
							'B'     =>  14.5,
							'C'		=>  3,
							'D'		=> 	15,
							'E'		=> 	15
						));

                
            	});
			})->download('xlsx');
        
		}

	    //By the way, you can still create your own method in here... :) 


	}