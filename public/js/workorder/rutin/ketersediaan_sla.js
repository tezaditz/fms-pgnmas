 $("#pilih_semua").click(function(){
    $('input:checkbox').not(this).prop('checked', this.checked);
});

function check_uncheck_checkbox(obj , isChecked) {
    
    if(isChecked) {
        $('input[class="'+ obj.className +'"]').each(function() { 
            this.checked = true; 
        });
        $('input[class="sub_'+ obj.className +'"]').each(function() { 
            this.checked = true; 
        });
    } else { 
        $('input[class="'+ obj.className +'"]').each(function() {
            this.checked = false;
        });
        $('input[class="sub_'+ obj.className +'"]').each(function() { 
            this.checked = false; 
        });
    }
}

function check_uncheck_checkbox_sub(obj , isChecked) {
    
    if(isChecked) {
        $('input[id="'+ obj.name +'"]').each(function() {
            this.checked = true;
        });
    } else { 
        $('input[id="'+ obj.name +'"]').each(function() { 
            this.checked = false; 
        });
    }
}

