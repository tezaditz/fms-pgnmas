<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;
	use Charts;
	use Cache;
	use Carbon\Carbon;
	// use ConsoleTVs\Charts\Charts;

	class DashboardsController extends \crocodicstudio\crudbooster\controllers\CBController {

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
		
		public function getIndex()
		{
			if(!CRUDBooster::MyId()){

				return redirect('/pgnmas/login');
			}


			// ini_set('max_execution_time', 300);
			//delete data rekap pemakaian
			
			DB::table('rekap_pemakaian')->delete();

			//delete data rekap pemakaian area
			DB::table('rekap_pemakaian_area')->delete();

			//delete data rekap pemakaian wilayah
			DB::table('rekap_pemakaian_area')->delete();

			// LISTRIK
				
				
				$data = $this->data_pemakaian('listrik','');
				
				$listrik  =  Charts::multi('line', 'highcharts')
							->title('Pemakaian Listrik')
							->labels($data['label'])
							->responsive(true);

				for ($i=0; $i < Count($data['keterangan']) ; $i++) { 
					$listrik->dataset($data['keterangan'][$i], $data['nilai'][$i]);		
				}
			// END LISTRIK
		
			// SOLAR
				$data = $this->data_pemakaian('solar','');	
				// return $data;
				$solar  =  Charts::multi('line', 'highcharts')
							->title('Pemakaian Solar')
							->labels($data['label'])
							->responsive(true);

				for ($i=0; $i < Count($data['keterangan']) ; $i++) { 
					$solar->dataset($data['keterangan'][$i], $data['nilai'][$i]);		
				}
			//END SOLAR

			// AIR SUMUR
				$data = $this->data_pemakaian('air','sumur');
				
				$air_sumur  =  Charts::multi('line', 'highcharts')
							->title('Pemakaian Air Sumur')
							->labels($data['label'])
							->responsive(true);

				for ($i=0; $i < Count($data['keterangan']) ; $i++) { 
					$air_sumur->dataset($data['keterangan'][$i], $data['nilai'][$i]);		
				}
			// END AIR SUMUR

			// AIR PAM
				
				$data = $this->data_pemakaian('air','Pam');	
				$air_pam  =  Charts::multi('line', 'highcharts')
							->title('Pemakaian Air Pam')
							->labels($data['label'])
							->responsive(true);

				for ($i=0; $i < Count($data['keterangan']) ; $i++) { 
					$air_pam->dataset($data['keterangan'][$i], $data['nilai'][$i]);		
				}
			// END AIR PAM

			// LIMBAH BASAH
				
				$data = $this->data_pemakaian('limbah','Basah');
				$limbah_basah  =  Charts::multi('line', 'highcharts')
							->title('Pemakaian Limbah Basah')
							->labels($data['label'])
							->responsive(true);

				for ($i=0; $i < Count($data['keterangan']) ; $i++) { 
					$limbah_basah->dataset($data['keterangan'][$i], $data['nilai'][$i]);		
				}
			// END LIMBAH BASAH
				
			// LIMBAH KERING
				
				$data = $this->data_pemakaian('limbah','Kering');	
				$limbah_kering  =  Charts::multi('line', 'highcharts')
							->title('Pemakaian Limbah kering')
							->labels($data['label'])
							->responsive(true);

				for ($i=0; $i < Count($data['keterangan']) ; $i++) { 
					$limbah_kering->dataset($data['keterangan'][$i], $data['nilai'][$i]);		
				}
			// END LIMBAH KERING

			// OPEN COMPLAIN
				$complain = DB::table('complain')
								->whereIn('status_id' , [1,2])
								->Count();

				if($complain != 0){
					$open = $complain;
				}else{
					$open = 0;
				}
				
			// END OPEN COMPLAIN

			// ON PROGRESS
				$complain = DB::table('complain')
								->WhereIn('status_id' , [3,4 , 5])
								->count();
				if($complain != 0){
					$progress = $complain;
				}else{
					$progress = 0;
				}
				
			// END ON PROGRESS

			// OUTSTANDING
				$complain = DB::table('complain')
							->where('status_id' , 6)
							->count();
				if($complain != 0){
				$outstanding = $complain;
				}else{
				$outstanding = 0;
				}
			// END OUTSTANDING

			// DONE
				$complain = DB::table('complain')
						->where('status_id' , 7)
						->Count();
				if($complain != 0){
				$done = $complain;
				}else{
				$done = 0;
				}
			// END DONE

		
			$this->cbView('backend.dashboard.index',compact(
				'listrik',
				'air_sumur',
				'air_pam',
				'solar',
				'limbah_basah',
				'limbah_kering',
				'open',
				'progress',
				'outstanding',
				'done'));
		}

		public function data_pemakaian($utility , $jenis)
		{
			
			$a = $this->post_to_rekap($utility , $jenis);
			
			$bulan = ['jan' , 'feb', 'mar' , 'apr' , 'may' , 'jun' , 'jul' , 'aug' , 'sep' , 'oct' , 'nov' , 'des'];
			if(CRUDBooster::myPrivilegeName() == 'Super Administrator' || CRUDBooster::myPrivilegeName() == 'General Manager' || CRUDBooster::myPrivilegeName() == 'Manager (HO)' ){
				
				$c = $this->post_to_rekap_will($utility , $jenis);
				
				$data = DB::table('rekap_pemakaian_wilayah')
				->where('tahun' , CRUDBooster::CurrYear())
				->where('jenis_pemakaian' , $utility)
				->where('jenis' , $jenis)
				->get();
				
				foreach ($data as $key => $value) {
					$keterangan[] = $value->nama;

					$nilai[$key][] = $value->jan;
					$nilai[$key][] = $value->feb;
					$nilai[$key][] = $value->mar;
					$nilai[$key][] = $value->apr;
					$nilai[$key][] = $value->may;
					$nilai[$key][] = $value->jun;
					$nilai[$key][] = $value->jul;
					$nilai[$key][] = $value->aug;
					$nilai[$key][] = $value->sep;
					$nilai[$key][] = $value->oct;
					$nilai[$key][] = $value->nov;
					$nilai[$key][] = $value->des;
				}
				
			}elseif(CRUDBooster::myPrivilegeName() == 'Koordinator Wilayah'){
				$b = $this->post_to_rekap_area();
				$area = [];
				$data_area = DB::table('user_aset')->where('user_id' , CRUDBooster::MyId())->get();
				
				foreach ($data_area as $key => $value) {
					$area[] = $value->area_id;
				}
				
				$data = DB::table('rekap_pemakaian_area')
				->where('tahun' , CRUDBooster::CurrYear())
				->whereIn('area_id' , $area)
				->where('jenis_pemakaian' , $utility)
				->where('jenis' , $jenis)
				->get();
				
				// return $data;

				foreach ($data as $key => $value) {
					$keterangan[] = $value->nama;

					$nilai[$key][] = $value->jan;
					$nilai[$key][] = $value->feb;
					$nilai[$key][] = $value->mar;
					$nilai[$key][] = $value->apr;
					$nilai[$key][] = $value->may;
					$nilai[$key][] = $value->jun;
					$nilai[$key][] = $value->jul;
					$nilai[$key][] = $value->aug;
					$nilai[$key][] = $value->sep;
					$nilai[$key][] = $value->oct;
					$nilai[$key][] = $value->nov;
					$nilai[$key][] = $value->des;
				}	
			}elseif(CRUDBooster::myPrivilegeName() == 'Koordinator Area' || CRUDBooster::myPrivilegeName() == 'Leader' || CRUDBooster::myPrivilegeName() == 'Sales Area' ){
				
				$data = DB::table('rekap_pemakaian')
				->where('tahun' , CRUDBooster::CurrYear())
				->where('jenis_pemakaian' , $utility)
				->where('jenis' , $jenis)
				->get();
				
				// return $data;

				foreach ($data as $key => $value) {
					$keterangan[] = $value->nama_aset;

					$nilai[$key][] = $value->jan;
					$nilai[$key][] = $value->feb;
					$nilai[$key][] = $value->mar;
					$nilai[$key][] = $value->apr;
					$nilai[$key][] = $value->may;
					$nilai[$key][] = $value->jun;
					$nilai[$key][] = $value->jul;
					$nilai[$key][] = $value->aug;
					$nilai[$key][] = $value->sep;
					$nilai[$key][] = $value->oct;
					$nilai[$key][] = $value->nov;
					$nilai[$key][] = $value->des;
				}			
				
			}

			$DT['label']        = $bulan;
            $DT['nilai']        = $nilai;
            $DT['keterangan']   = $keterangan;

            return $DT;
			
		}

		public function post_to_rekap($utility , $jenis)
		{
			
			$table = '';
			switch ($utility) {
				case 'listrik':
					$table = 'master_listrik';
					break;
				case 'air':
					$table = 'master_air';
					break;
				case 'limbah':
					$table = 'master_limbah';
					break;
				default:
					$table = 'master_solar';
					break;
			}
			$bulan = ['', 'jan' , 'feb', 'mar' , 'apr' , 'may' , 'jun' , 'jul' , 'aug' , 'sep' , 'oct' , 'nov' , 'des'];
			$cek = $this->cek_rekap($utility , $jenis);
			
			if($cek == 'true'){ // jika data rekap sudah ada
				
				//Cek data dalam tabel transaksi
				$data = DB::table($table)->where('tahun' , CRUDBooster::CurrYear())->get();
				if($data){
					DB::table($table)
					->where('tahun' , CRUDBooster::CurrYear())
					->OrderBy('id' , 'Asc')
					->chunk(50 , function($data) use ($utility , $jenis , $bulan){
						foreach ($data as $key => $value) {
							
							DB::table('rekap_pemakaian')->where('aset_id' , $value->aset_id)
														->where('tahun' , CRUDBooster::CurrYear())
														->where('jenis_pemakaian' , $utility)
														->where('jenis' , $jenis)
														->update([
															$value->period = $value->pemakaian
														]);
						}
					});
				}
			}else{
				$aset = [];
				if(CRUDBooster::myPrivilegeName() == 'Super Administrator' || CRUDBooster::myPrivilegeName() == 'General Manager' || CRUDBooster::myPrivilegeName() == 'Manager (HO)' || CRUDBooster::myPrivilegeName() == 'Admin' ){
					$user_aset = DB::table('aset')->get();
					foreach ($user_aset as $key => $value) {
						$aset[] =  $value->id;
					}
				}else{
					
					$user_aset = DB::table('user_aset')->where('user_id' , CRUDBooster::myId())->get();
					foreach ($user_aset as $key => $value) {
						$aset[] =  $value->aset_id;
					}
				}
				
				DB::table('aset')
				->where('id' , '!=' , 1)
				->whereIn('id' , $aset)
				->OrderBy('id' , 'Asc')
				->chunk(30 , function($data)  use ($utility , $jenis){
					foreach ($data as $key => $value) {
						
						$data_area = DB::table('area')->where('id' , $value->area_id)->first();

						$insert = [];
						$insert['aset_id'] 			= $value->id; 
						$insert['area_id'] 			= $value->area_id;
						$insert['wilayah_id'] 		= $data_area->wilayah_id;
						$insert['nama_aset'] 		= $value->nama;
						$insert['tahun'] 			= CRUDBooster::CurrYear();
						$insert['jenis_pemakaian'] 	= $utility;
						$insert['jenis'] 			= $jenis;

						DB::table('rekap_pemakaian')->insert($insert);

					}
				});
				
				DB::table($table)
					->where('tahun' , CRUDBooster::CurrYear())
					->OrderBy('id' , 'Asc')
					->chunk(50 , function($data) use ($utility , $jenis , $bulan){
						foreach ($data as $key => $value) {

							$field = $bulan[$value->period];
							if($jenis != ''){
								DB::table('rekap_pemakaian')->where('aset_id' , $value->aset_id)
														->where('tahun' , CRUDBooster::CurrYear())
														->where('jenis_pemakaian' , $utility)
														->where('jenis' , $value->jenis)
														->update([
															$field => $value->pemakaian
														]);
							}else{
								DB::table('rekap_pemakaian')->where('aset_id' , $value->aset_id)
														->where('tahun' , CRUDBooster::CurrYear())
														->where('jenis_pemakaian' , $utility)
														->update([
															$field => $value->pemakaian
														]);
							}
							
						}
					});

				
			}
		}

		public function post_to_rekap_will($utility , $jenis)
		{
			$data_pemakaian = DB::table('rekap_pemakaian')
			->select('wilayah_id' , 'jenis_pemakaian' , 'jenis' ,DB::raw('SUM(jan) as jan , SUM(feb) as feb , SUM(mar) as mar , SUM(apr) as apr , SUM(may) as mei , SUM(jun) as jun , SUM(jul) as jul , SUM(aug) as aug , SUM(sep) as sep , SUM(oct) as oct , SUM(nov) as nov , SUM(des) as des'))
			->where('tahun' , CRUDBooster::CurrYear())
			->where('jenis_pemakaian' , $utility)
			->where('jenis' , $jenis)
			->OrderBy('wilayah_id' , 'Asc')
			->groupby('tahun' , 'jenis_pemakaian' , 'jenis' , 'wilayah_id')
			->chunk(50 , function($data) {
				foreach ($data as $key => $value) {
					$data_will = DB::table('rekap_pemakaian_wilayah')->where('tahun' , CRUDBooster::CurrYear())
																	->where('wilayah_id' , $value->wilayah_id)
																	->where('jenis_pemakaian' , $value->jenis_pemakaian)
																	->where('jenis' , $value->jenis)
																	->get();
					if(Count($data_will) != 0){
						DB::table('rekap_pemakaian_wilayah')->where('tahun' , CRUDBooster::CurrYear())
																	->where('wilayah_id' , $value->wilayah_id)
																	->where('jenis_pemakaian' , $value->jenis_pemakaian)
																	->where('jenis' , $value->jenis)
																	->update([
																		'jan'=>$value->jan,
																		'feb'=>$value->feb,
																		'mar'=>$value->mar,
																		'apr'=>$value->apr,
																		'may'=>$value->mei,
																		'jun'=>$value->jun,
																		'jul'=>$value->jul,
																		'aug'=>$value->aug,
																		'sep'=>$value->sep,
																		'oct'=>$value->oct,
																		'nov'=>$value->nov,
																		'des'=>$value->des
																	]);
					}else{
						$dataWill = DB::table('wilayah')->where('id' , $value->wilayah_id)->first();
							
						$insert = [];
						$insert['wilayah_id'] 		= $value->wilayah_id;
						$insert['nama'] 			= $dataWill->uraian;
						$insert['jenis_pemakaian'] 	=  $value->jenis_pemakaian;
						$insert['jenis'] 			=  $value->jenis;
						$insert['tahun'] 			= CRUDBooster::CurrYear();
	
						DB::table('rekap_pemakaian_wilayah')->insert($insert);
					}
				}
			});	
		}

		public function post_to_rekap_area()
		{
			DB::table('rekap_pemakaian_area')->delete();
			$useraset = DB::table('user_aset')
						->where('user_id' , CRUDBooster::MyId())->first();
			if($useraset)
			{
				$asetid     = $useraset->aset_id;
				$areaid     = $useraset->area_id;
				$wilayahid  = $useraset->wilayah_id;
				$regionalid = $useraset->regional_id;
			}

			$data_pemakaian = DB::table('rekap_pemakaian')
			->select(DB::raw('Sum(jan) as jan , SUM(feb) as feb
			, SUM(mar) as mar , SUM(apr) as apr , SUM(may) as mei, SUM(jun) as jun , SUM(jul) as jul , SUM(aug) as aug
			, SUM(sep) as sep , SUM(oct) as oct , SUM(nov) as nov , SUM(des) as des'), 'area_id' , 'tahun' , 'jenis_pemakaian' , 'jenis')
			->GroupBy('area_id' , 'tahun', 'jenis_pemakaian' , 'jenis')
			->OrderBy('area_id' , 'asc')
			->chunk(50 , function($data){
				foreach ($data as $key => $value) {				

					$data_area = DB::table('area')->where('id' ,$value->area_id)->first();

					$insert['area_id'] 			= 	$value->area_id;
					$insert['nama']				= 	$data_area->uraian;
					$insert['jenis_pemakaian'] 	=	$value->jenis_pemakaian;
					$insert['jenis']			=	$value->jenis;
					$insert['tahun']			= 	CRUDBooster::CurrYear();
					$insert['jan']				= 	$value->jan;
					$insert['feb']				= 	$value->feb;
					$insert['mar']				= 	$value->mar;
					$insert['apr']				= 	$value->apr;
					$insert['may']				= 	$value->mei;
					$insert['jun']				= 	$value->jun;
					$insert['jul']				= 	$value->jul;
					$insert['aug']				= 	$value->aug;
					$insert['sep']				= 	$value->sep;
					$insert['oct']				= 	$value->oct;
					$insert['nov']				= 	$value->nov;
					$insert['des']				= 	$value->des;

					DB::table('rekap_pemakaian_area')->insert($insert);
				}
			});

			$insert = [];
			
		
		}

		public function update_status_complain_out_standing()
		{
			date_default_timezone_set("Asia/Bangkok");
			$data_complain = DB::table('complain')->get(); // data terjadwal
			$tanggal_sekarang = Carbon::now();
			foreach ($data_complain as $key => $value) {
				if($value->status_id != 3)
				{
					$tanggal_masuk = $value->tanggal_masuk;
					
					if($tanggal_sekarang > $tanggal_masuk){
						DB::table('complain')->where('id' , $value->id)
						->where('status_id' , '!=' , 6)					
						->update(['status_id' => 5]);
					}
				}else{
					$data_tindaklanjut = DB::table('tindaklanjut_complain')->where('complain_id' , $value->id)->first();
					$tanggal_mulai = $data_tindaklanjut->tanggal_mulai;
					$interval = $data_tindaklanjut->waktu_pelaksanaan;
					$satuan = $data_tindaklanjut->satuan_waktu;


					switch ($satuan) {
						case 'menit':
							$interval = $interval;
							break;
						case 'jam':
							$interval = $interval * 60;
							break;
						default:
							$interval = $interval * (24 * 60);
							break;
					}




				}
				


			}
		}

		public function dashboard_halomas()
		{
			$parameter = DB::table('parameter')->where('nama' ,  'Link Halomas')->first();
			// return $parameter->nilai;
			$this->cbView('backend.dashboard.halomas',compact('parameter'));
		}

		public function cek_rekap($utility , $jenis)
		{
			if($utility == 'listrik' || $utility == 'solar' ){
				$data = DB::table('rekap_pemakaian')
				->where('tahun' , CRUDBooster::CurrYear())	
				->where('jenis_pemakaian' , $utility)		
				->get();
			}else{
				$data = DB::table('rekap_pemakaian')
				->where('tahun' , CRUDBooster::CurrYear())	
				->where('jenis_pemakaian' , $utility)		
				->where('jenis' , $jenis)
				->get();
			}
			
			if(Count($data) != 0){
				return 'true';
			}else{
				return 'false';
			}
		}
	}