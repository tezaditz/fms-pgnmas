<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminSaController extends \crocodicstudio\crudbooster\controllers\CBController {

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
			$this->table = "sla_aset";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Aset","name"=>"aset_id","join"=>"aset,nama"];
			$this->col[] = ["label"=>"Alamat","name"=>"aset_id","join"=>"aset,alamat"];
			
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'SLA','name'=>'sla_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'sla,id'];
			$this->form[] = ['label'=>'Aset','name'=>'aset_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Aktif','name'=>'aktif','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'SLA','name'=>'sla_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'sla,id'];
			//$this->form[] = ['label'=>'Aset','name'=>'aset_id','type'=>'checkbox','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
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
	        $this->load_js[] = asset("js/workorder/rutin/sla_aset.js");
	        
	        
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
	            $query->join('sla' , 'sla_aset.sla_id' , 'sla.id')->where('sla.tahun' , CRUDBooster::CurrYear());
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
			//First, Add an auth
			if(!CRUDBooster::isView()) CRUDBooster::redirect(CRUDBooster::adminPath(),trans('crudbooster.denied_access'));
   
			$aset =$this->get_aset();
			
			//Create your own query 
			$data = [];
			$data['page_title'] = 'SLA Aset Data';
			
			$data2 = DB::table('sla_aset')
					->join('aset' , 'sla_aset.aset_id' , '=', 'aset.id')
					->join('sla' , 'sla_aset.sla_id' , '=', 'sla.id')
					->where('sla.tahun' ,  CRUDBooster::CurrYear())
					->whereIn('aset.id' , $aset)
					->select( 'aset.id' , 'aset.nama' , 'aset.alamat')
					->groupBy('aset.id' , 'aset.nama' , 'aset.alamat')
					->paginate(10);
			
			$data['result'] = $data2;
			
			//  return $data;
			//Create a view. Please use `cbView` method instead of view method from laravel.
			$this->cbView('backend.workorder.rutin.slaaset.index',$data);
		}



		public function getAdd()
		{
			//Create an Auth
			if(!CRUDBooster::isCreate() && $this->global_privilege==FALSE || $this->button_add==FALSE) {    
				CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			}
			
			$aset =$this->get_aset();

			$data = [];
			$data['page_title'] = 'Add SLA Aset';
			$data['aset'] = DB::table('aset')
							->whereIn('id' , $aset)
							->get(['id' , 'nama']);
			$data['sla'] = DB::table('sla')->where('tahun' , CRUDBooster::CurrYear())->get(['id' , 'uraian']);
			// return $data;
			//Please use cbView method instead view method from laravel
			$this->cbView('backend.workorder.rutin.slaaset.add',$data);
		}

		public function getDelete($id)
		{
			// VALIDASI DATA KETERSEDIAAN
			$data = DB::table('ketersediaan_sla')->where('aset_id' , $id)->get();
			if($data)
			{
				$to = '/pgnmas/sa';
				$message = 'Tidak Dapat DiHapus! Terdapat data Ketersediaan Aset.';
				$type = 'Warning';
				CRUDBooster::redirect($to,$message,$type);
			}




			DB::table('sla_aset')->where('aset_id' , $id)->delete();

			$to = '/pgnmas/sa';
            $message = 'Data SLA Aset Berhasil DiHapus';
            $type = 'info';
            CRUDBooster::redirect($to,$message,$type);
		}

		public function getEdit($id)
		{
			
			if(!CRUDBooster::isUpdate() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {    
				CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			  }
			  $aset =$this->get_aset();

			  $data2 = DB::table('sla_aset')
					->join('aset' , 'sla_aset.aset_id' , '=', 'aset.id')
					->where('aset.id' , $id)
					->select( 'aset.id' , 'aset.nama' , 'aset.alamat')
					->groupBy('aset.id' , 'aset.nama' , 'aset.alamat')
					->first();

			  $data = [];
			  $data['page_title'] = 'Edit Data';
			  
			  $data['sla'] = DB::table('sla')->where('tahun' , CRUDBooster::CurrYear())->get(['id' , 'uraian']);

			  $data['sla_aset'] = DB::table('sla_aset')
								->join('aset' , 'sla_aset.aset_id' , '=', 'aset.id')
								->join('sla' , 'sla_aset.sla_id' , '=', 'sla.id')
								->where('sla.tahun' ,  CRUDBooster::CurrYear())
								->where('sla_aset.aset_id' , $id)								 
								->get(['sla_aset.id' , 'sla_id' , 'aset_id']);
			//   return $data['sla_aset'];
			  $data['aset_name'] = $data2->nama;
			  $data['aset_id'] =  $data2->id;
			  $data['id'] = $id;
			  
			  //Please use cbView method instead view method from laravel
			  $this->cbView('backend.workorder.rutin.slaaset.edit',$data);
		}

		public function get_aset()
		{
			$aset = [];
			$useraset = DB::table('user_aset')->where('user_id' , CRUDBooster::MyId())->get();
			foreach ($useraset as $key => $value) {
				$aset[] = $value->aset_id;
			}
			

			return $aset;
		}
		



	    //By the way, you can still create your own method in here... :) 


	}