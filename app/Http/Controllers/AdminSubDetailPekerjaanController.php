<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;
	use Carbon\Carbon;
	use Illuminate\Support\Facades\Route;

	class AdminSubDetailPekerjaanController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,asc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = false;
			$this->button_edit = true;
			$this->button_delete = false;
			$this->button_detail = false;
			$this->button_show = true;
			$this->button_filter = false;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "sub_detail_pekerjaan";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			// $this->col[] = ["label"=>"Detail Pekerjaan Id","name"=>"detail_pekerjaan_id","join"=>"detail_pekerjaan,keterangan"];
			$this->col[] = ["label"=>"Tanggal","name"=>"tanggal"];
			$this->col[] = ["label"=>"Foto Sebelum","name"=>"foto_sebelum","image"=>true];
			$this->col[] = ["label"=>"Foto Sesudah","name"=>"foto_sesudah","image"=>true];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Detail Pekerjaan Id','name'=>'detail_pekerjaan_id','type'=>'hidden','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'detail_pekerjaan,id'];
			$this->form[] = ['label'=>'Tanggal','name'=>'tanggal','type'=>'text','validation'=>'required','width'=>'col-sm-10','readonly'=>'true'];
			$this->form[] = ['label'=>'Foto Sebelum','name'=>'foto_sebelum','type'=>'upload','validation'=>'min:1','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Foto Sesudah','name'=>'foto_sesudah','type'=>'upload','validation'=>'min:1','width'=>'col-sm-10'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ["label"=>"Detail Pekerjaan Id","name"=>"detail_pekerjaan_id","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"detail_pekerjaan,id"];
			//$this->form[] = ["label"=>"Tanggal","name"=>"tanggal","type"=>"date","required"=>TRUE,"validation"=>"required|date"];
			//$this->form[] = ["label"=>"Foto Sebelum","name"=>"foto_sebelum","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Foto Sesudah","name"=>"foto_sesudah","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
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

			$a = DB::table('detail_pekerjaan')->where('id' , $_GET['parent_id'])->first();
			$b = DB::table('m_pekerjaan')->where('id' , $a->m_pekerjaan_id)->first();


			$this->index_button[] = ['label'=>'Refresh Data','url'=>'/pgnmas/pekerjaan/generate_jadwal/'.$a->id.'/'.$b->period.'/'.$a->detail_sla_id.'',"icon"=>"fa fa-refresh",'color'=>'success'];
			// $this->index_button[] = ['label'=>'Refresh Data','url'=>url()->current(),"icon"=>"fa fa-print"];


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

			$data = DB::table('sub_detail_pekerjaan')->whereNull('foto_sebelum')->get();
			foreach ($data as $key => $value) {
				DB::table('sub_detail_pekerjaan')->where('id' , $value->id)
												->update(['foto_Sebelum'=> 'uploads/img/no_images.png']);
			}

			$data = DB::table('sub_detail_pekerjaan')->whereNull('foto_sesudah')->get();
			foreach ($data as $key => $value) {
				DB::table('sub_detail_pekerjaan')->where('id' , $value->id)
												->update(['foto_sesudah'=> 'uploads/img/no_images.png']);
			}

	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
			
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
			if($postdata['foto_sebelum' == '' ]){
				$postdata['foto_sebelum'] = 'uploads/img/no_images.png';
			}

			if($postdata['foto_sesudah' == '' ]){
				$postdata['foto_sesudah'] = 'uploads/img/no_images.png';
			}

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
			DB::table('dokumentasi_pekerjaan')->where('id_t' , $id)
												->where('jenis_transaksi' , 'Rutin')
												->delete();

			$data 		= DB::table('sub_detail_pekerjaan')->where('id' , $id)->first();
			$dataDetail = DB::table('detail_pekerjaan')->where('id' , $data->detail_pekerjaan_id)->first();

			$insert = [];
			$insert['jenis_transaksi'] 	= 'Rutin';
			$insert['id_t']				= $id;
			$insert['tanggal'] 			= $data->tanggal;
			$insert['sla_id'] 			= $dataDetail->sla_id;
			$insert['detail_sla_id'] 	= $dataDetail->detail_sla_id;
			$insert['foto_sesudah'] 	= $data->foto_sesudah;
			$insert['foto_sebelum'] 	= $data->foto_sebelum;

			DB::table('dokumentasi_pekerjaan')->insert($insert);
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
		
		public function getEdit($id)
    	{

			DB::table('sub_detail_pekerjaan')->where('id' , $id)->update([
				'foto_sebelum' => null ,
				'foto_sesudah' => null 
			]);

        	$this->cbLoader();
			$row = DB::table($this->table)->where($this->primary_key, $id)->first();

			if (! CRUDBooster::isRead() && $this->global_privilege == false || $this->button_edit == false) {
				CRUDBooster::insertLog(trans("crudbooster.log_try_edit", [
					'name' => $row->{$this->title_field},
					'module' => CRUDBooster::getCurrentModule()->name,
				]));
				CRUDBooster::redirect(CRUDBooster::adminPath(), trans('crudbooster.denied_access'));
			}

			$page_menu = Route::getCurrentRoute()->getActionName();
			$page_title = trans("crudbooster.edit_data_page_title", ['module' => CRUDBooster::getCurrentModule()->name, 'name' => $row->{$this->title_field}]);
			$command = 'edit';
			Session::put('current_row_id', $id);

			return view('crudbooster::default.form', compact('id', 'row', 'page_menu', 'page_title', 'command'));
    	}



	    //By the way, you can still create your own method in here... :) 


	}