$(document).ready(function(){
  $('#aset_id').on('change' , function(){
      getLokasiAset(this.value);
  });
});


$('#sla_id').on('change' , function(){
    console.log(this.value);
    var nilai = this.value;
    var url = "/pgnmas/jadwalSla/getDetailSla/" + nilai;
   $.get(url , function(result){
    var kd6 = $('#detail_sla_id');
    kd6.empty();
    $.each(result, function (key, entry) {
        var kd6 = $('#detail_sla_id');
        kd6.append("<option value="+ entry.id +">" + entry.uraian + "</option");
        
      })
   });
});

$('#detail_sla_id').on('change' , function(){
  console.log(this.value);
  var nilai = this.value;
  var url = "/pgnmas/jadwalSla/getDetailSla/" + nilai;
 $.get(url , function(result){
  var kd6 = $('#detail_sla_id');
  kd6.empty();
  $.each(result, function (key, entry) {
      var kd6 = $('#detail_sla_id');
      kd6.append("<option value="+ entry.id +">" + entry.uraian + "</option");
      
    })
 });
});

$('#frekuensi_id').on('change' , function(){
  var nilai = this.value;
  var url = "/pgnmas/jadwalSla/getFrekuensi/" + nilai;
  $.get(url , function(result){
    
    var h1 = $("#H1"); h2 = $("#H2"); h3 = $("#H3"); h4 = $("#H4");h5 = $("#H5");h6 = $("#H6");h7 = $("#H7");
    var m1 = $("#M1"); m2 = $("#M2"); m3 = $("#M3"); m4 = $("#M4");m5 = $("#M5");
    var b1 = $('#B1');b2 = $('#B2');b3 = $('#B3');b4 = $('#B4');b5 = $('#B5');b6 = $('#B6');b7 = $('#B7');b8 = $('#B8');b9 = $('#B9');b10 = $('#B10');b11 = $('#B11');b12 = $('#B12');

    
    console.log(result);
    $.each(result, function (key, entry) {
        
        if(entry.H1 == 1){ h1.prop("checked", true);}else{h1.prop("checked", false);}
        if(entry.H2 == 1){ h2.prop("checked", true);}else{h2.prop("checked", false);}
        if(entry.H3 == 1){ h3.prop("checked", true);}else{h3.prop("checked", false);}
        if(entry.H4 == 1){ h4.prop("checked", true);}else{h4.prop("checked", false);}
        if(entry.H5 == 1){ h5.prop("checked", true);}else{h5.prop("checked", false);}
        if(entry.H6 == 1){ h6.prop("checked", true);}else{h6.prop("checked", false);}
        if(entry.H7 == 1){ h7.prop("checked", true);}else{h7.prop("checked", false);}

        if(entry.M1 == 1){m1.prop("checked", true);}else{m1.prop("checked", false);}
        if(entry.M2 == 1){m2.prop("checked", true);}else{m2.prop("checked", false);}
        if(entry.M3 == 1){m3.prop("checked", true);}else{m3.prop("checked", false);}
        if(entry.M4 == 1){m4.prop("checked", true);}else{m4.prop("checked", false);}
        if(entry.M5 == 1){m5.prop("checked", true);}else{m4.prop("checked", false);}

        if(entry.B1== 1){b1.prop("checked", true);}else{b1.prop("checked", false);}
        if(entry.B2== 1){b2.prop("checked", true);}else{b2.prop("checked", false);}
        if(entry.B3== 1){b3.prop("checked", true);}else{b3.prop("checked", false);}
        if(entry.B4== 1){b4.prop("checked", true);}else{b4.prop("checked", false);}
        if(entry.B5== 1){b5.prop("checked", true);}else{b5.prop("checked", false);}
        if(entry.B6== 1){b6.prop("checked", true);}else{b6.prop("checked", false);}
        if(entry.B7== 1){b7.prop("checked", true);}else{b7.prop("checked", false);}
        if(entry.B8== 1){b8.prop("checked", true);}else{b8.prop("checked", false);}
        if(entry.B9== 1){b9.prop("checked", true);}else{b9.prop("checked", false);}
        if(entry.B10== 1){b10.prop("checked", true);}else{b10.prop("checked", false);}
        if(entry.B11== 1){b11.prop("checked", true);}else{b11.prop("checked", false);}
        if(entry.B12== 1){b12.prop("checked", true);}else{b12.prop("checked", false);}

        
      })
   });
});