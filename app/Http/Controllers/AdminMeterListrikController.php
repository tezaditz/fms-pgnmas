<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminMeterListrikController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "meter_listrik";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Aset","name"=>"aset_id","join"=>"aset,nama"];
			$this->col[] = ["label"=>"Meter Id","name"=>"meter_id"];
			# END COLUMNS DO NOT REMOVE THIS LINE



			$aset = [];
			$user_aset = DB::table('user_aset')->where('user_id' , CRUDBooster::MyId())->get();
			foreach ($user_aset as $key => $value) {
				$aset[] = $value->aset_id;
			}

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Aset','name'=>'aset_id','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10','dataquery'=>'select aset.id as value , aset.nama as label from aset join user_aset on aset.id = user_aset.aset_id where user_aset.user_id ='. CRUDBooster::myId() .'' ];
			$this->form[] = ['label'=>'Meter Id','name'=>'meter_id','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Aset','name'=>'aset_id','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10','dataquery'=>'select aset.id as value , aset.nama as label from aset join user_aset on aset.id = user_aset.aset_id where user_aset.user_id = 1'];
			//$this->form[] = ['label'=>'Meter Id','name'=>'meter_id','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
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
	        $this->load_js[] = asset("js/utilitas/air/add.js");
	        
	        
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
			$aset = [];
			$user_aset = DB::table('user_aset')->where('user_id' , CRUDBooster::MyId())->get();
			foreach ($user_aset as $key => $value) {
				$aset[] = $value->aset_id;
			}			
				$query->whereIn('aset_id' , $aset);
				
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

		public function getmeterid($utility , $asetid , $period ){
			if($utility == 'AIR' || $utility == 'air'){
				$data = DB::table('meter_air')->where('aset_id' , $asetid)->get();
			}
				// return $data;
				foreach ($data as $key => $value) {

					$c = DB::table('detail_utility')
								->where('tahun' , CRUDBooster::CurrYear())
								->where('periode' , $period)
								->where('aset_id' ,  $asetid)
								->where('meter_id' , $value->id)
								->where('utility' , $utility)
								->where('jenis' , $value->jenis)
								->Count();
					// return $c;
					if($c == 0){
						$b['tahun']  	= CRUDBooster::CurrYear();
						$b['periode']	= $period;
						$b['utility']	= $utility;
						$b['aset_id']	= $asetid;
						$b['meter_id']	= $value->id;
						$b['jenis']		= $value->jenis;
						$b['no_meter']	= $value->meter_id;
						$b['pemakaian'] = 0;
						$b['rupiah']	= 0;

						DB::table('detail_utility')->insert($b);
					}
						
					
				}


			
			$data = DB::table('detail_utility')->where('aset_id' , $asetid)
			->where('periode' , $period)
			->where('tahun' , CRUDBooster::CurrYear())
			->get();
			return $data;
		}

		public function edit_laporan($id)
		{
			// return $id;
			$data['page_title'] = 'Edit Laporan Utilitas';
			$data['utilitas'] = DB::table('detail_utility')->where('id' , $id)->first();
			$data['dataaset'] = DB::table('aset')->where('id' , $data['utilitas']->aset_id)->first();
			$data['id'] = $id;
			$bulan = ['' , 'Januari' , 'Februari' , 'Maret' , 'April' , 'Mei' , 'Juni' , 'Juli' , 'Agustus' , 'September' , 'Oktober' , 'November' , 'Desember'];
			$data['bulan'] = $bulan[$data['utilitas']->periode];
			// return $data['dataaset']->nama;
			$this->cbView('backend.utilitas.listrik.edit_detail',$data);
		}

		public function simpandetail()
		{
			$a = Request::get('foto_before_text');
			// return $a;

			$file_before = CRUDBooster::uploadFile('foto_before' , true);
			// return $file_before;
			$file_after  = CRUDBooster::uploadFile('foto_after' , true);
			
			$pemakaian  = str_replace(",","" , Request::get('pemakaian'));
			$rupiah		= str_replace(",","" ,Request::get('rupiah'));
			
			DB::table('detail_utility')->where('id' , Request::get('id'))
										->update([
											'pemakaian' 	=> $pemakaian,
											'rupiah' 		=> $rupiah,
											'foto_sebelum'	=> $file_before,
											'foto_sesudah'	=> $file_after,
											'flag'			=> 1
										
										]);
			$a = DB::table('detail_utility')->where('id' , Request::get('id'))->first();
			$id = Request::get('id');
			
			// simpan tu master air
			$data = DB::table('detail_utility')
						->select('periode' , 'aset_id' , 'jenis' , DB::raw('SUM(Pemakaian) as SumPemakaian') , DB::raw('SUM(rupiah) as SumRupiah'))
						->where('utility' , 'AIR')
						->where('periode' , $a->periode)
						->where('aset_id',$a->aset_id )
						->where('flag' , 1)
						->groupby('periode' , 'aset_id' , 'jenis')
						->get();
			foreach ($data as $key => $value) {
				$b = DB::table('master_air')
						->where('period' , $value->periode)
						->where('aset_id' , $value->aset_id)
						->where('jenis' , $value->jenis)
						->get();
				if(Count($b) == 0){
					$insert = [];
					$insert['tahun'] 	= CRUDBooster::CurrYear();
					$insert['period']	= $value->periode;
					$insert['aset_id']	= $value->aset_id;
					$insert['pemakaian']	= $value->SumPemakaian;
					$insert['jenis']		= $value->jenis;
					$insert['rupiah']		= $value->SumRupiah;
					DB::table('master_air')->insert($insert);
				}else{
					DB::table('master_air')
					->where('period' , $value->periode)
					->where('aset_id' , $value->aset_id)
					->where('jenis' , $value->jenis)
					->update(['pemakaian' => $value->SumPemakaian,
							  'rupiah' => $value->SumRupiah]);
				}
			}

			

			$to = '/pgnmas/getmeterid/add/'.$a->utility.'/'.$a->aset_id.'/'.$a->periode;
			// return $to;
			$message = 'master kegiatan berhasil ditambahkan';
			$type = 'info';
			CRUDBooster::redirect($to,$message,$type);
		}


	    //By the way, you can still create your own method in here... :) 


	}