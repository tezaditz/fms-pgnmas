<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;
	use Illuminate\Support\Facades\App;
	use PDF;
	use Carbon\Carbon;

	class AdminDokComplainController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = false;
			$this->button_edit = false;
			$this->button_delete = false;
			$this->button_detail = false;
			$this->button_show = false;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "dokumentasi_pekerjaan";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Jenis Transaksi","name"=>"jenis_transaksi"];
			$this->col[] = ["label"=>"Nomor WorkOrder","name"=>"id_t" , "join"=>"complain,nomor"];
			$this->col[] = ["label"=>"Tanggal Masuk","name"=>"tanggal"];
			$this->col[] = ["label"=>"Foto Sebelum","name"=>"foto_sebelum","image"=>true];
			$this->col[] = ["label"=>"Foto Sesudah","name"=>"foto_sesudah","image"=>true];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Jenis Transaksi','name'=>'jenis_transaksi','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'T','name'=>'id_t','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'t,id'];
			$this->form[] = ['label'=>'Sla Id','name'=>'sla_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'sla,id'];
			$this->form[] = ['label'=>'Detail Sla Id','name'=>'detail_sla_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'detail_sla,id'];
			$this->form[] = ['label'=>'Tanggal','name'=>'tanggal','type'=>'date','validation'=>'required|date','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Foto Sebelum','name'=>'foto_sebelum','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Foto Sesudah','name'=>'foto_sesudah','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ["label"=>"Jenis Transaksi","name"=>"jenis_transaksi","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"T","name"=>"id_t","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"t,id"];
			//$this->form[] = ["label"=>"Sla Id","name"=>"sla_id","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"sla,id"];
			//$this->form[] = ["label"=>"Detail Sla Id","name"=>"detail_sla_id","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"detail_sla,id"];
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
			$this->addaction[] = ['label'=>'','url'=>CRUDBooster::mainpath('print/[id]'),'icon'=>'fa fa-print','color'=>'success','target'=>'_blank'];

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
				$dataComplain = DB::table('complain')->whereIn('status_id' , [5,7])->get();
				$data = [];
				foreach ($dataComplain as $key => $value) {
					$data[] = $value->id;

					$cek = DB::table('dokumentasi_pekerjaan')->where('id_t' , $value->id)
														 ->where('jenis_transaksi' , 'Complain')
														 ->count();
					if($cek == 0)
					{
						$insert = [];
						$insert['jenis_transaksi'] = 'Complain';
						$insert['id_t'] = $value->id;
						$insert['tanggal'] = $value->tanggal_masuk;
						$insert['sla_id'] = 0;
						$insert['detail_sla_id'] = 0;

						$DataTindaklanjut = DB::table('tindaklanjut_complain')->where('complain_id' , $value->id)->first();
						$fotoBefore = $DataTindaklanjut->foto_sebelum;
						$pathBefore = $DataTindaklanjut->path_foto_sebelum;
						$fotoAfter = $DataTindaklanjut->foto_sesudah;
						$pathAfter = $DataTindaklanjut->path_foto_sesudah;

						if($pathBefore != 'Tidak Ada'){
							$insert['foto_sebelum'] = $fotoBefore;
						}

						$insert['foto_sesudah'] = $pathAfter . $fotoAfter;

						DB::table('dokumentasi_pekerjaan')->insert($insert);

					}



				}
                $query->where('jenis_transaksi' , 'Complain');
	            $query->whereIn('id_t' , $data);
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
		
		public function print($id){
			
			
			$dokComplain = DB::table('dokumentasi_pekerjaan')->where('id' , $id)->first();
			$data['complain'] = DB::table('complain')->where('id' , $dokComplain->id_t)->first();
			$data['tindaklanjut_complain'] = DB::table('tindaklanjut_complain')->where('complain_id' , $dokComplain->id_t)->first();
			
			$data['aset'] = DB::table('aset')->where('id' , $data['complain']->aset_id )->first();
			$data['area'] = DB::table('area')->where('id' , $data['aset']->area_id )->first();
			$tanggal_masuk 		= Carbon::parse($data['complain']->tanggal_masuk);
			$tanggal_selesai  	= Carbon::parse($data['tindaklanjut_complain']->tanggal_selesai);
			// return $tanggal_masuk;
			$data['tgl'] = $tanggal_masuk->day;
			$data['bln'] = $tanggal_masuk->month;
			$data['thn'] = $tanggal_masuk->year;
			$data['jam'] = $tanggal_masuk->hour;
			$data['menit'] = $tanggal_masuk->minute;
			$data['DokComplain'] = $dokComplain;
			$data['jenis_complain'] = DB::table('jenis_complain')->where('id' , '!=' , 999)->get();
			$data['tanggal_selesai'] = date('d - M - Y' , strtotime($tanggal_selesai));
			
			
			// $this->cbView('backend.dokumentasi.print', $data);
			
			$pdf = PDF::setOptions(['isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true])->loadView('backend.dokumentasi.print', $data);
			return $pdf->stream('test.pdf');
		}



	    //By the way, you can still create your own method in here... :) 


	}