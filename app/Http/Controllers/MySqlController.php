<?php

namespace App\Http\Controllers;

use Session;
use DB;
use CRUDBooster;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Artisan;
use Validate;

class MySqlController extends \crocodicstudio\crudbooster\controllers\CBController
{
    public function cbInit() {
        # START CONFIGURATION DO NOT REMOVE THIS LINE
        $this->table 			   = "master_solar";	        
        $this->title_field         = "id";
        $this->limit               = 20;
        $this->orderby             = "id,desc";
        $this->show_numbering      = FALSE;
        $this->global_privilege    = FALSE;	        
        $this->button_table_action = TRUE;   
        $this->button_action_style = "button_icon";     
        $this->button_add          = TRUE;
        $this->button_delete       = TRUE;
        $this->button_edit         = FALSE;
        $this->button_detail       = TRUE;
        $this->button_show         = TRUE;
        $this->button_filter       = FALSE;        
        $this->button_export       = FALSE;	        
        $this->button_import       = FALSE;
        $this->button_bulk_action  = FALSE;	
        $this->sidebar_mode		   = "collapse-mini"; //normal,mini,collapse,collapse-mini
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
        $this->alert = array();
                

        
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
        $this->load_js[] = asset("js/mysql/sql.js");
        
        
        
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

    public function sql(){
        
        if(!CRUDBooster::myId() && CRUDBooster::myId() != 1){
            return redirect('/');
        }


			$data = [];
            $data['page_title'] = 'Execute SQL';
            $tables = CRUDBooster::listTables();

            $tables_list = [];
            foreach ($tables as $tab) {
                foreach ($tab as $key => $value) {
                    $label = $value;
    
                    // if (substr($value, 0, 4) == 'cms_') {
                    //     continue;
                    // }
    
                    $tables_list[] = $value;
                }
            }

            $data['table'] = $tables_list;
           
            // return $data['table'];
			//Please use cbView method instead view method from laravel
			$this->cbView('backend.superadmin.mysql',$data);
        
    }

    public function exesql(Request $request)
    {
        return $request;
    }

    public function getTableColumns($table)
    {
        $columns = CRUDBooster::getTableColumns($table);

        return response()->json($columns);
    }

    public function getdata($table)
    {
        $data = DB::table($table)->get();

        return response()->json($data);
    }

    public function updatedata(Request $request , $tables , $id)
    {
        $data = $request->all();
        
        if($data){
            $columns = CRUDBooster::getTableColumns($tables);
            foreach ($columns as $key => $value) {
                if($value != 'created_at'){
                    $oldvalue = DB::table($tables)->where('id' , $id)->get([$value]);

                    $description = "Update table " . $tables;
                    $detail = "Update Field " . $value . " From " . $oldvalue[$value] . " to " . $data[$value];

                    CRUDBooster::insertlog($description ,$detail);

                    DB::table($tables)->where('id' , $id)->update([$value => $data[$value]]);
                }                
            }
        }
        
        return redirect()->back();
    }

    public function execute_sql(Request $request){
        

        $statment = $request->sqlscript;
        // return $statment;

        $data = DB::select(DB::raw($request->sqlscript));

        return response()->json($data);
    }

    public function backup(){
       
        $filename = "backup-" . Carbon::now()->format('Y-m-d_H-i-s') . ".sql";
        Artisan::call('backup:database',['filename' => $filename]);
        return back();

       
    }

    public function upload(Request $request){
        $request->validate([
            'file' => 'required',
        ]);
        // return $request->all();
        $file = $request->file('file');
        $tujuan_upload = $request->input('pathFile');
        // return $tujuan_upload;
        
        $file->move($tujuan_upload,$file->getClientOriginalName());
        



    }
}
