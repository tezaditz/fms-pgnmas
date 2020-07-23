$(document).ready(function(){
    $('#table_db').on('change' , function(){
        var tables = this.value;
        var html = "";
        var form = "";
        var url = "/pgnmas/sa/gettablecolumn/" + this.value;

        $('thead tr').empty();
        $('tbody ').empty();
        $('h4').text(this.value);
        $.get(url , function(result){
            
            $.each(result, function (key, entry) {
                $('thead tr').append('<td class="text-center"><strong>' + result[key] + '</strong></td>');
                
            })
            $('thead tr').append('<td class="text-center"><strong>Actions</strong></td>');
            
              var url2 = "/pgnmas/sa/getdatatable/" + tables;
              var csrf_token = document.getElementById('csrftoken');
                $.get(url2 , function(result_data){
                    
                    $.each(result_data, function (key_data, entry_data) {
                        html = "<tr>";
                        $.each(result, function (key, entry) {
                            html = html + "<td class='text-center'>" + result_data[key_data][result[key]] + "</td>";
                         });
                         html = html + "<td class='text-center'>";           
                        //  html = html + "<a href='javascipt:void(0)' data-toggle='modal' data-target='#form-edit-"+ result_data[key_data]['id'] +"' class = 'btn btn-xs btn-success'><i class='fa fa-edit'></i></a></td>";
                         html = html + '<button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#form-edit-'+ result_data[key_data]['id'] +'"> <i class="fa fa-edit"></i> Edit</button>';
                        //====== form =======
                        html = html +'<div class="modal" id="form-edit-'+ result_data[key_data]['id'] +'">';
                            //  === modal - dialog ====
                            html = html + '<div class="modal-dialog">';
                                html = html + '<div class="modal-content">';
                                    html = html + '<div class="modal-header">';
                                        html = html + '<h4 class="modal-title">Edit Data <strong>'+ tables +'</strong> ID: '+ result_data[key_data]['id'] +'</h4>';
                                        html = html + '<button type="button" class="close" data-dismiss="modal">&times;</button>';
                                    html = html + '</div>';
                                    html = html + '<div class="modal-body">';
                                    
                                        html = html + "<form method='post' action='/pgnmas/sa/updatedata/"+ tables +"/"+ result_data[key_data]['id'] +"' enctype='multipart/form-data' class='form-horizontal'>";
                                        html = html + "<input type='hidden' id='_token' name='_token' value='" + csrf_token.value + "' />";
                                        $.each(result, function (key, entry) {
                                            html = html + "<div class='form-group header-group-0 ' id='form-group-aset_id' style=''>";
                                                html = html + "<label class='control-label col-sm-2'>" + result[key] +  "</label>";
                                                html = html + '<div class="col-sm-10">';
                                                html = html + '<input type="text" title="'+ result[key] +'" required maxlenght=10    class="form-control text-right" name="'+ result[key] +'" id="'+ result[key] +'" value="'+ result_data[key_data][result[key]] +'">';
                                                html = html + '</div>';
                                            html = html + '</div>';
                                        });
                                        html = html + "<input type='submit' class='btn btn-primary' value='Save changes'/>";
                                        html = html + '</form>';
                                    html = html + '</div>';
                                    html = html + '<div class="modal-footer">';
                                       
                                    html = html + '</div>';
                                    
                                html = html + '</div>';
                            html = html + '</div>';
                            // === END Modal Dialog ====
                        html = html + '</div>';

                         html = html + "</tr>";
                         $('tbody ').append(html);
                    });    
                                   
                });
            })
    });


});