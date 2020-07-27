$(document).ready(function(){
   $('#btn_delete').on('click' , function(){
    swal({
        title: 'Hapus data penilaian',
        type:'warning',
        showCancelButton:true,
        allowOutsideClick:true,
        confirmButtonColor: '#DD6B55',
        confirmButtonText: 'green',
        cancelButtonText: 'default',
        closeOnConfirm: false
        }, 
        function(){
            location.href = '{{ route("deletePenilaian", ) }}';

        });
   });
});