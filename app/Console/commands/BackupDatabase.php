<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Carbon;
use Storage;
use DB;
use Mail;
use CRUDBooster;

class BackupDatabase extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'backup:database {filename}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Run backup on database and upload to S3';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $path_mysqldump = "d:/xampp71/mysql/bin/";
        //set filename with date and time of backup
        

        //mysqldump command with account credentials from .env file. storage_path() adds default local storage path
        $command = $path_mysqldump . "mysqldump --user=" . env('DB_USERNAME') ." --password=" . env('DB_PASSWORD') . " --host=" . env('DB_HOST') . " " . env('DB_DATABASE') . "  > " . storage_path() . "/" . $this->argument('filename');

        $returnVar = NULL;
        $output  = NULL;
        //exec command allows you to run terminal commands from php 
        exec($command);

        $data = ['name'=>'John Doe','address'=>'Lorem ipsum dolor...'];
        CRUDBooster::sendEmail([
            'to'=>'datasolusicomindo@gmail.com',
            'data'=>$data,
            'template'=>'EmailBackUpSQL',
            'attachments'=>[
                storage_path() . "/" . $this->argument('filename')
            ]]);
        
        
    }
}
