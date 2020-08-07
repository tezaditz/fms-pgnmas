$(document).ready(function(){
    $('#detail_sla').append('<option value="0">-- Silahkan Pilih Detail SLA</option>');
    $('#rincian_pekerjaan').append('<option value="0">-- Silahkan Pilih Rincian Pekerjaan</option>');
    $('#sla_id').on('change' , function(){
        
        var url = "/pgnmas/photo_rutin/getDetailSLA/" + this.value;

        $('#detail_sla').empty();
        $('#detail_sla').append('<option value="0">-- Silahkan Pilih Detail SLA</option>');
        $.get(url , function(result){
            $.each(result, function (key, entry) {
                $('#detail_sla').append('<option value="' + entry["id"] + '">'+ entry["uraian"] +'</option>');
                
            })
        });
    });

    $('#detail_sla').on('change' , function(){
        
        var url = "/pgnmas/photo_rutin/getRincianPekerjaan/" + this.value;

        $('#rincian_pekerjaan').empty();
        $('#rincian_pekerjaan').append('<option value="0">-- Silahkan Rincian Pekerjaan</option>');
        $.get(url , function(result){
            $.each(result, function (key, entry) {
                $('#rincian_pekerjaan').append('<option value="' + entry["id"] + '">'+ entry["uraian"] +'</option>');
                
            })
        });
    });

    var lang = 'en';
    $(function () {
        $('.input_date').datepicker({
            format: 'yyyy-mm-dd',
            language: lang,
        });

        $('.open-datetimepicker').click(function () {
            $(this).next('.input_date').datepicker('show');
        });

    });

    

    $('#cari').on('click' , function(){
        
        var asetid      = document.getElementById('aset_id');
        var slaid       = document.getElementById('sla_id');
        var detailslaid = document.getElementById('detail_sla');
        var rinciid     = document.getElementById('rincian_pekerjaan');
        var period      = document.getElementById('period');
        var base_url    = document.getElementById('base_url');
        $('tbody ').empty();
        console.log(base_url.value);
        var url = "/pgnmas/photo_rutin/cari/"+ asetid.value +"/"+ slaid.value +"/"+ detailslaid.value +"/"+ rinciid.value +"/"+ period.value;
        console.log(url);
        $.get(url , function(result){
            console.log(result['sub'].length);

            if(result['sub'].length != 0){
                $.each(result['sub'], function (key, entry) {
                    html = '<tr>';
                    html = html + '<td class="text-center">' + entry['tanggal']+ '</td>';
                    html = html + '<td class="text-center">';
                    html = html + "<img src='" + base_url.value + entry['foto_sebelum'] + "' alt='' width='40px' height='40px'>";
                    html = html + '</td>';
                    html = html + '<td class="text-center">';
                    html = html + "<img src='" + base_url.value + entry['foto_sesudah'] + "' alt='' width='40px' height='40px'>";
                    html = html + '</td>';
                    html = html + '<td class="text-center">';
                    html = html + "<div class='button_action' style='text-align:center'><a class='btn btn-xs btn-danger' title='' onclick='' href='"+ base_url.value +"pgnmas/photo_rutin/print/"+ entry['id'] +"' target='_blank'><i class='fa fa-file-pdf-o'></i> cetak PDF </a></div>";
                    html = html + "<div class='button_action' style='text-align:center'><a class='btn btn-xs btn-success' title='' onclick='' href='"+ base_url.value +"pgnmas/photo_rutin/print/"+ entry['id'] +"/excel' target='_blank'><i class='fa fa-file-excel-o'></i> cetak Excel </a></div>";
                    html = html + '</td>';
                    html =  html + '</tr>';
                    $('tbody ').append(html);
                })
            }else{
                
                    html = '<tr>';
                    html = html + '<td colspan = 4 class="text-center"><strong>Tidak Ada Data!</strong></td>';
                    html =  html + '</tr>';
                    $('tbody ').append(html);
            }


            
            
        });
    });


});