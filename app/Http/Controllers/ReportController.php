<?php namespace App\Http\Controllers;

	use Session;
	use Illuminate\Http\Request;
	use DB;
	use CRUDBooster;
	use Charts;
	use Cache;
	use Carbon\Carbon;
	use PDF;
	// use ConsoleTVs\Charts\Charts;

	class ReportController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = false;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = false;
			$this->button_show = true;
			$this->button_filter = false;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "master_listrik";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Tahun","name"=>"tahun"];
			$this->col[] = ["label"=>"Period","name"=>"period","join"=>"bulan,nama"];
			$this->col[] = ["label"=>"Aset","name"=>"aset_id","join"=>"aset,nama"];
			$this->col[] = ["label"=>"Pemakaian","name"=>"pemakaian"];
			$this->col[] = ["label"=>"Rupiah","name"=>"rupiah"];
			$this->col[] = ["label"=>"Foto Before","name"=>"foto_before","image"=>true];
			$this->col[] = ["label"=>"Foto After","name"=>"foto_after","image"=>true];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Period','name'=>'period','type'=>'select','validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataquery'=>'select id as value , nama as label from bulan order by id'];
			$this->form[] = ['label'=>'Aset','name'=>'aset_id','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10' ,'dataquery'=>'select id as value , nama as label from aset order by id' ];
			$this->form[] = ['label'=>'Pemakaian','name'=>'pemakaian','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Rupiah','name'=>'rupiah','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Foto Before','name'=>'foto_before','type'=>'upload','validation'=>'required','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Foto After','name'=>'foto_after','type'=>'upload','validation'=>'required','width'=>'col-sm-10'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Period','name'=>'period','type'=>'select','validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataquery'=>'select id as value , nama as label from bulan order by id'];
			//$this->form[] = ['label'=>'Aset','name'=>'aset_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Pemakaian','name'=>'pemakaian','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Rupiah','name'=>'rupiah','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Foto Before','name'=>'foto_before','type'=>'upload','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Foto After','name'=>'foto_after','type'=>'upload','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
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
		
		public function getLaporanSLA()
		{
			if(!CRUDBooster::MyId()){

				return redirect('/pgnmas/login');
			}

            $data = [];

			
		
			$this->cbView('backend.laporan.sla.index' ,$data);
		}

		public function postLaporanSLA(Request $request){
			
			if($request->all()){
				$db_aset = DB::table('user_aset')->where('user_id' , CRUDBooster::MyId())->get(['aset_id']);
				$aset = [];
				foreach ($db_aset as $key => $value) {
					$aset[] = $value->aset_id;
				}
				$period = $request->input('period');
				$pencapaian = [];
				$bulan = [];
				if($period == 1)
				{
					$pencapaian = DB::table('m_penilaian')->where('bulan' , '<' , 7)
											->whereNotNull('pencapaian')
											->where('status' , 'DiSetujui')
											->whereIn('aset_id' ,  $aset)
											->get();
					$bulan = ['Jan' , 'Feb' , 'Mar' , 'Apr' , 'Mei' , 'Jun'];
					
				}else{
					$pencapaian = DB::table('m_penilaian')->where('bulan' , '>' , 6)
											->whereNotNull('pencapaian')
											->where('status' , 'DiSetujui')
											->get();
					$bulan = ['Jul' , 'Aug' , 'Sep' , 'Oct' , 'Nov' , 'Dec'];
				}
				
				foreach ($pencapaian as $key => $value) {
					$cek = DB::table('rekap_penilaian_sla')->where('aset_id' , $value->aset_id)
													->where('tahun' , $request->input('tahun'))
													->count();
					if($cek != 0){
						DB::table('rekap_penilaian_sla')->where('aset_id' , $value->aset_id)
													->where('tahun' , $request->input('tahun'))
													->delete();
					}
					$data_aset = DB::table('user_aset')->where('aset_id' , $value->aset_id)->first();

					$insert = [];
					$insert['tahun'] 		= $request->input('tahun');
					$insert['regional_id'] 	= $data_aset->regional_id;
					$insert['aset_id'] 		= $value->aset_id;
					$insert['jan']			= 0;
					$insert['feb']			= 0;
					$insert['mar']			= 0;
					$insert['apr']			= 0;
					$insert['mei']			= 0;
					$insert['jun']			= 0;

					switch ($value->bulan) {
						case 1:
						$insert['jan']			= $value->pencapaian;
							break;
						case 2:
						$insert['feb']			= $value->pencapaian;
							break;
						case 3:
						$insert['mar']			= $value->pencapaian;
							break;
						case 4:
							$insert['apr']			= $value->pencapaian;
							break;
						case 5:
							$insert['mei']			= $value->pencapaian;
							break;
						case 6:
							$insert['jun']			= $value->pencapaian;
							break;
						case 7:
							$insert['jul']			= $value->pencapaian;
							break;
						case 8:
							$insert['aug']			= $value->pencapaian;
							break;
						case 9:
							$insert['sep']			= $value->pencapaian;
							break;
						case 10:
							$insert['oct']			= $value->pencapaian;
							break;
						case 11:
							$insert['nov']			= $value->pencapaian;
							break;
						default:
						$insert['dec']			= $value->pencapaian;
						break;
					}

					

					DB::table('rekap_penilaian_sla')->insert($insert);

				}

				$data['pencapaian'] = DB::table('rekap_penilaian_sla')
											->join('regional' , 'rekap_penilaian_sla.regional_id' , '=' , 'regional.id')
											->join('aset' , 'rekap_penilaian_sla.aset_id' , '=' , 'aset.id')
											->select('regional.uraian' , 'aset.nama' , 'rekap_penilaian_sla.*')
											->get();
				
				$data['tahun']		= $request->input('tahun');
				$data['bulan']		= $bulan;
				$data['period']		= $period;
				$pdf = PDF::setOptions(['isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true])
				->loadView('backend.laporan.sla.report', $data);
				$pdf->setPaper('legal');
				return $pdf->stream('test.pdf');

			}
		}

		public function getLaporanUti()
		{
			if(!CRUDBooster::MyId()){

				return redirect('/pgnmas/login');
			}
			$data = [];
			$this->cbView('backend.laporan.utilitas.index' ,$data);
		}

		public function postLaporanUti(Request $request){

			$a = $request->input('utilitas');
			$b = "";
			$c = "";
			switch ($a) {
				case 'listrik':
					$a = 'listrik';
					$b = '';
					break;
				case 'airpam':
					$a = 'Air';
					$b = 'Pam';
					break;
				case 'airsumur':
					$a = 'Air';
					$b = 'Sumur';
					break;
				case 'limbahbasah':
					$a = 'Limbah';
					$b = 'Basah';
					break;
				case 'limbahkering':
					$a = 'Limbah';
					$b = 'Kering';
					break;
				case 'solar':
					$a = 'Solar';
					$b = '';
					break;
				default:
					# code...
					break;
			}


			$data = [];
			
			$data['tahun']		= $request->input('tahun');
			$db_aset = DB::table('user_aset')->where('user_id' , CRUDBooster::MyId())->get(['aset_id']);
				$aset = [];
				foreach ($db_aset as $key => $value) {
					$aset[] = $value->aset_id;
				}

			$data['pemakaian']	= DB::table('rekap_pemakaian')
									->where('tahun' , $request->input('tahun'))
									->where('jenis_pemakaian' , $a)
									->where('jenis' , $b)
									->whereIn('aset_id' , $aset)    
									->get();
			$data['utilitas'] = $a;
			$data['jenis']	   = $b;


			$pdf = PDF::setOptions(['isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true])
				->loadView('backend.laporan.utilitas.report', $data);
				$pdf->setPaper('legal' , 'landscape');
				
				return $pdf->stream('test.pdf');
		}



		
	}