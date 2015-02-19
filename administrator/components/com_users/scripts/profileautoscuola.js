window.addEvent('domready',function(){
        
    if(jQuery('#jform_profileautoscuola_car').val() == ''){
        jQuery('#jform_profileautoscuola_car').parent().parent().hide();
    }
    
    if(jQuery('#jform_profileautoscuola_bike').val() == ''){
        jQuery('#jform_profileautoscuola_bike').parent().parent().hide();
    }
    
    if(jQuery('#jform_profileautoscuola_truck').val() == ''){
        jQuery('#jform_profileautoscuola_truck').parent().parent().hide();    
    }
        
        
	
	jQuery('#jform_profileautoscuola_license').change(function(){
            
            switch (jQuery('#jform_profileautoscuola_license' ).val()){
                case 'A':
                    jQuery('#jform_profileautoscuola_bike').parent().parent().show();
                    resetTransport('#jform_profileautoscuola_car');
                    resetTransport('#jform_profileautoscuola_truck');
                    break;
                
                case 'AM':
                    jQuery('#jform_profileautoscuola_bike').parent().parent().show();
                    resetTransport('#jform_profileautoscuola_car');
                    resetTransport('#jform_profileautoscuola_truck');
                    break;
                    
                case 'B':
                    jQuery('#jform_profileautoscuola_car').parent().parent().show();
                    resetTransport('#jform_profileautoscuola_bike');
                    resetTransport('#jform_profileautoscuola_truck');
                    break;
                
                case 'C':
                    jQuery('#jform_profileautoscuola_truck').parent().parent().show();
                    resetTransport('#jform_profileautoscuola_bike');
                    resetTransport('#jform_profileautoscuola_car');
                    break;
                
                default:
                    resetTransport('#jform_profileautoscuola_car');
                    resetTransport('#jform_profileautoscuola_bike');
                    resetTransport('#jform_profileautoscuola_truck');
            }            
        });
})

function resetTransport(id){
    jQuery(id).val('');
    jQuery(id).parent().parent().hide();    
}




