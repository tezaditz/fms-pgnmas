<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;
	use Carbon\Carbon;

	class AdminMKrjController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,asc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = false;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = false;
			$this->button_delete = false;
			$this->button_detail = false;
			$this->button_show = true;
			$this->button_filter = false;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "m_pekerjaan";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Tahun","name"=>"tahun"];
			$this->col[] = ["label"=>"Period","name"=>"period","join"=>"bulan,nama_singkat"];
			$this->col[] = ["label"=>"Aset","name"=>"aset_id","join"=>"aset,nama"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE

			



			$this->form = [];
			$this->form[] = ['label'=>'Tahun','name'=>'tahun','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-10','readonly'=>'yes','value'=>CRUDBooster::CurrYear()];
			$this->form[] = ['label'=>'Period','name'=>'period','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10','dataquery'=>'Select id as value , nama as label from bulan order by id'];
			$this->form[] = ['label'=>'Aset','name'=>'aset_id','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10','dataquery'=>'Select id as value , nama as label from aset order by id'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Tahun','name'=>'tahun','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Period','name'=>'period','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10','dataquery'=>'Select id as value , nama as label from bulan order by id'];
			//$this->form[] = ['label'=>'Aset','name'=>'aset_id','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10','dataquery'=>'Select id as value , nama as label from aset order by id'];
			# OLD END FORM

			/* 
	        // | --------------------------------------------------------- 
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
			$this->sub_module[] = ['label'=>'Detail','path'=>'detail_pekerjaan','parent_columns'=>'aset_name,period','foreign_key'=>'m_pekerjaan_id','button_color'=>'success','button_icon'=>'fa fa-bars'];


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
			
			if(CRUDBooster::myPrivilegeId() == 4){
			$this->addaction[] = ['label'=>'Reset','url'=>'/pgnmas/mkrj/resetdata/[id]','icon'=>'fa fa-refresh','color'=>'danger','confirmation'=>true];
			}
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
			//Your code here
			$aset = [];
			$useraset  = DB::table('user_aset')->where('user_id' , CRUDBooster::myId())->get();
			foreach ($useraset as $key => $value) {
				$aset[] = $value->aset_id;
			}

			$query->whereIn('aset_id' , $aset)
					->where('tahun' , CRUDBooster::CurrYear());
			
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
			$ketersediaan = DB::table('ketersediaan_sla')
										->where('aset_id' , $postdata['aset_id'])
										->where('tahun' , crudbooster::curryear())
										->get();
			
			if(Count($ketersediaan) == 0){
				$to = '/pgnmas/m_krj';
				$message = 'Tidak tersedia SLA pada aset,Silahkan cek kembali ketersediaan SLA pada aset tersebut';
				$type = 'info';
				CRUDBooster::redirect($to,$message,$type);
			}



			$aset = DB::table('aset')->where('id' , $postdata['aset_id'])->first();

			$postdata['aset_name'] = $aset->nama;

			

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
			$this->getJadwal($id);
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
		
		

		public function getAdd()
		{
			
			if(!CRUDBooster::isCreate() && $this->global_privilege==FALSE || $this->button_add==FALSE) {    
				CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			  }
			
			  $aset = [];
			  $user_aset = DB::table('user_aset')->where('user_id' , CRUDBooster::MyId())->get();
			  
			  foreach ($user_aset as $key => $value) {
				$data_ketersediaan = DB::table('ketersediaan_sla')->where('aset_id' , $value->aset_id)->Count();
				
				if($data_ketersediaan != 0){
					$aset[] = $value->aset_id;	
				}
			  }
			  

			  
			  $data['page_title'] = 'Add Data Master Pekerjaan';
			  $data['bulan']	  = DB::table('bulan')->OrderBy('id' , 'asc')->get();
			  $data['aset'] 		= DB::table('aset')->whereIn('id' , $aset)->get();

			  $this->cbView('backend.workorder.leader.pekerjaan.add',$data);
		}

		public function detail_kerja($id)
		{
			$data = DB::table('m_pekerjaan')->where('id' , $id)->first();
			
			$sla = DB::table('sla_aset')->where('aset_id' , $data->aset_id)
			->chunk(50 , function($data_sla){
				foreach ($data_sla as $key => $value) {
					$detail_sla = DB::table('ketersediaan_sla')->where('sla_id' , $value->sla_id)
										->where('ketersediaan' , 1)
										->get();
					
					$insert = [];
					foreach ($detail_sla as $key2 => $value2) {
						$sla = DB::table('sla')->where('id' , $value->sla_id)->first();
						$detail = DB::table('detail_sla')->where('id' , $value2->detail_sla_id)->first();

						$insert['tahun']			= CRUDBooster::CurrYear();
						$insert['m_pekerjaan_id']	= $id;
						$insert['sla_id']			= $value->sla_id;
						$insert['detail_sla_id']	= $value2->detail_sla_id;
						$insert['sla_uraian']			= $sla->uraian;
						$insert['detail_sla_uraian']	= $detail->uraian;

						DB::table('detail_pekerjaan')->insert($insert);
					}
				}
			});	
		}

	
		public function generatedetailpekerjaan($id){
			$masterKerja = DB::table('m_pekerjaan')->where('id' , $id)->first();

			// return $masterKerja->aset_id;
			$ketersediaanSLA = DB::table('ketersediaan_sla')
				->join('sla' , 'sla.id' , 'ketersediaan_sla.sla_id')
				->join('detail_sla' , 'detail_sla.id' , 'ketersediaan_sla.detail_sla_id')
				->join('rincian_pekerjaan' , 'rincian_pekerjaan.id' , 'ketersediaan_sla.rincian_pekerjaan_id')
				->join('group_sla' , 'group_sla.id' , 'ketersediaan_sla.group_sla_id')
				->where('ketersediaan_sla.aset_id' , $masterKerja->aset_id)
				->where('ketersediaan_sla.tahun' , CRUDBooster::CurrYear())
				->select(
					'ketersediaan_sla.tahun',
					'ketersediaan_sla.sla_id as slaid',
					'ketersediaan_sla.detail_sla_id as detailslaid',
					'ketersediaan_sla.rincian_pekerjaan_id as rincianid',
					'ketersediaan_sla.group_sla_id as groupid',
					'sla.uraian as slauraian',
					'detail_sla.uraian as detailuraian',
					'rincian_pekerjaan.uraian as rincianuraian',
					'group_sla.uraian as groupuraian'
					)
				->get(); 

				// return Count($ketersediaanSLA);
			// return $ketersediaanSLA;
			if(!empty($ketersediaanSLA)){
				
				foreach ($ketersediaanSLA as $key => $value) {
						$insert = [];
						
						$jadwal = DB::table('master_jadwal_sla')->where('sla_id' , $value->slaid)
						->where('detail_sla_id' , $value->detailslaid )
						->get();

						$status_jadwal = 0;
						if(Count($jadwal) != 0){$status_jadwal = 1;}
						$insert['status_jadwal']	= $status_jadwal;

						$insert['tahun']					= CRUDBooster::CurrYear();
						$insert['m_pekerjaan_id']			= $id;
						$insert['sla_id']					= $value->slaid;
						$insert['detail_sla_id']			= $value->detailslaid;
						$insert['group_sla_id']				= $value->groupid;
						$insert['rincian_pekerjaan_id']		= $value->rincianid;
						$insert['sla_uraian']				= $value->slauraian;
						$insert['detail_sla_uraian']		= $value->detailuraian;
						$insert['rincian_pekerjaan_uraian']	= $value->rincianuraian;
						$insert['group_sla_uraian']			= $group->groupuraian;
						DB::table('detail_pekerjaan')->insert($insert);
				}

				return 'true';
			}else{ return 'false';}
			
		}


		public function getJadwal($id){
			$this->generatedetailpekerjaan($id);
			$b = DB::table('m_pekerjaan')->where('id' , $id)->first();
			$a = DB::table('detail_pekerjaan')->where('m_pekerjaan_id' , $id)->get();
			foreach ($a as $key => $value) {
				$this->generate_jadwal_pekerjaan($value->id , $b->period , $value->detail_sla_id);
			}
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

		public function generate_jadwal_pekerjaan($detail_pekerjaan_id , $bulan , $detail_sla_id)
		{
			// return $bulan;
			$getJadwal 		= DB::table('master_jadwal_sla')->where('detail_sla_id' , $detail_sla_id)->get();
			if(!empty($getJadwal)){
				foreach ($getJadwal as $key => $value) {
					$tanggal_awal 	= Carbon::create(CRUDBooster::CurrYear() , $bulan , 1 , 0 , 0 ,0);
					$tanggal_akhir 	= Carbon::create(CRUDBooster::CurrYear() , $bulan + 1 , 0 , 0 , 0 ,0);
					$nilai = 0;
					// return $tanggal_akhir;
					switch ($bulan) {
						case 1:
							$nilai = $value->B1;
							break;
						case 2:
							$nilai = $value->B2;
							break;
						case 3:
							$nilai = $value->B3;
							break;
						case 4:
							$nilai = $value->B4;
							break;
						case 5:
							$nilai = $value->B5;
							break;
						case 6:
							$nilai = $value->B6;
							break;
						case 7:
							$nilai = $value->B7;
							break;
						case 8:
							$nilai = $value->B8;
							break;
						case 9:
							$nilai = $value->B9;
							break;
						case 10:
							$nilai = $value->B10;
							break;
						case 11:
							$nilai = $value->B11;
							break;
		
						default:
							$nilai = $getJadwal->B12;
							break;
					}

					if($nilai == 1){
						
						// delete data sub detail pekerjaan
						DB::table('sub_detail_pekerjaan')->whereMonth('tanggal' , $bulan)
												 ->whereYear('tanggal' , CRUDBooster::CurrYear())
												 ->where('detail_pekerjaan_id' , $detail_pekerjaan_id)->delete();
						// return $tanggal_akhir;
						for ($i = 1; $i <= $tanggal_akhir->day ; $i++) {
							$insert = [];

							$tanggal = Carbon::create(CRUDBooster::CurrYear() , $bulan , $i , 0 , 0 ,0);
							// if($i == 5){
							// 		$a = $this->GetWeekNumber($tanggal);	// menyatakan minggu ke berapa
							// 		$b = $tanggal->dayOfWeek;				// menyatakan hari apa
							// 	return 'Minggu Ke : '. $a . 'Hari ke :'. $b;
							// }
							
														
							$a = $this->GetWeekNumber($tanggal);	// menyatakan minggu ke berapa
							$b = $tanggal->dayOfWeek;				// menyatakan hari apa

							// isi nilai
								if($value->M1 == 1 && $a == 1 ){
									if($value->H1 == 1 && $b == 1 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H2 == 1 && $b == 2 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H3 == 1 && $b == 3 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H4 == 1 && $b == 4 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H5 == 1 && $b == 5 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H6 == 1 && $b == 6 ){
										
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H7 == 1 && $b == 0 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									
								}
								if($value->M2 == 1 && $a == 2 ){
									if($value->H1 == 1 && $b == 1 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H2 == 1 && $b == 2 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H3 == 1 && $b == 3 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H4 == 1 && $b == 4 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H5 == 1 && $b == 5 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H6 == 1 && $b == 6 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H7 == 1 && $b == 0 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
								}
								if($value->M3 == 1 && $a == 3 ){
									if($value->H1 == 1 && $b == 1 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H2 == 1 && $b == 2 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H3 == 1 && $b == 3 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H4 == 1 && $b == 4 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H5 == 1 && $b == 5 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H6 == 1 && $b == 6 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H7 == 1 && $b == 0 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
								}
								if($value->M4 == 1 && $a == 4 ){
									if($value->H1 == 1 && $b == 1 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H2 == 1 && $b == 2 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H3 == 1 && $b == 3 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H4 == 1 && $b == 4 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H5 == 1 && $b == 5 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H6 == 1 && $b == 6 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H7 == 1 && $b == 0 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
								}
								if($value->M5 == 1 && $a == 5 ){
									if($value->H1 == 1 && $b == 1 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H2 == 1 && $b == 2 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H3 == 1 && $b == 3 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H4 == 1 && $b == 4 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H5 == 1 && $b == 5 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H6 == 1 && $b == 6 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
									if($value->H7 == 1 && $b == 0 ){
										$insert['detail_pekerjaan_id'] = $detail_pekerjaan_id;
										$insert['tanggal'] = $tanggal;
										$insert['foto_sebelum'] = 'uploads/img/no_images.png';
										$insert['foto_sesudah'] = 'uploads/img/no_images.png';
									}
								}	
							// end isi nilai
							DB::table('sub_detail_pekerjaan')->insert($insert);
						};
						
					}
				}
			}
			return $getJadwal;
		}

		public function resetTindakLanjut($id){
			// hapus sub detail pekerjaan & detail pekerjaan
			$a = DB::table('detail_pekerjaan')->where('m_pekerjaan_id' , $id)->get();
			foreach ($a as $key => $value) {
				DB::table('sub_detail_pekerjaan')->where('detail_pekerjaan_id' , $value->id)->delete();
			}
			DB::table('detail_pekerjaan')->where('m_pekerjaan_id' , $id)->delete();
			$this->getJadwal($id);

			$to = '/pgnmas/m_krj';
			$message = 'Reset Tindaklanjut Telah Selesai!';
			$type = 'info';
			CRUDBooster::redirect($to,$message,$type);
		}

		



	    //By the way, you can still create your own method in here... :) 


	}