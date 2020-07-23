<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;
	use PDF;
	use Illuminate\Support\Facades\App;
	use Carbon\Carbon;

	class AdminMnilaiController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,asc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = false;
			$this->button_delete = false;
			$this->button_detail = false;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "m_penilaian";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Tahun","name"=>"tahun"];
			$this->col[] = ["label"=>"Bulan","name"=>"bulan" , "join" => "bulan,nama"];
			$this->col[] = ["label"=>"Aset","name"=>"aset_id","join"=>"aset,nama"];
			$this->col[] = ["label"=>"Persentase Pelaksanaan","name"=>"persentase_pelaksanaan"];
			$this->col[] = ["label"=>"Pencapaian SLA","name"=>"pencapaian"];
			$this->col[] = ["label"=>"Status","name"=>"status"];
			$this->col[] = ["label"=>"Catatan","name"=>"catatan"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$tahun = CRUDBooster::CurrYear();
			$this->form = [];
			$this->form[] = ['label'=>'Tahun','name'=>'tahun','type'=>'text','validation'=>'required|integer|min:0','width'=>'col-sm-10','readonly'=>true];
			$this->form[] = ['label'=>'Bulan','name'=>'bulan','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10','dataenum'=>'1;2;3;4;5;6;7;8;9;10;11;12'];
			$this->form[] = ['label'=>'Aset','name'=>'aset_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'aset,nama'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Tahun','name'=>'tahun','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Bulan','name'=>'bulan','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Aset','name'=>'aset_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'aset,nama'];
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
			if(CRUDBooster::myPrivilegeId() == 5)
			{
				$this->addaction[] = ['label'=>'','url'=>CRUDBooster::mainpath('detail/[id]'),'icon'=>'fa fa-eye','color'=>'primary','showIf'=>"[status] == 'BARU' or [status] == 'DiTolak'"];
				$this->addaction[] = ['label'=>'','url'=>CRUDBooster::mainpath('print/[id]'),'icon'=>'fa fa-print','color'=>'success','target'=>'_blank' ,'showIf'=>"[status] == 'SALES AREA' or [status] == 'DiSetujui' or [status] == 'LFM' "];
				$this->addaction[] = ['label'=>'History Penilaian ','url'=>CRUDBooster::mainpath('history/[id]'),'icon'=>'fa fa-history','color'=>'success','target'=>'_blank' ,'showIf'=>"[status] == 'SALES AREA' or [status] == 'DiSetujui' or [status] == 'LFM' "];
			}
			if(CRUDBooster::myPrivilegeId() == 7)
			{
				$this->addaction[] = ['label'=>'','url'=>CRUDBooster::mainpath('detail/[id]'),'icon'=>'fa fa-eye','color'=>'primary','showIf'=>"[status] == 'Sales Area / LFM'"];
				
			}

			if(CRUDBooster::myPrivilegeId() == 4)
			{
				$this->addaction[] = ['label'=>'','url'=>CRUDBooster::mainpath('print/[id]'),'icon'=>'fa fa-print','color'=>'success','target'=>'_blank' ,'showIf'=>"[status] == 'DiSetujui' "];
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
			$useraset = DB::table('user_aset')->where('user_id' , CRUDBooster::myId())->get();
			foreach ($useraset as $key => $value) {
				$asetid[] = $value->aset_id;
			}

				$query->where('tahun' , CRUDBooster::CurrYear());
				$query->whereIn('aset_id' , $asetid);
				$query->OrderBy('tahun' , 'asc');
				$query->OrderBy('m_penilaian.aset_id' , 'asc');
				$query->OrderBy('bulan' , 'asc');
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
			if($column_index == 4)
			{
				$column_value = '<p class = "text-right">'  . number_format($column_value , 2 , "," , ".") . ' %</p>';
			}

			if($column_index == 5)
			{
				$column_value = '<p class = "text-right">'  . number_format($column_value , 2 , "," , ".") . ' %</p>';
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
			
			// cek ketersediaan sla
			$ketersediaan = DB::table('ketersediaan_sla')
			->where('tahun' , $postdata['tahun'])
			->where('aset_id' , $postdata['aset_id'])->Count();

			if($ketersediaan < 1)
			{
				$to = '/pgnmas/mnilai';
				$message = 'Ketersediaan SLA pada aset ini tidak ditemukan !!';
				$type = 'info';
				CRUDBooster::redirect($to,$message,$type);
			}

			$master = DB::table('m_penilaian')
			->where('tahun' , $postdata['tahun'])
			->where('bulan' , $postdata['bulan'])
			->where('aset_id' , $postdata['aset_id'])->get();

			if(Count($master) > 0)
			{
				$to = '/pgnmas/mnilai';
				$message = 'Sudah Terdapat Data Master Penilaian untuk Periode ini!!';
				$type = 'info';
				CRUDBooster::redirect($to,$message,$type);
			}

			$postdata['status'] = 'BARU';
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
			// $Data_Detail_SLA = DB::table('detail_sla')->get();
			// $insert = [];
			// foreach ($Data_Detail_SLA as $key => $value) {
			// 	$insert[$key]['m_penilaian_id'] = $id;
			// 	$insert[$key]['sla_id'] = $value->sla_id;
			// 	$insert[$key]['detail_sla_id'] = $value->id;
			// 	$insert[$key]['ketersediaan_fasilitas'] = 0;
			// 	$insert[$key]['dilaksanakan'] = 0;
			// 	$insert[$key]['sesuai'] = 0;
			// 	$insert[$key]['keterangan'] = '';
			// }
			// if($insert)
			// {
			// 	DB::table('detail_penilaian')->insert($insert);
			// }
			// masukin semua yg ada di sub detail sla
			$Data_Detail_SLA = DB::table('sub_detail_sla')->get();
			$insert = [];
			foreach ($Data_Detail_SLA as $key => $value) {

				$detail_sla = DB::table('detail_sla')->where('id' , $value->detail_sla_id)->first();

				$insert[$key]['m_penilaian_id'] 			= $id;
				$insert[$key]['sla_id'] 					= $detail_sla->sla_id;
				$insert[$key]['detail_sla_id'] 				= $value->detail_sla_id;
				$insert[$key]['group_sla_id'] 				= $value->group_sla_id;
				$insert[$key]['rincian_pekerjaan_id'] 		= $value->rincian_pekerjaan_id;
				$insert[$key]['ketersediaan_fasilitas'] 	= 0;
				$insert[$key]['dilaksanakan'] 				= 0;
				$insert[$key]['sesuai'] 					= 0;
				$insert[$key]['keterangan'] 				= '';
			}
			if($insert)
			{
				DB::table('detail_penilaian')->insert($insert);
			}
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
			$detail = DB::table('detail_penilaian')->where('m_penilaian_id' , $id)->delete();
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
		

		public function getDetail($id)
		{
			// return $id;
			 //Create an Auth
			if(!CRUDBooster::isRead() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {    
				CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			}

			$master =  DB::table('m_penilaian')->where('id',$id)->first();
			// Cek sedia SLA
			$cek = DB::table('ketersediaan_sla')->where('aset_id' , $master->aset_id)
			->where('tahun' , CRUDBooster::CurrYear())
			->get();

			if(!$cek){
				$to = '/pgnmas/mnilai';
                $message = 'Maaf ! Ketersediaan SLA pada Aset ini belum tersedia';
                $type = 'info';
                CRUDBooster::redirect($to,$message,$type);
			}



			// return  CRUDBooster::CurrYear();
			
			$aset	=  DB::table('aset')->where('id' , $master->aset_id)->first();
			// return $master;
			$data = [];
			$data['page_title'] = 'Detail Data';
			$data['row'] = $master;
			$data['aset'] = $aset;
			$data['sla'] = DB::table('sla')->where('tahun' , CRUDBooster::CurrYear())->get();
			// return $data['sla'];
			$data['detail'] = DB::table('detail_sla')
										->where('tahun' , CRUDBooster::CurrYear())->get();
			// $data['detail_penilaian'] = DB::table('detail_penilaian')
			// 							->join('detail_sla' , 'detail_sla.id' , 'detail_penilaian.detail_sla_id')
			// 							->join('rincian_pekerjaan' , 'rincian_pekerjaan.id', 'detail_penilaian.rincian_pekerjaan_id')
			// 							->join('group_sla' , 'group_sla.id' , 'detail_penilaian.group_sla_id')
			// 							->where('detail_penilaian.m_penilaian_id' , $id)
			// 							->select('detail_penilaian.id' , 'detail_penilaian.rincian_pekerjaan_id as rincian_pekerjaan_id' ,'rincian_pekerjaan.uraian as uraian' , 'detail_penilaian.group_sla_id as groupid' , 'detail_penilaian.detail_sla_id as detail_sla_id')
			// 							->get();

			$data['detail_penilaian'] = DB::table('ketersediaan_sla')
										->join('sla' , 'sla.id' , 'ketersediaan_sla.sla_id')
										->join('detail_sla' , 'detail_sla.id' , 'ketersediaan_sla.detail_sla_id')
										->join('rincian_pekerjaan' , 'rincian_pekerjaan.id', 'ketersediaan_sla.rincian_pekerjaan_id')
										->where('aset_id' , $master->aset_id)
										->where('ketersediaan_sla.tahun' , CRUDBooster::CurrYear())
										->select('sla.uraian as sla' , 'detail_sla.uraian as detailUraian' , 'rincian_pekerjaan.uraian as rincian_pekerjaan_uraian')
										->get();
			
			
			$data['sedia'] = DB::table('ketersediaan_sla')
							->where('aset_id' , $master->aset_id)
							->where('tahun' , CRUDBooster::CurrYear())
							->get();
			// return $data['sedia'];
			$data['id'] = $id;		
			// return $data;
			//Please use cbView method instead view method from laravel
			$this->cbView('backend.workorder.penilaian_sla.detail',$data);
		}

		public function generate_detail_penilaian($id)
		{
			DB::table('detail_sla')->chunk(50 , function($data) use ($id){
				$insert = [];
				foreach ($data as $key => $value) {
					$insert['m_penilaian_id'] 	= $id;
					$insert['sla_id'] 			= $value->sla_id;
					$insert['detail_sla_id']	= $value->id;

					$ketersediaan = DB::table('ketersediaan_sla')
									->where('sla_id' , $value->sla_id)
									->where('detail_sla_id' , $value->id)
									->first();
					
					$insert['ketersediaan_fasilitas'] = $ketersediaan->ketersediaan;

					DB::table('detail_penilaian')->insert($insert);
				}
			});
		}

		public function tindaklanjut_leader()
		{
			if(!CRUDBooster::myId()){
				return redirect(CRUDBooster::adminpath());
			}

			if(!CRUDBooster::isView()) CRUDBooster::redirect(CRUDBooster::adminPath(),trans('crudbooster.denied_access'));
			
			$data = [];
			$data['page_title'] = 'List Pekerjaan';
			$data['master']     = DB::table('m_penilaian')->get();
			
			 
			//Create a view. Please use `cbView` method instead of view method from laravel.
			$this->cbView('backend.workorder.leader.index',$data);



		}

		public function getAdd()
		{
			if(!CRUDBooster::isCreate() && $this->global_privilege==FALSE || $this->button_add==FALSE) {    
				CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			  }
			  $aset = [];
			$user_aset = DB::table('user_aset')->where('user_id' , CRUDBooster::MyId())->get();
			foreach ($user_aset as $key => $value) {
				$aset[] = $value->aset_id;
			}

			  $data = [];
			  
			 
			  $data['page_title'] = 'Add Data';
			  $data['aset'] 		= DB::table('aset')->whereIn('id' , $aset)->get();
			  $data['bulan']	 = DB::table('bulan')->get();
				
			  
			  //Please use cbView method instead view method from laravel
			  $this->cbView('backend.workorder.master_penilaian.add',$data);
		}

		public function print($id)
		{
			set_time_limit(300);
			ini_set('memory_limit', '700M');
			// return $id;
			$data['master'] = DB::table('m_penilaian')->where('id' , $id)->first();
			
			// $data['detail'] = DB::table('detail_penilaian')->where('m_penilaian_id', $id)
			// ->join('detail_sla' , 'detail_penilaian.detail_sla_id' , '=' , 'detail_sla.id')
			// ->select('detail_penilaian.*' , 'detail_sla.uraian')
			// ->get();
			$data['sla'] = DB::table('sla')->where('tahun' , CRUDBooster::CurrYear())->get();
			$data['detail']  = DB::table('detail_sla')->where('tahun' , CRUDBooster::CurrYear())->get();
			// $data['detail_penilaian'] = DB::table('detail_penilaian')
			// 							->join('detail_sla' , 'detail_sla.id' , 'detail_penilaian.detail_sla_id')
			// 							->join('rincian_pekerjaan' , 'rincian_pekerjaan.id', 'detail_penilaian.rincian_pekerjaan_id')
			// 							->join('group_sla' , 'group_sla.id' , 'detail_penilaian.group_sla_id')
			// 							->where('detail_penilaian.m_penilaian_id' , $id)
			// 							->select('detail_penilaian.id' , 'detail_penilaian.rincian_pekerjaan_id as rincian_pekerjaan_id' ,'rincian_pekerjaan.uraian as uraian' , 'detail_penilaian.group_sla_id as groupid' , 'detail_penilaian.detail_sla_id as detail_sla_id')
			// 							->get();
			$data['detail_penilaian'] = DB::table('detail_penilaian')
										->join('sla' , 'sla.id' , 'detail_penilaian.sla_id')
										->join('detail_sla' , 'detail_sla.id' , 'detail_penilaian.detail_sla_id')
										->join('rincian_pekerjaan' , 'rincian_pekerjaan.id' , 'detail_penilaian.rincian_pekerjaan_id')
										->join('group_sla' , 'group_sla.id' , 'detail_penilaian.group_sla_id')
										->where('m_penilaian_id' , $id)
										->select('sla.uraian as uLvl1' , 'detail_sla.uraian as uLvl2' 
										, 'rincian_pekerjaan_id' , 'rincian_pekerjaan.uraian as uLvl3' 
										, 'group_sla.uraian as groupNm' , 'detail_penilaian.group_sla_id as GroupId' ,
										'ketersediaan_fasilitas' , 'dilaksanakan' , 'sesuai')
										->get();



			$data['period'] = DB::table('bulan')->where('id' , $data['master']->bulan)->first();
			// return $data['period']->nama;
			$data['aset']	= DB::table('aset')->where('id' , $data['master']->aset_id)->first();
			$data['area']	= DB::table('area')->where('id' , $data['aset']->area_id)->first();
			// $data['sla']    = DB::table('detail_penilaian')->where('m_penilaian_id' , $id)
			// 											   ->join('sla' , 'detail_penilaian.sla_id' , '=' , 'sla.id')
			// 											   ->select('detail_penilaian.sla_id' , 'sla.uraian')
			// 											   ->groupby('detail_penilaian.sla_id' , 'sla.uraian')
			// 											   ->get();
			
			$dataSla = DB::table('user_aset')->where('aset_id' , $data['aset']->id)->get(['user_id']);
			foreach ($dataSla as $key => $value) {
				$a[] = $value->user_id;
			}
			$data['SA'] = DB::table('cms_users')->whereIn('id' , $a)
			->where('id_cms_privileges' , 7)		
			->first();
			$data['korea'] = DB::table('cms_users')->whereIn('id' , $a)
			->where('id_cms_privileges' , 5)		
			->first();
			$c = substr($data['SA']->name , 0 , 2);
			$data['jabatanSA'] = 'Sales Area Head';
			if($c == 'LF'){
				$data['jabatanSA'] = 'Logistic & Facility Management';
			}
			$history = DB::table('history_penilaian_sla')
				->where('id_m_penilaian' , $id)
				->where('id_cms_users' , $data['korea']->id)
				->first();
			
			$data['tanggal_kirim'] = $history->tanggal_approval;

			
			$pdf = App::make('dompdf.wrapper');
			
			
			$paperorientation = 'landscape';
			$papersize ='legal';
			
			$view = view('backend.report.penilaian_sla', $data)->render();
			$pdf = PDF::loadHTML($view)->setPaper('a4', 'potrait');
			$filename = "Penilaian SLA";
			return $pdf->stream( $filename .'.pdf');

		}

		// public function print($id){
		// 	$pdf = PDF::loadHTML('<h1>asdokaposk</h1>')->setPaper('a4', 'landscape');
		// 	return $pdf->download('invoice.pdf');
		// }

		public function loginfromemail($us = '' , $pw ='',  $id = '' , $year = '')
		{
			// cek expired
			// $cek = DB::table('history_penilaian_sla')->where('id_m_penilaian' , $id)->orderby('id' , 'asc')->first();
			// $expired_date 	=  Carbon::parse($cek->login_expired);
			// $now 			= Carbon::now();
			
			// // return $now ." < ". $expired_date;
			// if($expired_date < $now){
			// 	$to = '/pgnmas/login';
			// 	$message = 'Login Expired';
			// 	$type = 'info';
			// 	CRUDBooster::redirect($to,$message,$type);
			// }


			// return $year;
			$cek = DB::table('m_penilaian')->where('id' , $id)->first();
			
			// return $cek->status;
			if($cek->status == 'BARU'){
				Session::flush();
				return redirect('/pgnmas/login');
			}

			if($us != '' && $pw != ''){
				$email 		= $us;
        		$password 	= $pw;
			}
			$users = DB::table(config('crudbooster.USER_TABLE'))->where("name", $email)->first();
			
			if (\Hash::check($password, $users->password)) {
				$priv = DB::table("cms_privileges")->where("id", $users->id_cms_privileges)->first();
				
				if($priv->name == 'Sales Area' && $cek->status == 'DiSetujui'){
					// return 'A';
					Session::flush();
					return redirect('/pgnmas/login');
				}
	
				$roles = DB::table('cms_privileges_roles')->where('id_cms_privileges', $users->id_cms_privileges)->join('cms_moduls', 'cms_moduls.id', '=', 'id_cms_moduls')->select('cms_moduls.name', 'cms_moduls.path', 'is_visible', 'is_create', 'is_read', 'is_edit', 'is_delete')->get();
	
				$photo = ($users->photo) ? asset($users->photo) : asset('vendor/crudbooster/avatar.jpg');
				Session::put('admin_id', $users->id);
				Session::put('admin_is_superadmin', $priv->is_superadmin);
				// Session::put('admin_name', $users->name);
				Session::put('admin_name', $users->username);
				Session::put('admin_photo', $photo);
				Session::put('admin_privileges_roles', $roles);
				Session::put("admin_privileges", $users->id_cms_privileges);
				Session::put('admin_privileges_name', $priv->name);
				Session::put('admin_lock', 0);
				Session::put('theme_color', $priv->theme_color);
				Session::put("appname", CRUDBooster::getSetting('appname'));
				Session::put('current_year' , $year );
	
				CRUDBooster::insertLog(trans("crudbooster.log_login", ['email' => $users->email, 'ip' => Request::server('REMOTE_ADDR')]));
	
				$cb_hook_session = new \App\Http\Controllers\CBHook;
				$cb_hook_session->afterLogin();
				// return $url;
				return redirect('pgnmas/mnilai/detail/' . $id);
				
			} else {
				return redirect()->route('getLogin')->with('message', trans('crudbooster.alert_password_wrong'));
			}
		}

		public function historyPenilaian( $id ){

			if(!CRUDBooster::myId()){
				return redirect('/pgnmas/login');
			}



			$data = [];
			$data['history'] = DB::table('history_penilaian_sla')
								->select('cms_users.username' , 'cms_users.name' , 'history_penilaian_sla.*')
								->join('cms_users' , 'history_penilaian_sla.id_cms_users' , 'cms_users.id')
								->where('id_m_penilaian' , $id)
								->get();
			$this->cbView('backend.workorder.penilaian_sla.history',$data);
		}

		public function detailhistoryPenilaian( $id ){

			if(!CRUDBooster::myId()){
				return redirect('/pgnmas/login');
			}



			$data = [];
			$data['history'] = DB::table('history_penilaian_sla')
								->select('cms_users.username' , 'cms_users.name' , 'history_penilaian_sla.*')
								->join('cms_users' , 'history_penilaian_sla.id_cms_users' , 'cms_users.id')
								->where('id_m_penilaian' , $id)
								->get();
			$this->cbView('backend.workorder.penilaian_sla.history',$data);
		}



	    //By the way, you can still create your own method in here... :) 


	}