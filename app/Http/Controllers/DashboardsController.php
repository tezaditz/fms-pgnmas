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
			
			
			$this->simpan_to_rekap('listrik' , '');
			$this->simpan_to_rekap('solar' , '');
			$this->simpan_to_rekap('air' , 'sumur');
			$this->simpan_to_rekap('air' , 'pam');
			$this->simpan_to_rekap('limbah' , 'basah');
			$this->simpan_to_rekap('limbah' , 'kering');

			$warna = ['#e61212' , '#e6b112' , '#9fe612' , '#12e66e'  ];
			// grafik Listrik
				$data = $this->get_data('listrik' , '');
				// return $data;
				$listrik  =  Charts::multi('line', 'highcharts')
								->title('Pemakaian Listrik')
								->labels($data['label'])
								->responsive(true);
				for ($i=0; $i < Count($data['keterangan']) ; $i++) { 
					$listrik->dataset($data['keterangan'][$i], $data['nilai'][$i]);		
				}
			// End grafik Listrik

			// grafik Solar
				$data = $this->get_data('solar' , '');
				// return $data;
				$solar  =  Charts::multi('line', 'highcharts')
								->title('Pemakaian solar')
								->labels($data['label'])
								->responsive(true);
				for ($i=0; $i < Count($data['keterangan']) ; $i++) { 
					$solar->dataset($data['keterangan'][$i], $data['nilai'][$i]);		
				}
			// End grafik Solar

			// grafik Sumur
				$data = $this->get_data('air' , 'sumur');
				// return $data;
				$sumur  =  Charts::multi('line', 'highcharts')
								->title('Pemakaian sumur')
								->labels($data['label'])
								->responsive(true);
				for ($i=0; $i < Count($data['keterangan']) ; $i++) { 
					$sumur->dataset($data['keterangan'][$i], $data['nilai'][$i]);		
				}
			// End grafik Sumur

			// grafik pam
				$data = $this->get_data('air' , 'pam');
				// return $data;
				$pam  =  Charts::multi('line', 'highcharts')
								->title('Pemakaian pam')
								->labels($data['label'])
								->responsive(true);
				for ($i=0; $i < Count($data['keterangan']) ; $i++) { 
					$pam->dataset($data['keterangan'][$i], $data['nilai'][$i]);		
				}
			// End grafik pam

			// grafik kering
				$data = $this->get_data('limbah' , 'kering');
				// return $data;
				$kering  =  Charts::multi('line', 'highcharts')
								->title('Pemakaian kering')
								->labels($data['label'])
								->responsive(true);
				for ($i=0; $i < Count($data['keterangan']) ; $i++) { 
					$kering->dataset($data['keterangan'][$i], $data['nilai'][$i]);		
				}
			// End grafik kering

			// grafik basah
				$data = $this->get_data('limbah' , 'basah');
				// return $data;
				$basah  =  Charts::multi('line', 'highcharts')
								->title('Pemakaian basah')
								->labels($data['label'])
								->responsive(true);
				for ($i=0; $i < Count($data['keterangan']) ; $i++) { 
					$basah->dataset($data['keterangan'][$i], $data['nilai'][$i]);		
				}
			// End grafik basah

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


			// return 'OK';
			$this->cbView('backend.dashboard.index',compact('listrik' , 'solar' , 'sumur' , 'pam' , 'kering' , 'basah', 'open',
			'progress',
			'outstanding',
			'done'));
		}

		public function simpan_to_rekap($utility , $jenis){
			// return $utility;
			$table = '';
			switch ($utility) {
				case 'air':
					$table = 'master_air';	
					break;
				case 'solar':
					$table = 'master_solar';	
					break;
				case 'limbah':
					$table = 'master_limbah';	
					break;
				default:
				$table = 'master_listrik';
					break;
			}
			
			
			//get aset yg dikelola user
				$aset = [];
				$useraset = DB::table('user_aset')->where('user_id' , CRUDBooster::myId())->get();
				foreach ($useraset as $key => $value) {
					$aset[] = $value->aset_id;
				} 
			// end get aset yg dikelola user
			
			$this->resetRekapan($utility , $jenis , $aset);
			// get data utility
			if($jenis != '' ){
				$dataUtility = DB::table($table)
									->where('tahun' , CRUDBooster::CurrYear())
									->where('jenis' , $jenis)
									->whereIn('aset_id' , $aset)
									->get();
			}else{
				$dataUtility = DB::table($table)
									->where('tahun' , CRUDBooster::CurrYear())
									->whereIn('aset_id' , $aset)
									->get();
			}
			// end get data utility

			// post to rekap_pemakaian
				$bulan = ['' , 'jan' , 'feb' , 'mar' , 'apr' , 'may' , 'jun' , 'jul' , 'aug' , 'sep' , 'oct' , 'nov' , 'des'];
				foreach ($dataUtility as $key => $value) {
					//get area_id , wilayah_id & nama aset
						$area_wilayah = DB::table('user_aset')->where('aset_id' , $value->aset_id)->first();
						$areaid 	= $area_wilayah->area_id;
						$wilayahid	= $area_wilayah->wilayah_id;

						$aset = DB::table('aset')->where('id' , $value->aset_id)->first();
						$nama_aset = $aset->nama;
					//end get area_id , wilayah_id & nama aset

					$cek = DB::table('rekap_pemakaian')
								->where('aset_id' , $value->aset_id)
								->where('jenis_pemakaian' , $utility)
								->where('jenis' , $jenis)
								->where('tahun', CRUDBooster::CurrYear())
								->get();

					if(Count($cek) != 0){
						$data =  DB::table('rekap_pemakaian')
									->where('aset_id' , $value->aset_id)
									->where('jenis_pemakaian' , $utility)
									->where('jenis' , $jenis)
									->where('tahun', CRUDBooster::CurrYear())
									->first();

						DB::table('rekap_pemakaian')
						->where('id' ,  $data->id)
						->update([
							$bulan[$value->period] => $value->pemakaian
						]);
					}else{
						// insert to rekap_pemakaian
							$insert = [];
							$insert['aset_id'] 				= $value->aset_id;
							$insert['area_id']				= $areaid;
							$insert['wilayah_id']			= $wilayahid;
							$insert['nama_aset']			= $nama_aset;
							$insert['tahun']				= CRUDBooster::CurrYear();
							$insert['jenis_pemakaian']		= $utility;
							$insert['jenis']				= $jenis;
							$insert[$bulan[$value->period]] = $value->pemakaian;
							DB::table('rekap_pemakaian')->insert($insert);
						// end insert to rekap_pemakaian
					}
				}
			//end post to rekap_pemakaian
				
			$this->simpan_to_rekap_area($utility , $jenis);
			$this->simpan_to_rekap_wilayah($utility , $jenis);
		}

		public function simpan_to_rekap_area($utility , $jenis){
		
			//get aset yg dikelola user
				$aset = [];
				$useraset = DB::table('user_aset')->where('user_id' , CRUDBooster::myId())->get();
				foreach ($useraset as $key => $value) {
					$aset[] = $value->aset_id;
				} 
			// end get aset yg dikelola user

			// get data utility
				$dataUtility = DB::table('rekap_pemakaian')
									->select('area_id', DB::raw('Sum(jan) as Sjan,Sum(feb) as Sfeb,Sum(mar) as Smar,Sum(apr) as Sapr,Sum(may) as Smay,Sum(jun) as Sjun,Sum(jul) as Sjul,Sum(aug) as Saug,Sum(sep) as Ssep,Sum(nov) as Snov,Sum(des) as Sdes
									'))
									->where('tahun' , CRUDBooster::CurrYear())
									->whereIn('aset_id' , $aset)
									->groupby('area_id')
									->get();
				
			// end get data utility

			// post to rekap_pemakaian_area
				
				$bulan = ['' , 'jan' , 'feb' , 'mar' , 'apr' , 'may' , 'jun' , 'jul' , 'aug' , 'sep' , 'nov' , 'des'];
				$field = ['' , 'Sjan','Sfeb','Smar','Sapr','Smay','Sjun','Sjul','Saug','Ssep','Snov','Sdes'];
				foreach ($dataUtility as $key => $value) {
					//get nama area
						$dataArea = DB::table('area')->where('id' , $value->area_id)->first();
						$nama_area 	= $dataArea->uraian;
					//end get nama area

					$cek = DB::table('rekap_pemakaian_area')
								->where('area_id' , $value->area_id)
								->where('jenis_pemakaian' , $utility)
								->where('jenis' , $jenis)
								->where('tahun', CRUDBooster::CurrYear())
								->get();

					if(Count($cek) != 0){
						$data = DB::table('rekap_pemakaian_area')
								->where('area_id' , $value->area_id)
								->where('jenis_pemakaian' , $utility)
								->where('jenis' , $jenis)
								->where('tahun', CRUDBooster::CurrYear())
								->first();

						DB::table('rekap_pemakaian_area')
						->where('id' ,  $data->id)
						->update([
							'jan'=>$value->Sjan,
							'feb'=>$value->Sfeb,
							'mar'=>$value->Smar,
							'apr'=>$value->Sapr,
							'may'=>$value->Smay,
							'jun'=>$value->Sjun,
							'jul'=>$value->Sjul,
							'aug'=>$value->Saug,
							'sep'=>$value->Ssep,
							'nov'=>$value->Snov,
							'des'=>$value->Sdes				
						]);
					}else{
						// insert to rekap_pemakaian
							$insert = [];
							$insert['area_id']				= $value->area_id;
							$insert['nama']					= $nama_area;
							$insert['tahun']				= CRUDBooster::CurrYear();
							$insert['jenis_pemakaian']		= $utility;
							$insert['jenis']				= $jenis;
							$insert['jan']					= $value->Sjan;
							$insert['feb']					= $value->Sfeb;
							$insert['mar']					= $value->Smar;
							$insert['apr']					= $value->Sapr;
							$insert['may']					= $value->Smay;
							$insert['jun']					= $value->Sjun;
							$insert['jul']					= $value->Sjul;
							$insert['aug']					= $value->Saug;
							$insert['sep']					= $value->Ssep;
							$insert['nov']					= $value->Snov;
							$insert['des']					= $value->Sdes;

							DB::table('rekap_pemakaian_area')->insert($insert);
						// end insert to rekap_pemakaian
					}
				}
			//end post to rekap_pemakaian_area
		}

		public function simpan_to_rekap_wilayah($utility , $jenis){
		
			//get aset yg dikelola user
				$aset = [];
				$useraset = DB::table('user_aset')->where('user_id' , CRUDBooster::myId())->get();
				foreach ($useraset as $key => $value) {
					$aset[] = $value->aset_id;
				} 
			// end get aset yg dikelola user

			// get data utility
				$dataUtility = DB::table('rekap_pemakaian')
									->select('wilayah_id', DB::raw('Sum(jan) as Sjan,Sum(feb) as Sfeb,Sum(mar) as Smar,Sum(apr) as Sapr,Sum(may) as Smay,Sum(jun) as Sjun,Sum(jul) as Sjul,Sum(aug) as Saug,Sum(sep) as Ssep,Sum(nov) as Snov,Sum(des) as Sdes
									'))
									->where('tahun' , CRUDBooster::CurrYear())
									->where('jenis_pemakaian' , $utility)
									->where('jenis' , $jenis)
									->whereIn('aset_id' , $aset)
									->groupby('wilayah_id')
									->get();
				
			// end get data utility

			// post to rekap_pemakaian_area
				
				
				foreach ($dataUtility as $key => $value) {
					//get nama area
						$dataWilayah = DB::table('wilayah')->where('id' , $value->wilayah_id)->first();
						$nama_wilayah 	= $dataWilayah->uraian;
					//end get nama area

					$cek = DB::table('rekap_pemakaian_wilayah')
								->where('wilayah_id' , $value->wilayah_id)
								->where('jenis_pemakaian' , $utility)
								->where('jenis' , $jenis)
								->where('tahun', CRUDBooster::CurrYear())
								->get();

					if(Count($cek) != 0){
						$data = DB::table('rekap_pemakaian_wilayah')
								->where('wilayah_id' , $value->wilayah_id)
								->where('jenis_pemakaian' , $utility)
								->where('jenis' , $jenis)
								->where('tahun', CRUDBooster::CurrYear())
								->first();

						DB::table('rekap_pemakaian_wilayah')
						->where('id' ,  $data->id)
						->update([
							'jan'=>$value->Sjan,
							'feb'=>$value->Sfeb,
							'mar'=>$value->Smar,
							'apr'=>$value->Sapr,
							'may'=>$value->Smay,
							'jun'=>$value->Sjun,
							'jul'=>$value->Sjul,
							'aug'=>$value->Saug,
							'sep'=>$value->Ssep,
							'nov'=>$value->Snov,
							'des'=>$value->Sdes				
						]);
					}else{
						// insert to rekap_pemakaian
							$insert = [];
							$insert['wilayah_id']			= $value->wilayah_id;
							$insert['nama']					= $nama_wilayah;
							$insert['tahun']				= CRUDBooster::CurrYear();
							$insert['jenis_pemakaian']		= $utility;
							$insert['jenis']				= $jenis;
							$insert['jan']					= $value->Sjan;
							$insert['feb']					= $value->Sfeb;
							$insert['mar']					= $value->Smar;
							$insert['apr']					= $value->Sapr;
							$insert['may']					= $value->Smay;
							$insert['jun']					= $value->Sjun;
							$insert['jul']					= $value->Sjul;
							$insert['aug']					= $value->Saug;
							$insert['sep']					= $value->Ssep;
							$insert['nov']					= $value->Snov;
							$insert['des']					= $value->Sdes;

							DB::table('rekap_pemakaian_wilayah')->insert($insert);
						// end insert to rekap_pemakaian
					}
				}
			//end post to rekap_pemakaian_area
		}

		public function get_data($utility , $jenis){


			if(CRUDBooster::myPrivilegeName() == "Super Administrator" || CRUDBooster::myPrivilegeName() == "General Manager" || CRUDBooster::myPrivilegeName() == "Manager (HO)" || CRUDBooster::myPrivilegeName() == "Admin" ){

				//get aset yg dikelola user
					$wilayah = [];
					$useraset = DB::table('user_aset')->where('user_id' , CRUDBooster::myId())
					->select('wilayah_id')
					->groupby('wilayah_id')
					->get();

					// return Count($useraset);
					foreach ($useraset as $key => $value) {
						$wilayah[] = $value->wilayah_id;
					} 
				// end get aset yg dikelola user

				$data = DB::table('rekap_pemakaian_wilayah')
						->select('nama' , 'jan' , 'feb' , 'mar' , 'apr' , 'may' , 'jun' , 'jul' , 'aug' , 'sep' , 'oct' , 'nov' , 'des')
						->whereIn('wilayah_id' , $wilayah)
						->where('tahun' , CRUDBooster::CurrYear())
						->where('jenis_pemakaian' , $utility)
						->where('jenis' , $jenis)
						->get();
			}elseif (CRUDBooster::myPrivilegeName() == "Koordinator Wilayah") {
				//get aset yg dikelola user
					$area = [];
					$useraset = DB::table('user_aset')->where('user_id' , CRUDBooster::myId())
					->select('area_id')
					->groupby('area_id')
					->get();

				// return Count($useraset);
				foreach ($useraset as $key => $value) {
					$area[] = $value->area_id;
				} 
				// end get aset yg dikelola user

				$data = DB::table('rekap_pemakaian_area')
					->select('nama' , 'jan' , 'feb' , 'mar' , 'apr' , 'may' , 'jun' , 'jul' , 'aug' , 'sep' , 'oct' , 'nov' , 'des')
					->whereIn('area_id' , $area)
					->where('tahun' , CRUDBooster::CurrYear())
					->where('jenis_pemakaian' , $utility)
					->where('jenis' , $jenis)
					->get();
			}else{

						//get aset yg dikelola user
								$aset = [];
								$useraset = DB::table('user_aset')->where('user_id' , CRUDBooster::myId())
								->select('aset_id')
								->groupby('aset_id')
								->get();
			
							// return Count($useraset);
							foreach ($useraset as $key => $value) {
								$aset[] = $value->aset_id;
							} 
						// end get aset yg dikelola user
				$data = DB::table('rekap_pemakaian')
				->select('nama_aset as nama' , 'jan' , 'feb' , 'mar' , 'apr' , 'may' , 'jun' , 'jul' , 'aug' , 'sep' , 'oct' , 'nov' , 'des')
						->whereIn('aset_id' , $aset)
						->where('tahun' , CRUDBooster::CurrYear())
						->where('jenis_pemakaian' , $utility)
						->where('jenis' , $jenis)
						->get();
			}
			
			// return $data;
			$label = ['Jan' , 'Feb' , 'Mar' , 'Apr' , 'May' , 'Jun' , 'Jul' , 'Aug' , 'Sep' , 'Oct' , 'Nov' , 'Des' ];
			$keterangan = [];
			$nilai = [];
			if(Count($data) != 0){
				foreach ($data as $key => $value) {
					$keterangan[$key] = $value->nama;
	
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
			}else{
				$i = 0;
				array_push($keterangan , 'Tidak ada Data');
				$nilai[$i][] = 0;$nilai[$i][] = 0;$nilai[$i][] = 0;$nilai[$i][] = 0;
				$nilai[$i][] = 0;$nilai[$i][] = 0;$nilai[$i][] = 0;$nilai[$i][] = 0;
				$nilai[$i][] = 0;$nilai[$i][] = 0;$nilai[$i][] = 0;$nilai[$i][] = 0;
			}

			
			$dataGrafik['label'] 		= $label;
			$dataGrafik['keterangan'] 	= $keterangan;
			$dataGrafik['nilai'] 		= $nilai;
			return $dataGrafik;
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

		public function resetRekapan($utility = null , $jenis = null , $aset = null){
			$table = '';
			switch ($utility) {
				case 'air':
					$table = 'master_air';	
					break;
				case 'solar':
					$table = 'master_solar';	
					break;
				case 'limbah':
					$table = 'master_limbah';	
					break;
				default:
				$table = 'master_listrik';
					break;
			}
			// return $table;

			$a = DB::table($table)->where('tahun' , CRUDBooster::CurrYear())
								  ->whereIn('aset_id' , $aset)
									->get();
			// return Count($a);
			if(Count($a) == 0){
				// return 'Kosong';
				DB::table('rekap_pemakaian')->where('jenis_pemakaian' , $utility)
											->where('tahun' , CRUDBooster::CurrYear())
											->whereIn('aset_id'  , $aset)
											->update([
												'jan' => 0, 'feb'=> 0 , 'mar'=>0,'apr'=>0,'may'=>0,'jun'=>0,
												'jul' => 0, 'aug'=> 0 , 'sep'=>0,'oct'=>0,'nov'=>0,'des'=>0
											]);
			}
		}

	}