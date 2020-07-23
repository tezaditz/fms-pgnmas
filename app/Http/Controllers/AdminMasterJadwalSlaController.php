<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;
	use Carbon\Carbon;

	class AdminMasterJadwalSlaController extends \crocodicstudio\crudbooster\controllers\CBController {

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
			$this->button_edit = false;
			$this->button_delete = false;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = false;
			$this->button_import = false;
			$this->button_export = false;
			$this->table 				= "master_jadwal_sla";
			$this->sidebar_mode		   	= "collapse-mini"; //normal,mini,collapse,collapse-mini
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Sla Id","name"=>"sla_id" , "join"=>"sla,uraian"];
			$this->col[] = ["label"=>"Detail Sla Id","name"=>"detail_sla_id", "join"=>"detail_sla,uraian"];
			$this->col[] = ["label"=>"Frekuensi Id","name"=>"frekuensi_id", "join"=>"frekuensi,uraian"];
			$this->col[] = ["label"=>"Senin","name"=>"H1"];
			$this->col[] = ["label"=>"Selasa","name"=>"H2"];
			$this->col[] = ["label"=>"Rabu","name"=>"H3"];
			$this->col[] = ["label"=>"Kamis","name"=>"H4"];
			$this->col[] = ["label"=>"Jumat","name"=>"H5"];
			$this->col[] = ["label"=>"Sabtu","name"=>"H6"];
			$this->col[] = ["label"=>"Minggu","name"=>"H7"];
			$this->col[] = ["label"=>"Minggu 1","name"=>"M1"];
			$this->col[] = ["label"=>"Minggu 2","name"=>"M2"];
			$this->col[] = ["label"=>"Minggu 3","name"=>"M3"];
			$this->col[] = ["label"=>"Minggu 4","name"=>"M4"];
			$this->col[] = ["label"=>"Minggu 5","name"=>"M5"];
			$this->col[] = ["label"=>"Januari","name"=>"B1"];
			$this->col[] = ["label"=>"Februari","name"=>"B2"];
			$this->col[] = ["label"=>"Maret","name"=>"B3"];
			$this->col[] = ["label"=>"April","name"=>"B4"];
			$this->col[] = ["label"=>"Mei","name"=>"B5"];
			$this->col[] = ["label"=>"Juni","name"=>"B6"];
			$this->col[] = ["label"=>"Juli","name"=>"B7"];
			$this->col[] = ["label"=>"Agustus","name"=>"B8"];
			$this->col[] = ["label"=>"September","name"=>"B9"];
			$this->col[] = ["label"=>"Oktober","name"=>"B10"];
			$this->col[] = ["label"=>"November","name"=>"B11"];
			$this->col[] = ["label"=>"Desember","name"=>"B12"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Sla','name'=>'sla_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'sla,id','datatable_where'=>'tahun ='. CRUDBooster::CurrYear()];
			$this->form[] = ['label'=>'Detail Sla Id','name'=>'detail_sla_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'detail_sla,id'];
			$this->form[] = ['label'=>'Frekuensi Id','name'=>'frekuensi_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'frekuensi,id'];
			$this->form[] = ['label'=>'H1','name'=>'H1','type'=>'checkbox','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'H2','name'=>'H2','type'=>'checkbox','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'H3','name'=>'H3','type'=>'checkbox','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'H4','name'=>'H4','type'=>'checkbox','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'H5','name'=>'H5','type'=>'checkbox','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'H6','name'=>'H6','type'=>'checkbox','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'H7','name'=>'H7','type'=>'checkbox','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'M1','name'=>'M1','type'=>'checkbox','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'M2','name'=>'M2','type'=>'checkbox','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'M3','name'=>'M3','type'=>'checkbox','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'M4','name'=>'M4','type'=>'checkbox','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'M5','name'=>'M5','type'=>'checkbox','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'B1','name'=>'B1','type'=>'checkbox','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'B2','name'=>'B2','type'=>'checkbox','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'B3','name'=>'B3','type'=>'checkbox','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'B4','name'=>'B4','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'B5','name'=>'B5','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'B6','name'=>'B6','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'B7','name'=>'B7','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'B8','name'=>'B8','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'B9','name'=>'B9','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'B10','name'=>'B10','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'B11','name'=>'B11','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'B12','name'=>'B12','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Create At','name'=>'create_at','type'=>'datetime','validation'=>'required|date_format:Y-m-d H:i:s','width'=>'col-sm-10'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ["label"=>"Sla Id","name"=>"sla_id","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"sla,id"];
			//$this->form[] = ["label"=>"Detail Sla Id","name"=>"detail_sla_id","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"detail_sla,id"];
			//$this->form[] = ["label"=>"Frekuensi Id","name"=>"frekuensi_id","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"frekuensi,id"];
			//$this->form[] = ["label"=>"H1","name"=>"H1","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"H2","name"=>"H2","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"H3","name"=>"H3","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"H4","name"=>"H4","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"H5","name"=>"H5","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"H6","name"=>"H6","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"H7","name"=>"H7","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"M1","name"=>"M1","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"M2","name"=>"M2","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"M3","name"=>"M3","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"M4","name"=>"M4","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"B1","name"=>"B1","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"B2","name"=>"B2","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"B3","name"=>"B3","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"B4","name"=>"B4","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"B5","name"=>"B5","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"B6","name"=>"B6","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"B7","name"=>"B7","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"B8","name"=>"B8","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"B9","name"=>"B9","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"B10","name"=>"B10","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"B11","name"=>"B11","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"B12","name"=>"B12","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Create At","name"=>"create_at","type"=>"datetime","required"=>TRUE,"validation"=>"required|date_format:Y-m-d H:i:s"];
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
	        $this->load_js[] = asset("js/workorder/rutin/jadwal_sla.js");
	        
	        
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
				// $query->join('sla' ,'master_jadwal_sla.sla_id' ,'sla.id' );
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
	    	for ($i=4; $i <= 27 ; $i++) { 
				if($column_index == $i)
				{
					if($column_value == 1)
					{$column_value = '<a href="javascript:void(0)" class="btn btn-sm btn-success"><i class="fa fa-check" aria-hidden="true"></i></a>';
					}
					else
					
					{$column_value = '<a href="javascript:void(0)" class="btn btn-sm btn-danger"><i class="fa fa-times" aria-hidden="true"></i></a>';
					}
				}
			}
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
			$cek = DB::table('master_jadwal_sla')
			->where('sla_id' , $postdata['sla_id'])
			->where('detail_sla_id' , $postdata['detail_sla_id'])
			->Count();

			if($cek != 0)
			{
				$to = CRUDBooster::mainpath();
				$message = "Pekerjaan Ini Sudah Terjadwal !!";
				$type = "warning";
				CRUDBooster::redirect($to,$message,$type);
			}
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
			$data_master_jadwal_sla = DB::table('master_jadwal_sla')->where('id' , $id)->first();
			$data_detail_pekerjaan = DB::table('detail_pekerjaan')
										->where('sla_id' , $data_master_jadwal_sla->sla_id)
										->where('detail_sla_id' , $data_master_jadwal_sla->detail_sla_id)
										->where('status_jadwal' , 1)
										->OrderBy('id' , 'asc')
										->chunk(30 , function($data){
											foreach ($data as $key => $value) {
												//update status jadwal
											DB::table('detail_pekerjaan')->where('id' ,  $value->id)->update(['status_jadwal' => 1]);

											$m_kerja = DB::table('m_pekerjaan')->where('id' , $value->m_pekerjaan_id)->first();

											$this->generate_jadwal_pekerjaan( $value->id ,  $m_kerja->period , $value->detail_sla_id);

											}
											
										});
			
			

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
			
			$cek = DB::table('master_jadwal_sla')->where('id' , $id)->first();
			$detail_pekerjaan = DB::table('detail_pekerjaan')->where('sla_id' , $cek->sla_id)
															->where('detail_sla_id' , $cek->detail_sla_id)
															->get();
			if($detail_pekerjaan){
				$to = CRUDBooster::mainpath();
				$message = "Jadwal ini tidak dapat di hapus karena sedang digunakan !!";
				$type = "warning";
				CRUDBooster::redirect($to,$message,$type);
			}
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
		
		public function getAdd()
		{
			if(!CRUDBooster::isCreate() && $this->global_privilege==FALSE || $this->button_add==FALSE) {    
				CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			  }
			  
			  $data = [];
			  $data['page_title'] = 'Add Data';
			  $data['sla'] = DB::table('sla')->where('tahun' , CRUDBooster::CurrYear())->get(['id' , 'uraian']);
			  $data['frekuensi'] = DB::table('frekuensi')->get(['id' , 'uraian']);
			  
			  //Please use cbView method instead view method from laravel
			  $this->cbView('backend.workorder.rutin.jadwal_sla.add',$data);
		}

		public function getDetailSla($id)
		{
			$data = DB::table('detail_sla')->where('sla_id' , $id)->get(['id' , 'uraian']);
			return $data;
		}

		public function getfrekuensi($id)
		{
			$data = DB::table('frekuensi')->where('id' , $id)->get();
			return $data;
		}

		public function getEdit($id)
		{
			if(!CRUDBooster::isUpdate() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {    
				CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			  }
			  
			  $getdata = DB::table('master_jadwal_sla')->where('id' , $id)->first();

			  $data = [];
			  $data['page_title'] = 'Edit Data';
			  $data['sla'] = DB::table('sla')->get(['id' , 'uraian']);
			  $data['detail_sla'] = DB::table('detail_sla')->where('sla_id' , $getdata->sla_id)->get(['id' , 'uraian']);
			  $data['frekuensi'] = DB::table('frekuensi')->get(['id' , 'uraian']);
			  $data['row'] = DB::table('master_jadwal_sla')->where('id',$id)->first();
			  
			  //Please use cbView method instead view method from laravel
			  $this->cbView('backend.workorder.rutin.jadwal_sla.edit',$data);
		}

		public function generate_jadwal_pekerjaan($detail_pekerjaan_id , $bulan , $detail_sla_id)
		{
			$getJadwal 		= DB::table('master_jadwal_sla')->where('detail_sla_id' , $detail_sla_id)->first();
			
			$tanggal_awal 	= Carbon::create(CRUDBooster::CurrYear() , $bulan , 1 , 0 , 0 ,0);
			$tanggal_akhir 	= Carbon::create(CRUDBooster::CurrYear() , $bulan + 1 , 0 , 0 , 0 ,0);
			$nilai = 0;

			switch ($bulan) {
				case 1:
					$nilai = $getJadwal->B1;
					break;
				case 2:
					$nilai = $getJadwal->B2;
					break;
				case 3:
					$nilai = $getJadwal->B3;
					break;
				case 4:
					$nilai = $getJadwal->B4;
					break;
				case 5:
					$nilai = $getJadwal->B5;
					break;
				case 6:
					$nilai = $getJadwal->B6;
					break;
				case 7:
					$nilai = $getJadwal->B7;
					break;
				case 8:
					$nilai = $getJadwal->B8;
					break;
				case 9:
					$nilai = $getJadwal->B9;
					break;
				case 10:
					$nilai = $getJadwal->B10;
					break;
				case 11:
					$nilai = $getJadwal->B11;
					break;

				default:
					$nilai = $getJadwal->B12;
					break;
			}

			// $tanggal = Carbon::create(CRUDBooster::CurrYear() , 2 , 25 , 0 , 0 ,0);
			// $a = $this->GetWeekNumber($tanggal);
			// return $a;


			if($nilai == 1)
			{
				DB::table('sub_detail_pekerjaan')->Where('detail_pekerjaan_id' , $detail_pekerjaan_id)->delete();
				
				for ($i = 1; $i <= $tanggal_akhir->day ; $i++) { 
					$insert = [];
					$tanggal = Carbon::create(CRUDBooster::CurrYear() , $bulan , $i , 0 , 0 ,0);
					$a = $this->GetWeekNumber($tanggal);
					$b = $tanggal->dayOfWeek;
					if($getJadwal->M1 == 1 && $a == 1 ){
						if($getJadwal->H1 == 1 && $b == 1 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H2 == 1 && $b == 2 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H3 == 1 && $b == 3 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H4 == 1 && $b == 4 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H5 == 1 && $b == 5 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H6 == 1 && $b == 6 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H7 == 1 && $b == 7 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						
					}
					if($getJadwal->M2 == 1 && $a == 2 ){
						if($getJadwal->H1 == 1 && $b == 1 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H2 == 1 && $b == 2 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H3 == 1 && $b == 3 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H4 == 1 && $b == 4 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H5 == 1 && $b == 5 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H6 == 1 && $b == 6 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H7 == 1 && $b == 7 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
					}
					if($getJadwal->M3 == 1 && $a == 3 ){
						if($getJadwal->H1 == 1 && $b == 1 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H2 == 1 && $b == 2 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H3 == 1 && $b == 3 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H4 == 1 && $b == 4 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H5 == 1 && $b == 5 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H6 == 1 && $b == 6 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H7 == 1 && $b == 7 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
					}
					if($getJadwal->M4 == 1 && $a == 4 ){
						if($getJadwal->H1 == 1 && $b == 1 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H2 == 1 && $b == 2 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H3 == 1 && $b == 3 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H4 == 1 && $b == 4 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H5 == 1 && $b == 5 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H6 == 1 && $b == 6 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H7 == 1 && $b == 7 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
					}
					if($getJadwal->M5 == 1 && $a == 5 ){
						if($getJadwal->H1 == 1 && $b == 1 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H2 == 1 && $b == 2 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H3 == 1 && $b == 3 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H4 == 1 && $b == 4 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H5 == 1 && $b == 5 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H6 == 1 && $b == 6 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
						if($getJadwal->H7 == 1 && $b == 7 ){
							$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
							$insert['tanggal'] = $tanggal;
							$insert['foto_sebelum'] = 'uploads/img/no_images.png';
							$insert['foto_sesudah'] = 'uploads/img/no_images.png';
						}
					}					
					DB::table('sub_detail_pekerjaan')->insert($insert);
				}
				
			}
			// return 'OK';
		}

		public function GetWeekNumber($date)
		{
			$this_year = $date->year;
			$this_month = $date->month;
			$this_day = $date->day;
			$this_day2 = $date->format('N');

			$first_of_month = Carbon::create(CRUDBooster::CurrYear() , $this_month , 1 , 0 , 0 ,0);

			$day_of_first = $first_of_month->format('N');
			$day_of_month = $date->format('j');
			$a = floor(($day_of_first + $day_of_month - 1) / 7) + 1;
			return $a;
		}



	    //By the way, you can still create your own method in here... :) 


	}