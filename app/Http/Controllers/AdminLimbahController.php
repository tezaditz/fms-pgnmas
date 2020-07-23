<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminLimbahController extends \crocodicstudio\crudbooster\controllers\CBController {

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
			$this->table = "master_limbah";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Tahun","name"=>"tahun"];
			$this->col[] = ["label"=>"Period","name"=>"period","join"=>"bulan,nama"];
			$this->col[] = ["label"=>"Aset","name"=>"aset_id","join"=>"aset,nama"];
			$this->col[] = ["label"=>"Pemakaian","name"=>"pemakaian"];
			$this->col[] = ["label"=>"Rupiah","name"=>"rupiah"];
			$this->col[] = ["label"=>"Jenis","name"=>"jenis"];
			$this->col[] = ["label"=>"Foto Before","name"=>"foto_before","image"=>true];
			$this->col[] = ["label"=>"Foto After","name"=>"foto_after","image"=>true];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Period','name'=>'period','type'=>'select','validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataquery'=>'select id as value , nama as label from bulan order by id'];
			$this->form[] = ['label'=>'Aset','name'=>'aset_id','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10','dataquery'=>'select id as value , nama as label from aset order by id'];
			$this->form[] = ['label'=>'Pemakaian','name'=>'pemakaian','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Rupiah','name'=>'rupiah','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Jenis','name'=>'jenis','type'=>'select','validation'=>'required','width'=>'col-sm-10','dataenum'=>'Basah;Kering'];
			$this->form[] = ['label'=>'Foto Before','name'=>'foto_before','type'=>'upload','validation'=>'required','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Foto After','name'=>'foto_after','type'=>'upload','validation'=>'required','width'=>'col-sm-10'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Period','name'=>'period','type'=>'select','validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataquery'=>'select id as value , nama as label from bulan order by id'];
			//$this->form[] = ['label'=>'Aset','name'=>'aset_id','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10' ,'dataquery'=>'select id as value , nama as label from aset order by id' ];
			//$this->form[] = ['label'=>'Pemakaian','name'=>'pemakaian','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Rupiah','name'=>'rupiah','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Foto Before','name'=>'foto_before','type'=>'upload','validation'=>'required','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Foto After','name'=>'foto_after','type'=>'upload','validation'=>'required','width'=>'col-sm-10'];
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
			$this->load_js[] = asset("js/utilitas/limbah/add.js");
	        
	        
	        
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
	        // $useraset = DB::table('user_aset')->where('user_id' , CRUDBooster::myId())->first();
			// if($useraset->aset_id != 0)
			// {
			// 	$aset = DB::table('aset')->where('id', $useraset->aset_id)->get(['id']);
				
			// }
			// else
			// {
			// 	$aset = DB::table('aset')->where('area_id', $useraset->area_id)->get(['id']);
			// }

			// foreach ($aset as $key => $value) {
			// 	$asetid[] = $value->id;
			// }

			// 	$query->where('tahun' , CRUDBooster::CurrYear());
			// 	$query->whereIn('aset_id' , $asetid);
			// 	$query->OrderBy('tahun' , 'asc');
			// 	$query->OrderBy('master_limbah.aset_id' , 'asc');
			// 	$query->OrderBy('period' , 'asc');
			$aset = [];
			$user_aset = DB::table('user_aset')->where('user_id' , CRUDBooster::MyId())->get();
			foreach ($user_aset as $key => $value) {
				$aset[] = $value->aset_id;
			}	

				$query->where('tahun' , CRUDBooster::CurrYear());
				$query->whereIn('aset_id' , $aset);
				$query->OrderBy('tahun' , 'asc');
				$query->OrderBy('master_limbah.aset_id' , 'asc');
				$query->OrderBy('period' , 'asc');     
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
	        $cek = DB::table($this->table)->where('aset_id' , $postdata['aset_id'])
											  ->where('period' ,$postdata['period'])
											  ->where('jenis' ,$postdata['jenis'])
											  ->where('tahun' ,CRUDBooster::CurrYear())
											  ->count();
			
			if($cek != 0)
			{
				$to = CRUDBooster::mainpath();
				$message = "Aset ini sudah pernah dilaporkan pada period ini !!";
				$type = "warning";
				CRUDBooster::redirect($to,$message,$type);
			}
			$postdata['tahun'] = CRUDBooster::CurrYear();

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
	        $this->post_to_rekap('limbah' , '');
			$this->post_to_rekap_will();

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
			
			//Create an Auth
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
			$data['bulan'] 		= DB::table('bulan')->get();
			
			
			//Please use cbView method instead view method from laravel
			$this->cbView('backend.utilitas.limbah.add',$data);
		}


		public function post_to_rekap($utility , $jenis)
		{
			$table = "";
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

			$data_master = DB::table($table)
			->where('tahun' , CRUDBooster::CurrYear())
			->orderBy('id' , 'asc')
			->chunk(50 , function($data) use ($utility){
								
				foreach ($data as $key => $value) {
					$cek = DB::table('rekap_pemakaian')->where('jenis_pemakaian' , $utility)
								->where('aset_id' , $value->aset_id)
								->where('jenis' , $value->jenis)
								->where('tahun' , CRUDBooster::CurrYear())
								->count();
					
					if($cek == 0)
					{
						$data_aset = DB::table('aset')->where('id' , $value->aset_id)->first();
                        $data_area = DB::table('area')->where('id' , $data_aset->area_id)->first();

                        $insert['aset_id']          =   $value->aset_id;
                        $insert['wilayah_id']       =   $data_area->wilayah_id;
                        $insert['nama_aset']        =   $data_aset->nama;
                        $insert['tahun']            =   CRUDBooster::CurrYear();
                        $insert['jenis_pemakaian']  =   $utility;
                        $insert['jenis']            =   $utility;
                        $insert['jan']              =   0;
                        $insert['feb']              =   0;
                        $insert['mar']              =   0;
                        $insert['apr']              =   0;
                        $insert['may']              =   0;
                        $insert['jun']              =   0;
                        $insert['jul']              =   0;
                        $insert['aug']              =   0;
                        $insert['sep']              =   0;
                        $insert['oct']              =   0;
                        $insert['nov']              =   0;
                        $insert['des']              =   0;

                        DB::table('rekap_pemakaian')->insert($insert);
					}
					
						$bulan = ["" , "jan" ,  "feb" , "mar" , "apr" , "may" , "jun" , "jul",  "aug",  "sep",  "oct",  "nov",  "des" ];
						if($utility == 'limbah')
						{
							DB::table('rekap_pemakaian')->where('jenis_pemakaian' , $utility)
														->where('tahun' , CRUDBooster::CurrYear())
														->where('aset_id' , $value->aset_id)
														->update([$bulan[$value->period] => $value->pemakaian]);
						}
						else
						{
							DB::table('rekap_pemakaian')->where('jenis_pemakaian' , $utility)
														->where('tahun' , CRUDBooster::CurrYear())
														->where('aset_id' , $value->aset_id)
														->where('jenis' , $value->jenis)
														->update([$bulan[$value->period] => $value->pemakaian]);
						}

					

				}
				
				
			});
		}

		public function post_to_rekap_will()
		{

			DB::table('rekap_pemakaian_wilayah')->delete();

			DB::table('rekap_pemakaian')
						->select(DB::raw('Sum(jan) as jan , SUM(feb) as feb
						, SUM(mar) as mar , SUM(apr) as apr , SUM(may) as mei, SUM(jun) as jun , SUM(jul) as jul , SUM(aug) as aug
						, SUM(sep) as sep , SUM(oct) as oct , SUM(nov) as nov , SUM(des) as des'), 'wilayah_id' , 'tahun' , 'jenis_pemakaian' , 'jenis')
						->GroupBy('wilayah_id' , 'tahun', 'jenis_pemakaian' , 'jenis')
						->OrderBy('wilayah_id' , 'asc')
						->chunk(50 , function($data){
							$insert = [];
							foreach ($data as $key => $value) {

								$cek = DB::table('rekap_pemakaian_wilayah')
								->where('tahun' , CRUDBooster::CurrYear())
								->where('wilayah_id' , $value->wilayah_id)
								->where('jenis_pemakaian' , $value->jenis_pemakaian)
								->where('jenis' , $value->jenis)
								->count();

								if($cek == 0)
								{
									$data_will = DB::table('wilayah')->where('id' , $value->wilayah_id)->first();

									$insert['wilayah_id'] 		= 	$value->wilayah_id;
									$insert['nama']				= 	$data_will->uraian;
									$insert['jenis_pemakaian'] 	=	$value->jenis_pemakaian;
									$insert['jenis']			=	$value->jenis;
									$insert['tahun']			= 	CRUDBooster::CurrYear();
									$insert['jan']				= 	0;
									$insert['feb']				= 	0;
									$insert['mar']				= 	0;
									$insert['apr']				= 	0;
									$insert['may']				= 	0;
									$insert['jun']				= 	0;
									$insert['jul']				= 	0;
									$insert['aug']				= 	0;
									$insert['sep']				= 	0;
									$insert['oct']				= 	0;
									$insert['nov']				= 	0;
									$insert['des']				= 	0;

									DB::table('rekap_pemakaian_wilayah')->insert($insert);
								}

								DB::table('rekap_pemakaian_wilayah')
								->where('tahun' , CRUDBooster::CurrYear())
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
							}
						});
		}





	    //By the way, you can still create your own method in here... :) 


	}