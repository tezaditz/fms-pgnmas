<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    
    return redirect('/pgnmas');
});

Route::get('/pgnmas' , 'DashboardsController@getindex')->name('DashboardsControllerGetIndex');
Route::get('/pgnmas/halomas_dashboard' , 'DashboardsController@dashboard_halomas')->name('DashboardHalomas');

Route::post('/pgnmas/wo/rutin/slaaset/simpan' , 'SlaAsetController@store')->name('simpan-sla-aset');
Route::post('/pgnmas/wo/rutin/slaaset/update/{id}' , 'SlaAsetController@update')->name('update-sla-aset');
Route::post('/pgnmas/wo/rutin/sediasla/simpan' , 'KetersediaanSlaController@store')->name('simpan-sedia-sla');
Route::post('/pgnmas/wo/rutin/sediasla/update/{id}' , 'KetersediaanSlaController@update')->name('update-sedia-sla');
Route::post('/pgnmas/penilaiansla/{id}/simpan' , 'PenilaianSlaController@simpan')->name('simpan-nilai');

Route::get('/pgnmas/post_to_rekap_will' , 'AdminListrikController@post_to_rekap_will');
Route::get('/pgnmas/m_krj/detail_pekerjaan/{id}' , 'AdminMKrjController@detail_kerja')->name('list-pekerjaan-leader');

Route::post('/pgnmas/penilaian/{id}/simpan_sales' , 'PenilaianSlaController@simpan_sales')->name('simpan-sales-nilai');
Route::get('/pgnmas/complain/getlokasiaset/{id}' , 'AdminComplainController@get_lokasi_aset')->name('getlokasiaset');
Route::get('/pgnmas/complain/koorwil/{id}' , 'AdminComplainController@getdatakoorwill')->name('getdatakoorwill');
Route::post('/pgnmas/complain/korwil/save/{id}' , 'AdminComplainController@simpankorwil')->name('simpankorwil');
Route::get('/pgnmas/complain/korea/{id}' , 'AdminComplainController@getdatakorea')->name('getdatakorea');
Route::post('/pgnmas/complain/korea/save/{id}' , 'AdminComplainController@simpankorea')->name('simpankorea');
Route::get('/pgnmas/complain/leader/{id}' , 'AdminComplainController@getdataleader')->name('getdataleader');
Route::get('/pgnmas/complain/detail/{id}' , 'AdminComplainController@getdetail')->name('getdetail');
Route::post('/pgnmas/complain/leader/save/{id}' , 'AdminComplainController@simpanleader')->name('simpanleader');

Route::get('/pgnmas/jadwalSla/getDetailSla/{id}' , 'AdminMasterJadwalSlaController@getDetailSla')->name('JadwalGetDetailSla');
Route::get('/pgnmas/jadwalSla/getrincianpekerjaan/{id}' , 'AdminMasterJadwalSlaController@getDetailSla')->name('JadwalGetDetailSla');
Route::get('/pgnmas/jadwalSla/getFrekuensi/{id}' , 'AdminMasterJadwalSlaController@getfrekuensi')->name('JadwalGetFrekuensi');
Route::get('/pgnmas/pekerjaan/generate_jadwal/{detail_pekerjaan_id}/{bulan}/{detail_sla_id}' , 'AdminMKrjController@generate_jadwal_pekerjaan')->name('generate_jadwal');
Route::get('/pgnmas/kirim/email' , 'SendEmailController@kirim')->name('KirimEmail');
Route::get('/pgnmas/kirim/fms/{id}' , 'SendEmailController@kirim_fms');

Route::get('/pgnmas/update/complain' , 'DashboardsController@update_status_complain_out_standing');

Route::get('/pgnmas/complain/hapus_foto_sebelum/{id}' , 'AdminComplainController@hapus_foto_sebelum')->name('HapusFotoSebelum');
Route::get('/pgnmas/complain/done/{id}' , 'AdminComplainController@complain_done')->name('DoneComplain');

Route::get('/pgnmas/listrik/delete/{id}' , 'AdminListrikController@getDelete')->name('DeleteListrik');

Route::get('/pgnmas/mnilai/print/{id}' , 'AdminMnilaiController@print')->name('print-nilai');

//dokumentasi
Route::get('/pgnmas/dok_complain/print/{id}' , 'AdminDokComplainController@print')->name('PrintComplain');
Route::get('/pgnmas/photo_rutin/getDetailSLA/{id}' , 'AdminPhotoRutinController@getDetailSla')->name('PhotoRutinGetDetailSla');
Route::get('/pgnmas/photo_rutin/cari/{aset_id}/{sla_id}/{detail_sla_id}/{period}' , 'AdminPhotoRutinController@cari_data')->name('PhotoRutinFindData');
Route::get('/pgnmas/photo_rutin/print/{id}' , 'AdminPhotoRutinController@print')->name('PrintRutin');

Route::get('/pgnmas/loginfromemail/{us}/{pw}/{id}/{year}' , 'AdminMnilaiController@loginfromemail');

Route::get('/pgnmas/mnilai/history/{id?}' , 'AdminMnilaiController@historyPenilaian')->name('HistoryPenilaian');
Route::get('/pgnmas/mnilai/history/detail/{id?}' , 'AdminMnilaiController@detailhistoryPenilaian')->name('DetailHistoryPenilaian');

// Laporan
Route::get('/pgnmas/slareport' , 'ReportController@getLaporanSLA')->name('ReportSLA');
Route::post('/pgnmas/slareport' , 'ReportController@postLaporanSLA')->name('PostReportSLA');
Route::get('/pgnmas/utilitasReport' , 'ReportController@getLaporanUti')->name('ReportUti');
Route::post('/pgnmas/utilitasReport' , 'ReportController@postLaporanUti')->name('PostReportUti');



//=================================================//
Route::get('/pgnmas/sa/sql' , 'MySqlController@sql')->name('mySql');
Route::post('/pgnmas/sa/exe_sql' , 'MySqlController@exesql')->name('ExeMySql');
Route::get('/pgnmas/sa/gettablecolumn/{tables}' , 'MySqlController@getTableColumns')->name('getTableColumns');
Route::get('/pgnmas/sa/getdatatable/{tables}' , 'MySqlController@getdata')->name('getdata');
Route::post('/pgnmas/sa/updatedata/{tables}/{id}' , 'MySqlController@updatedata')->name('updatedata');
Route::post('/pgnmas/sa/execute_sql' , 'MySqlController@execute_sql')->name('ExeMySql2');
Route::get('/pgnmas/sa/backup' , 'MySqlController@backup')->name('backupsql');
Route::post('/pgnmas/sa/upload' , 'MySqlController@upload')->name('UploadFileSa');
Route::get('/pgnmas/sa/check_path' , 'MySqlController@cek_path')->name('checkPath');

Route::get('/pgnmas/utilitas/{utilitas?}/{id?}/{photo?}' , 'MasterController@HapusFotoUtilitas' )->name('hapusfotoutilitas');
Route::post('/pgnmas/utilitas/{table?}/{id?}' , 'MasterController@PostEditSave')->name('PostEditSaveUtility');
Route::get('/pgnmas/penilaian/draft/{id?}/' , 'AdminMnilaiController@getdraft')->name('getdraftnilai');
Route::post('pgnmas/penilaian/edit_nilai/{id?}' , 'PenilaianSlaController@edit_nilai')->name('EditNilai');
Route::get('/pgnmas/penilaian/send/{id?}' , 'PenilaianSlaController@send')->name('SendPenilaian');
//-- 25 Jul 2020 13:49 --//
Route::get('/pgnmas/penilaian/delete/{id}' , 'AdminMnilaiController@getdelete')->name('deletePenilaian');