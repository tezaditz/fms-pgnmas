$(document).ready(function(){
    $('#aset_id').on('change' , function(){
        getLokasiAset(this.value);
    });

    $('#pusat_biaya').on('change' , function(){
        
        if(this.value == "Lainnya")
        {
            $("#keterangan_biaya").attr("readonly", false); 
            $("#keterangan_biaya").value = '';
            $("#keterangan_biaya").select();
        }
        else
        {
            document.getElementById('keterangan_biaya').value = this.value;
        }
        
    });

    var lang = 'en';
    $(function () {
        $('.input_date').datepicker({
            format: 'yyyy-mm-dd',
                            language: lang
        });

        $('.open-datetimepicker').click(function () {
            $(this).next('.input_date').datepicker('show');
        });

    });

});


function getLokasiAset(id)
{
    var url = "/pgnmas/complain/getlokasiaset/" + id;
    
   $.get(url , function(result){
    document.getElementById('lokasi').value = result;
    

   });
}

function addcoma(obj)
{
    if (/\D/g.test(obj.value)){
            obj.value = obj.value.replace(/\D/g, '');
        }
        var angka = document.getElementById(obj.id);
        var index = obj.name;
        $(angka).val(angka.value.toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1."));

};

function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
    
};