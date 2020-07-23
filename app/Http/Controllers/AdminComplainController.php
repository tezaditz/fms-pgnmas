<?php namespace App\Http\Controllers;

	use Session;
	use Illuminate\Http\Request;
	use DB;
	use CRUDBooster;
	use App\Image_uploaded;
	use Carbon\Carbon;
	use Image;
	use File;
	use Illuminate\Foundation\Validation\ValidatesRequests;
	

	class AdminComplainController extends \crocodicstudio\crudbooster\controllers\CBController {

		public $path;
    	public $dimensions;

		public function __construct()
		{
			//DEFINISIKAN PATH
			$this->path = 'uploads\complain';
			$this->path2 = 'uploads\complain';
			//DEFINISIKAN DIMENSI
			$this->dimensions = ['245', '300', '500'];

			


		}


	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "nama_pemohon";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = false;
			$this->button_action_style = "button_icon";
			$this->button_add = false;
			$this->button_edit = false;
			$this->button_delete = false;
			$this->button_detail = false;
			$this->button_show = true;
			$this->button_filter = false;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "complain";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = array("label"=>"Complain ID HaloMas","name"=>"complain_halomas_id","callback"=>function($row) {
				return "COM" . $row->complain_halomas_id;
				});
			$this->col[] = array("label"=>"Nomor","name"=>"nomor" );
			$this->col[] = array("label"=>"Tanggal Masuk","name"=>"tanggal_masuk",'callback_php'=>'date("Y-m-d",strtotime($row->tanggal_masuk))' );
			$this->col[] = array("label"=>"Nama Pemohon","name"=>"nama_pemohon" );
			$this->col[] = array("label"=>"Unit Pelapor","name"=>"unit_pelapor" );
			$this->col[] = array("label"=>"Jenis Complain","name"=>"jenis_complain_id","join"=>"jenis_complain,uraian");
			$this->col[] = array("label"=>"Uraian","name"=>"uraian" );
			$this->col[] = array("label"=>"Aset","name"=>"aset_id","join"=>"aset,nama");
			$this->col[] = array("label"=>"Lokasi","name"=>"lokasi" );
			$this->col[] = array("label"=>"Status","name"=>"status_id","join"=>"status,keterangan");

			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			// $this->form[] = ['label'=>'Nomor','name'=>'nomor','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Nama Pemohon','name'=>'nama_pemohon','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Unit Pelapor','name'=>'unit_pelapor','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Jenis Complain','name'=>'jenis_complain_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'jenis_complain,uraian'];
			$this->form[] = ['label'=>'Aset','name'=>'aset_id','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10','dataquery'=>'select id as value , nama as label from aset where id != 1 order by id'];
			$this->form[] = ['label'=>'Lokasi','name'=>'lokasi','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10' , 'readonly' => true];
			$this->form[] = ['label'=>'Keterangan','name'=>'keterangan','type'=>'textarea','validation'=>'required|string|min:5|max:5000','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Tn','name'=>'tanggal_mulai','type'=>'date','validation'=>'string|min:5|max:5000','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Tn','name'=>'tanggal_selesai','type'=>'date','validation'=>'string|min:5|max:5000','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Tn','name'=>'foto_sebelum','type'=>'image','validation'=>'string|min:5|max:5000','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Tn','name'=>'foto_sesudah','type'=>'image','validation'=>'string|min:5|max:5000','width'=>'col-sm-10'];

			
			// $this->form[] = ['label'=>'Status','name'=>'status_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'status,keterangan'];
			// $this->form[] = ['label'=>'Tanggal Masuk','name'=>'tanggal_masuk','type'=>'datetime','validation'=>'required|date_format:Y-m-d H:i:s','width'=>'col-sm-10'];
			
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Nomor','name'=>'nomor','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Nama Pemohon','name'=>'nama_pemohon','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Unit Pelapor','name'=>'unit_pelapor','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Jenis Complain Id','name'=>'jenis_complain_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'jenis_complain,uraian'];
			//$this->form[] = ['label'=>'Uraian','name'=>'uraian','type'=>'textarea','validation'=>'required|string|min:5|max:5000','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Aset Id','name'=>'aset_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'aset,nama'];
			//$this->form[] = ['label'=>'Lokasi','name'=>'lokasi','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Status Id','name'=>'status_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'status,keterangan'];
			//$this->form[] = ['label'=>'Tanggal Masuk','name'=>'tanggal_masuk','type'=>'datetime','validation'=>'required|date_format:Y-m-d H:i:s','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Tanggal Selesai','name'=>'tanggal_selesai','type'=>'datetime','validation'=>'required|date_format:Y-m-d H:i:s','width'=>'col-sm-10'];
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
			// $this->sub_module[] = ['label'=>'Detail','path'=>'tindaklanjut_complain','parent_columns'=>'nomor,uraian','foreign_key'=>'complain_id','button_color'=>'success','button_icon'=>'fa fa-pencil'];

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
			if(CRUDBooster::myPrivilegeName() == 'Koordinator Wilayah'){
				$this->addaction[] = ['label'=>'' ,'url'=>CRUDBooster::mainpath('koorwil/[id]'),'icon'=>'fa fa-pencil','color'=>'success','showIf'=>"[status_id] == '1'"];
			}elseif(CRUDBooster::myPrivilegeName() == 'Koordinator Area'){
				$this->addaction[] = ['label'=>'' ,'url'=>CRUDBooster::mainpath('korea/[id]'),'icon'=>'fa fa-pencil','color'=>'success','showIf'=>"[status_id] == '2'"];
				$this->addaction[] = ['label'=>'' ,'url'=>CRUDBooster::mainpath('leader/[id]'),'icon'=>'fa fa-pencil','color'=>'success','showIf'=>"[status_id] == '3'"];
			}elseif(CRUDBooster::myPrivilegeName() == 'Leader'){
				$this->addaction[] = ['label'=>'' ,'url'=>CRUDBooster::mainpath('leader/[id]'),'icon'=>'fa fa-pencil','color'=>'success','showIf'=>"[status_id] == '3'"];
			}
			$this->addaction[] = ['label'=>'' ,'url'=>CRUDBooster::mainpath('detail/[id]'),'icon'=>'fa fa-eye','color'=>'info','showIf'=>"[status_id] == '5'"];
			
			

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
			$this->load_js[] = asset("js/workorder/complain/complain.js");
	        
	        
	        
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
			
			$useraset = DB::table('user_aset')->where('user_id' , CRUDBooster::myId())->get();
			if($useraset)
			{
				foreach ($useraset as $key => $value) {
					$aset[] = $value->aset_id;
				}
				

			}

			if(CRUDBooster::myPrivilegeName() == 'Koordinator Wilayah'){
				
				$query->wherein('status_id' , [1 ,2 , 5 , 7])
				      ->wherein('aset_id' , $aset);
			}elseif(CRUDBooster::myPrivilegeName() == 'Koordinator Area'){
				$query->wherein('status_id' , [2 , 3 , 5 , 7])
						->wherein('aset_id' , $aset);
			}elseif(CRUDBooster::myPrivilegeName() == 'Leader'){
				$query->wherein('status_id' , [3 , 5 , 7])
				->wherein('aset_id' , $aset);
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
			$nomor = 1;
			$cek = DB::table('nomor_tiket')->where('keterangan' , 'Work Order')
											->where('tahun' , CRUDBooster::CurrYear())
											->count();
			if($cek == 0)
			{
				$insert = [];
				$insert['keterangan'] 	='Work Order';
				$insert['kode']			="WO-";
				$insert['nilai']		= 0;
				$insert['tahun']		= CRUDBooster::CurrYear();

				DB::table('nomor_tiket')->insert($insert);
			}else
			{
				$data = DB::table('nomor_tiket')->where('keterangan' , 'Work Order')
											->where('tahun' , CRUDBooster::CurrYear())
											->first();
				$nomor = $data->nilai;
			}


			switch (strlen($nomor)) {
				case 1:
					$nomor = '000' . $nomor;
					break;
				case 2:
					$nomor = '00' . $nomor;
					break;
				case 3:
					$nomor = '0' . $nomor;
					break;
				default:
					$nomor = $nomor;
					break;
			}

			$postdata['nomor'] = "WO-" . $nomor;
			$postdata['status_id'] = 1;
			$postdata['tanggal_masuk'] = Carbon::now();
			$postdata['tanggal_selesai'] = '2000-01-01';

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
		
		public function get_lokasi_aset($id)
		{
			$aset = DB::table('aset')->where('id' , $id)->first();

			return $aset->alamat;
		}

		public function getdatakoorwill($id)
		{
			if(!CRUDBooster::MyId()){
				return redirect(CRUDBooster::adminPath('login'));
			}
			 //Create an Auth
			if(!CRUDBooster::isUpdate() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {    
				CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			}
			
			$data = [];
			$data['page_title'] = 'Updating Data';
			$data['row'] = DB::table('complain')->where('id',$id)->first();
			$data['jenis_complain'] = DB::table('jenis_complain')->where('id' , $data['row']->jenis_complain_id)->first();
			$data['row2'] = DB::table('complain_halomas')->where('complain_id' , $data['row']->complain_halomas_id)->first();
			
			//Please use cbView method instead view method from laravel
			$this->cbView('backend.workorder.complain.koorwil',$data);
		}

		public function simpankorwil(Request $request)
		{
			$data = $request->all();
			$biaya = $data['biaya'];
			if(empty($biaya))
			{
				$biaya = 0;
			}
			
			if($data)
			{
				$insert = [];
				$insert['complain_id'] 		= $data['complain_id'];
				$insert['pusat_biaya'] 		= $data['pusat_biaya'];
				$insert['keterangan_biaya'] = $data['keterangan_biaya'];
				
				$insert['biaya'] 			= str_replace( '.' , '' , $biaya);
				$insert['waktu_pekerjaan'] 	= $data['waktu_pekerjaan'];
				$insert['satuan_waktu'] 	= $data['satuan_waktu'];
				$insert['keterangan'] 		= $data['Keterangan'];
				DB::table('tindaklanjut_complain')->insert($insert);

				
				// UPDATE COMPLAIN => Work Order
				DB::table('complain')->where('id' , $data['complain_id'])->update(['status_id' => 2]);

				$to = CRUDBooster::mainpath();
				$message = "Data Berhasil di Update!";
				$type = 'info';

				CRUDBooster::redirect($to,$message,$type);
			}




		}

		public function getdatakorea($id)
		{
			if(!CRUDBooster::MyId()){
				return redirect(CRUDBooster::adminPath('login'));
			}
			 //Create an Auth
			if(!CRUDBooster::isUpdate() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {    
				CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			}
			
			$data = [];
			$data['page_title'] = 'Updating Data';
			$data['row'] = DB::table('complain')->where('id',$id)->first();
			$data['row2'] = DB::table('tindaklanjut_complain')->where('complain_id',$id)->first();
			$data['jenis_complain'] = DB::table('jenis_complain')->where('id' , $data['row']->jenis_complain_id)->first();
			
			//Please use cbView method instead view method from laravel
			$this->cbView('backend.workorder.complain.korea',$data);
		}

		public function simpankorea(Request $request)
		{
			$data = $request->all();

			$data_complain = DB::table('complain')->where('id' , $data['complain_id'])->first();
			$data_halomas  = DB::table('complain_halomas')->where('complain_id' , $data_complain->complain_halomas_id)->first();
			// return $data_halomas->id;
			// UPDATE COMPLAIN => Work Order
			DB::table('tindaklanjut_complain')->where('complain_id' , $data['complain_id'])
			->update(
				['tanggal_mulai' => $data['tanggal_mulai'],
				'foto_sebelum' => $data_halomas->photo]);

			DB::table('complain')->where('id' , $data['complain_id'])->update(['status_id' => 3]);

			$to = CRUDBooster::mainpath();
			$message = "Data Berhasil di Update!";
			$type = 'info';

			CRUDBooster::redirect($to,$message,$type);

		}

		public function getdataleader($id)
		{
			// return $id;
			// if(!CRUDBooster::MyId()){
			// 	return redirect(CRUDBooster::adminPath('login'));
			// }

			// if(!CRUDBooster::isUpdate() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {    
			// 	CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			// }
			
			$data = [];
			$data['page_title'] = 'Updating Data';
			$data['row'] = DB::table('complain')->where('id',$id)->first();
			$data['row2'] = DB::table('tindaklanjut_complain')->where('complain_id',$id)->first();
			$data['jenis_complain'] = DB::table('jenis_complain')->where('id' , $data['row']->jenis_complain_id)->first();
			
			// return $data;
			//Please use cbView method instead view method from laravel
			$this->cbView('backend.workorder.complain.leader',$data);
		}

		public function simpanleader(Request $request)
		{
			
			// return $request->all();
			$complainID = $request->input('complain_id');
			$path = storage_path('app') . '/uploads/complain/' . $request->input('complain_id');
			$path_foto = '/uploads/complain/' . $request->input('complain_id');
			
			if($request->file('foto_sebelum') || $request->file('foto_sesudah') ){
			//JIKA FOLDERNYA BELUM ADA
			if (!File::isDirectory($path)) {
				//MAKA FOLDER TERSEBUT AKAN DIBUAT
				File::makeDirectory($path,0777,true);
			}else{
				File::deleteDirectory($path);
				File::makeDirectory($path,0777,true);
			}
			}

			if($request->file('foto_sebelum')){
				//MENGAMBIL FILE IMAGE DARI FORM
				$file1 = $request->file('foto_sebelum');
				//MEMBUAT NAME FILE DARI GABUNGAN TIMESTAMP DAN UNIQID()
				$fileName1 = Carbon::now()->timestamp . '_' . uniqid() . '.' . $file1->getClientOriginalExtension();
				//UPLOAD ORIGINAN FILE (BELUM DIUBAH DIMENSINYA)
				Image::make($file1)->save($path . '/' . $fileName1);

				
			DB::table('tindaklanjut_complain')->where('complain_id' , $complainID )
			->update([
				'foto_sebelum'=> $fileName1,
				'path_foto_sebelum' => $path_foto
				]);
			}

			if($request->file('foto_sesudah')){
			//MENGAMBIL FILE IMAGE DARI FORM
			$file2 = $request->file('foto_sesudah');
			//MEMBUAT NAME FILE DARI GABUNGAN TIMESTAMP DAN UNIQID()
			$fileName2 = Carbon::now()->timestamp . '_' . uniqid() . '.' . $file2->getClientOriginalExtension();
			//UPLOAD ORIGINAN FILE (BELUM DIUBAH DIMENSINYA)
			Image::make($file2)->save($path . '/' . $fileName2);

			DB::table('tindaklanjut_complain')->where('complain_id' , $complainID )
			->update([
				'foto_sesudah'=> $fileName2,
				'path_foto_sesudah' => $path_foto
				]);
			}
				DB::table('tindaklanjut_complain')->where('complain_id' , $complainID )
				->update([
					'tanggal_selesai'=> $request->input('tanggal_selesai'),
					'notes_leader' => $request->input('notes_leader')
					]);

			

				// ================//
				DB::table('complain')->where('id' , $complainID)->update(['status_id' => 5]);

				$to = CRUDBooster::mainpath();
				$message = "Data Berhasil di Update!";
				$type = 'info';

				CRUDBooster::redirect($to,$message,$type);
			
		}

		public function getdetail($id)
		{
			if(!CRUDBooster::isUpdate() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {    
				CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			}
			
			$data = [];
			$data['page_title'] = 'Updating Data';
			$data['row'] = DB::table('complain')->where('id',$id)->first();
			$data['row2'] = DB::table('tindaklanjut_complain')->where('complain_id',$id)->first();
			$data['jenis_complain'] = DB::table('jenis_complain')->where('id' , $data['row']->jenis_complain_id)->first();
			
			// return $data;
			//Please use cbView method instead view method from laravel
			$this->cbView('backend.workorder.complain.detail',$data);
		}

		public function hapus_foto_sebelum($id)
		{
			// return $id;
			$data = DB::table('tindaklanjut_complain')->where('id' , $id)->first();


			DB::table('tindaklanjut_complain')->where('id' , $id)
						->update(['foto_sebelum' => null]);
			
						return redirect('/pgnmas/complain/leader/' . $data->complain_id);
		}

		public function complain_done($id)
		{

			DB::table('complain')->where('id' , $id)->update(['status_id' => 7]);
			$data_complain = DB::table('complain')->where('id' , $id)->first();
			$data_tindaklanjut = DB::table('tindaklanjut_complain')->where('complain_id' , $id)->first();
			$data_halomas	= DB::table('complain_halomas')->where('complain_id' , $data_complain->complain_halomas_id)->first();
			$aset_id = $data_complain->aset_id;

			$code = "";
			switch (strlen($data_halomas->complain_id)) {
				case 1:
					$code = "COM000";
					break;
				case 2:
					$code = "COM00";
					break;
				case 3:
					$code = "COM0";
					break;
				default:
					$code = "COM";
					break;
			}


			
			// ===================================================================================================
            // get data tujuan user
            //====================================================================================================
				$aset = DB::table('aset')->where('id' , $aset_id)->first();
				$area = DB::table('area')->where('id' , $aset->area_id)->first();
				
				// $user_aset = DB::table('user_aset')->where('wilayah_id' , $area->wilayah_id)->get(['user_id']);
				$user_aset = DB::table('user_aset')->where('aset_id' , $aset_id)->get(['user_id']);
				
				$id2 = [];
				foreach ($user_aset as $key => $value) {
					$id2[] = $value->user_id;
				}
				// return $id2;
				$user2 = DB::table('cms_users')->WhereIn('id' , $id2)
				->whereIn('id_cms_privileges' , [4,5])
				->get();

			//====================================================================================================

				
			//=====================================================================
			$data = [];
			$data['no_halomas'] 	 = $code . $data_halomas->complain_id;
			$data['no_workorder'] 	 = $data_complain->nomor;
			$data['lokasi'] 		 = $aset->nama;
			$data['kategori'] 		 = $data_halomas->category;
			$data['uraian_complain'] = $data_halomas->problem;
			$data['catatan'] 		 = $data_tindaklanjut->notes_leader;	
			$data['status'] 		 = 'CLOSED';
			$data['link'] 		 	 = 'fms.pgnmas.co.id';

			foreach ($user2 as $key => $value) {
				CRUDBooster::sendEmail(
					[
						$data['test_id'] = $value->id_cms_privileges,

						'to'=> $value->email,
						'data'=>$data,
						'template'=>'ComplainDone',
						'attachments'=>[]
					]);
			}

			

			//====================================================================================================
			// get data email contact center
			//====================================================================================================
				
					$cc = DB::table('cms_users')->where('name' , 'Contact Center')->first();
					$email_cc = $cc->email;
				
			//====================================================================================================
			CRUDBooster::sendEmail(
				[
					$data['test_id'] = $cc->id_cms_privileges,
					'to'=> $email_cc,
					'data'=>$data,
					'template'=>'ComplainDone',
					'attachments'=>[]
				]);
			


			
			return redirect(CRUDBooster::mainpath());
		}

		


	    //By the way, you can still create your own method in here... :) 


	}