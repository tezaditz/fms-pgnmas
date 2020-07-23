



$(document).ready(function(){
  // console.log(this.value);
  var asetid = $('#aset_id').val();
  var period = $('#period').val();
  var url = "/pgnmas/getmeterid/listrik/"+asetid+"/"+period;
  console.log(asetid);
  $.get(url , function(result){
  var detail = $('#data_detail');
  detail.empty();
    $.each(result, function (key, entry) {

      if(entry.foto_sebelum == null){
        path_foto_sebelum = window.location.origin+"/uploads/img/no_images.png";
      }
      else{
        path_foto_sebelum = window.location.origin+"/"+entry.foto_sebelum;
      }

      if(entry.foto_sesudah == null){
        path_foto_sesudah = window.location.origin+"/uploads/img/no_images.png";
      }
      else{
        path_foto_sesudah = window.location.origin+"/"+entry.foto_sesudah;
      }
      $table = "<tr>";
      $table = $table + "<td>"+entry.no_meter+"</td>";
      $table = $table + "<td>"+entry.pemakaian+"</td>";
      $table = $table + "<td>"+entry.rupiah+"</td>";
      $table = $table + "<td><img src='"+ path_foto_sebelum +"' alt='Foto Sebelum' width='40px' height='40px'></td>";
      $table = $table + "<td><img src='"+ path_foto_sesudah +"' alt='Foto Sesudah' width='40px' height='40px'></td>";
      if (entry.pilih_foto == 1) {
        $table = $table + "<td class='text-center'><input type='radio' name='PilihFoto"+entry.jenis+"' class='form-check-input' id='"+entry.id+"' value='"+entry.id+"' checked></td>";
      } else {
        $table = $table + "<td class='text-center'><input type='radio' name='PilihFoto"+entry.jenis+"' class='form-check-input' id='"+entry.id+"' value='"+entry.id+"'></td>";
      }
      $table = $table + "<td><a href='/pgnmas/listrik/"+entry.id+"/edit' class='btn btn-success btn-xs'><i class='fa fa-edit'></i></a>";
      $table = $table + "</td>";
      $table = $table + "</tr>";
      detail.append($table);
      
      })

      $('input[type="radio"]').on('change', function(e) {
        url = "/pgnmas/updatefoto/"+e.target.value+"/foto"
            $.get( url , function(result2){
              $.each(result, function (key2, entry2) {
                  console.log('a');
              })
            })
      });
  });


  $("#aset_id").on('change' , function(){
    // console.log(this.value);
  
    var period = $('#period').val();
    var asetid = this.value;
    if(period == 0){
      alert('Period Belum Dipilih !');
      this.value = "";
    }
  
    var url = "/pgnmas/getmeterid/listrik/"+asetid+"/"+period;
    var url2 = document.getElementsByName("ref_mainpath");
    console.log(url2[0].value);
     $.get(url , function(result){
      var detail = $('#data_detail');
      detail.empty();
          $.each(result, function (key, entry) {
  
            if(entry.foto_sebelum == null){
              path_foto_sebelum = window.location.origin+"/uploads/img/no_images.png";
            }
            else{
              path_foto_sebelum = window.location.origin+"/"+entry.foto_sebelum;
            }
  
            if(entry.foto_sesudah == null){
              path_foto_sesudah = window.location.origin+"/uploads/img/no_images.png";
            }
            else{
              path_foto_sesudah = window.location.origin+"/"+entry.foto_sesudah;
            }
  
            var pf = entry.pilih_foto;
            $table = "<tr>";
            $table = $table + "<td>"+entry.no_meter+"</td>";
            $table = $table + "<td>"+entry.pemakaian+"</td>";
            $table = $table + "<td>"+entry.rupiah+"</td>";
            $table = $table + "<td><img src='"+ path_foto_sebelum +"' alt='Foto Sebelum' width='40px' height='40px'></td>";
            $table = $table + "<td><img src='"+ path_foto_sesudah +"' alt='Foto Sesudah' width='40px' height='40px'></td>";
            if (entry.pilih_foto == 1) {
              $table = $table + "<td class='text-center'><input type='radio' name='PilihFoto"+entry.jenis+"' class='form-check-input' id='"+entry.id+"' value='"+entry.id+"' checked></td>";
            } else {
              $table = $table + "<td class='text-center'><input type='radio' name='PilihFoto"+entry.jenis+"' class='form-check-input' id='"+entry.id+"' value='"+entry.id+"'></td>";
            }
           
            $table = $table + "<td><a href='/pgnmas/listrik/"+entry.id+"/edit' class='btn btn-success btn-xs'><i class='fa fa-edit'></i></a>";
            $table = $table + "</td>";
            $table = $table + "</tr>";
            detail.append($table);
           
            })
      
            $('input[type="radio"]').on('change', function(e) {
              console.log(e.target.value);
          });
     });
  
  
  })
  
  $("#period").on('change' , function(){
    // console.log(this.value);
  
    var asetid = $('#aset_id').val();
    var period = this.value;
    // if(asetid == 0){
    //   alert('Aset Belum Dipilih !');
    //   this.value = "";
    // }
  
    var url = "/pgnmas/getmeterid/listrik/"+asetid+"/"+period;
     $.get(url , function(result){
      var detail = $('#data_detail');
      detail.empty();
          $.each(result, function (key, entry) {
  
            if(entry.foto_sebelum == null){
              path_foto_sebelum = window.location.origin+"/uploads/img/no_images.png";
            }
            else{
              path_foto_sebelum = window.location.origin+"/"+entry.foto_sebelum;
            }
  
            if(entry.foto_sesudah == null){
              path_foto_sesudah = window.location.origin+"/uploads/img/no_images.png";
            }
            else{
              path_foto_sesudah = window.location.origin+"/"+entry.foto_sesudah;
            }
  
  
            $table = "<tr>";
            $table = $table + "<td>"+entry.no_meter+"</td>";
            $table = $table + "<td>"+entry.pemakaian+"</td>";
            $table = $table + "<td>"+entry.rupiah+"</td>";
            $table = $table + "<td><img src='"+ path_foto_sebelum +"' alt='Foto Sebelum' width='40px' height='40px'></td>";
            $table = $table + "<td><img src='"+ path_foto_sesudah +"' alt='Foto Sesudah' width='40px' height='40px'></td>";
            if (entry.pilih_foto == 1) {
              $table = $table + "<td class='text-center'><input type='radio' name='PilihFoto"+entry.jenis+"' class='form-check-input' id='"+entry.id+"' value='"+entry.id+"' checked></td>";
            } else {
              $table = $table + "<td class='text-center'><input type='radio' name='PilihFoto"+entry.jenis+"' class='form-check-input' id='"+entry.id+"' value='"+entry.id+"'></td>";
            }
            $table = $table + "<td><a href='/pgnmas/listrik/"+entry.id+"/edit' class='btn btn-success btn-xs'><i class='fa fa-edit'></i></a>";
            $table = $table + "</td>";
            $table = $table + "</tr>";
            detail.append($table);
           
            })

            $('input[type="radio"]').on('change', function(e) {
              console.log(e.value);
            });
     });
  
  
  })

  

})





