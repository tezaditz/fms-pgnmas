<?php namespace App\Http\Controllers;

	use Session;
	use DB;
	use CRUDBooster;
	use Illuminate\Http\Request;
	use PDF;
	use Maatwebsite\Excel\Facades\Excel;
	use Maatwebsite\Excel\Concerns\WithDrawings;
	use PHPExcel_Worksheet_Drawing;
	use Carbon\Carbon;
	use PHPExcel_Style_Border;

	class AdminLaporanController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "name";
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
			$this->table = "laporan";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Name","name"=>"name"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Name','name'=>'name','type'=>'text','validation'=>'required|string|min:3|max:70','width'=>'col-sm-10','placeholder'=>'You can only enter the letter only'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ["label"=>"Name","name"=>"name","type"=>"text","required"=>TRUE,"validation"=>"required|string|min:3|max:70","placeholder"=>"You can only enter the letter only"];
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
		
		Public function getlaporansertifikat(){
			if(!CRUDBooster::MyId()){
				return redirect('/pgnmas/login');
			}

            $data = [];
			$this->cbView('backend.laporan.sertifikat.index' ,$data);
		}

		public function postlaporansertifikat(Request $request){
			if($request->all()){
				ini_set('memory_limit', '1024M');
				set_time_limit(180);
				$data['sertifikat'] = DB::table('sertifikat')
											->join('detail_sertifikat' , 'sertifikat.id' , '=' , 'detail_sertifikat.sertifikat_id')
											->get();
				if($request->JnsFile == "PDF"){
					$pdf = PDF::setOptions(['isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true])
					->loadView('backend.laporan.sertifikat.report', $data);
					$pdf->setPaper('legal' , 'landscape');

					return $pdf->stream('test.pdf');
				}
				if($request->JnsFile == "EXCEL"){
					$data = $data['sertifikat'];
					Excel::create("Sertifikat", function ($excel) use ($data) {
						$excel->getProperties()->setCreator("Spatium System")
							->setLastModifiedBy("Data Solusion Comindo")
							->setTitle("Office 2007 XLSX Test Document")
							->setSubject("Office 2007 XLSX Test Document");
						$excel->sheet('sheet_1', function ($sheet) use ($data){
							$objDrawing = new PHPExcel_Worksheet_Drawing;
							$objDrawing->setPath(storage_path('app/uploads/img/logo2.png')); //your storage image path
							$objDrawing->setCoordinates('A2');
							$objDrawing->setHeight(70);
							$objDrawing->setWorksheet($sheet);
							$styleArray = array(
								'borders' => array(
								  'allborders' => array(
									'style' => PHPExcel_Style_Border::BORDER_THICK
								  )
								)
							  );
							  $sheet->getStyle('A7:J8')->applyFromArray($styleArray);
							
							// Judul
							$sheet->mergeCells('C3:J3');
							$sheet->setCellValue('C3', 'DAFTAR SERTIFIKASI DAN INSTALASI PERALATAN DAN UTILITAS BANGUNAN');
							$sheet->cell('C3' , function($cells){
								$cells->setFontWeight('bold');
								$cells->setAlignment('center');
							});
							// end of judul

							$col = ['A','B','C','D','E','F','G','H','I','J'];
							// $col = ['A','B'];
							for ($i=0; $i < Count($col) ; $i++) { 
								if($col[$i] != 'D' && $col[$i] != 'E' ){
									$sheet->mergeCells(''.$col[$i].'7:'.$col[$i].'8'); // no
								}
								
							}
							
							
							$sheet->mergeCells('D7:E7');



							$sheet->setCellValue('A7', 'No');
							$sheet->setCellValue('B7', 'LOKASI');
							$sheet->setCellValue('C7', 'INSTALASI PERALATAN/UTILITAS');
							$sheet->setCellValue('D7', 'NO. SERTIFIKASI');
							$sheet->setCellValue('D8', 'NO. IJIN');
							$sheet->setCellValue('E8', 'NO. REG');
							$sheet->setCellValue('F7', 'QUANTITY  (UNIT)');
							$sheet->setCellValue('G7', 'TGL SERTIFIKAT');
							$sheet->setCellValue('H7', 'MASA BERLAKU (TAHUN)');
							$sheet->setCellValue('I7', 'MASA KADALUARSA');
							$sheet->setCellValue('J7', 'KETERANGAN');
							$sheet->cell('A7:J8' , function($cells){
								$cells->setFontWeight('bold');
								$cells->setAlignment('center');
								$cells->setValignment('center');
							});
							
							$sheet->getStyle('F7')->getAlignment()->setWrapText(true);
							$sheet->getStyle('G7')->getAlignment()->setWrapText(true);
							$sheet->getStyle('H7')->getAlignment()->setWrapText(true);
							$sheet->getStyle('I7')->getAlignment()->setWrapText(true);
							$sheet->setWidth(array(
								'A'     =>  5,
								'B'     =>  30,
								'C'     =>  30,
								'D'     =>  20,
								'E'     =>  40,
								'F'     =>  12,
								'G'     =>  12,
								'H'     =>  13,
								'I'     =>  13,
								'J'     =>  25,
							));

							$firstRow = 9;
							$row=9;
							$endRow = 9;
							$no = 1;
							$a = "";$b = "";$c = "";
							$a2 = "";$b2 = "";$c2 = "";
							
							foreach($data as $value){
								$a = $value->aset;
								$a2 = $value->peralatan;  
								if($b==$a){$c="";}else{$c=$a;$b=$a;}
								if($b2==$a2){$c2="";}else{$c2=$a2;$b2=$a2;}

								$dt_ijin = date('d-M-y' , strtotime($value->tgl_ijin));
								$dt_exp = date('d-M-y' , strtotime($value->tgl_kadaluarsa));
								$sheet->setCellValue('A'.$row, $no);
								$sheet->setCellValue('B'.$row, $c);
								$sheet->setCellValue('C'.$row, $c2);
								$sheet->setCellValue('D'.$row, $value->no_ijin);
								$sheet->setCellValue('E'.$row, $value->no_reg);
								$sheet->setCellValue('F'.$row, $value->quantity);
								$sheet->setCellValue('G'.$row, $dt_ijin);
								$sheet->setCellValue('H'.$row, $value->masa_berlaku);
								$sheet->setCellValue('I'.$row, $dt_exp);
								$sheet->setCellValue('J'.$row, $value->catatan);
								$row=$row+1;
								$no++;
								
							}
							$styleArray2 = array(
								'borders' => array(
								  'allborders' => array(
									'style' => PHPExcel_Style_Border::BORDER_THIN
								  )
								)
							  );
							$sheet->getStyle('A9:J'.$row.'')->applyFromArray($styleArray2);
							

							
						});
					})->download('xlsx');
				}
				
			}
		}

	



	    //By the way, you can still create your own method in here... :) 


	}