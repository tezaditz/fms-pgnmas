<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminFrekuensiController extends \crocodicstudio\crudbooster\controllers\CBController {

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
			$this->table = "frekuensi";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Uraian","name"=>"uraian"];
			$this->col[] = ["label"=>"Kode","name"=>"kode"];
			$this->col[] = ["label"=>"Warna","name"=>"warna"];
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
			$this->form[] = ['label'=>'Uraian','name'=>'uraian','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Kode','name'=>'kode','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Warna','name'=>'warna','type'=>'color','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Senin','name'=>'H1','type'=>'radio','validation'=>'required','width'=>'col-sm-9','dataenum'=>'1;2;0'];
			$this->form[] = ['label'=>'Selasa','name'=>'H2','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Rabu','name'=>'H3','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Kamis','name'=>'H4','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Jumat','name'=>'H5','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Sabtu','name'=>'H6','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Minggu','name'=>'H7','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Minggu Ke 1','name'=>'M1','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Minggu Ke 2','name'=>'M2','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Minggu Ke 3','name'=>'M3','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Minggu Ke 4','name'=>'M4','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Minggu Ke 5','name'=>'M5','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Jan','name'=>'B1','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Feb','name'=>'B2','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Mar','name'=>'B3','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Apr','name'=>'B4','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Mei','name'=>'B5','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Jun','name'=>'B6','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Jul','name'=>'B7','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Aug','name'=>'B8','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Sep','name'=>'B9','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Okt','name'=>'B10','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Nov','name'=>'B11','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Des','name'=>'B12','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Uraian','name'=>'uraian','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Kode','name'=>'kode','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Warna','name'=>'warna','type'=>'color','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Senin','name'=>'H1','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9','dataenum'=>'0;1'];
			//$this->form[] = ['label'=>'Selasa','name'=>'H2','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'Rabu','name'=>'H3','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'Kamis','name'=>'H4','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'Jumat','name'=>'H5','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'Sabtu','name'=>'H6','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'Minggu','name'=>'H7','type'=>'checkbox','validation'=>'required','width'=>'col-sm-9'];
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
	        //Your code here
	            $query->where('id' , '!=' , 999);
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
			for ($i=4; $i <= 26 ; $i++) { 
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
			

			DB::table('parameter')->where('id' , '!=' , 1)->delete();
			$insert['id'] = 98;
			$insert['nama'] = 'CEK';
			$insert['nilai']	= $postdata['H1'];
			DB::table('parameter')->insert($insert);
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
			  
			  $data = [];
			  $data['page_title'] = 'Add Data';
			  
			  //Please use cbView method instead view method from laravel
			  $this->cbView('backend.referensi.frekuensi.add',$data);
		}

		public function getEdit($id)
		{
			if(!CRUDBooster::isUpdate() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {    
				CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			  }
			  
			  $data = [];
			  $data['page_title'] = 'Edit Data';
			  $data['row'] = DB::table('frekuensi')->where('id',$id)->first();
			  
			  //Please use cbView method instead view method from laravel
			  $this->cbView('backend.referensi.frekuensi.edit',$data);
		}



	    //By the way, you can still create your own method in here... :) 


	}