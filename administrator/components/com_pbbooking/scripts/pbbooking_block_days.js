window.addEvent('domready',function(){
	
	$$('.time-input').addEvent('blur',function(){

		input = this.getProperty('value');

		if (input != '') {
			hours = input.replace(/(^\d\d).*/,'$1');
			minutes = input.replace(/.*(\d\d)$/,'$1');
		
			this.setProperty('value',hours+':'+minutes);		
		}
		
	})
        
        jQuery('#block-slot').change(function(){
            jQuery('#block-start-hour').val('');
            jQuery('#block-end-hour').val('');
            if(jQuery(this).val() != ''){
                fillBlockSlot();
            }else{
                jQuery('#block-start-hour').attr('readonly', false); 
                jQuery('#block-end-hour').attr('readonly', false); 
            }            
        });
        
        jQuery('#block-start-hour').blur(function(){
            if(jQuery('#block-start-hour').val() != ''){
                return;
            }
            else{                
                jQuery('#block-end-hour').val('');
            }
        });
        
        jQuery('#block-end-hour').click(function(){
            if(jQuery('#block-start-hour').val() != ''){
                return;
            }
            else{
                alert('Inserire prima l\'orario  di inizio del blocco');
                jQuery('#block-start-hour').focus();
            }
        });
        
        jQuery('#block-end-hour').focus(function(){
            if(jQuery('#block-start-hour').val() != ''){
                return;
            }
            else{
                alert('Inserire prima l\'orario  di inizio del blocco');
                jQuery('#block-start-hour').focus();
            }
        });
	
	$('adminForm').addEvent('submit',function(){
                if(jQuery('#block-slot').val() != ''){
                    fillBlockSlot();
                }
                
                if(jQuery('#block-start-hour').val() == '' || jQuery('#block-end-hour').val() == ''){
                    jQuery('#block-start-hour').val('0900');
                    jQuery('#block-end-hour').val('2000');
                }
                
		//loop through all the time inputs and replace the colons...
		$$('.time-input').each(function(el,index){
			el.setProperty('value',el.getProperty('value').replace(/\:/,''));
		});
	})
	
	
	
	
	
})

function fillBlockSlot(){
    var block_hour_arr = jQuery('#block-slot').val().split('-');
    var block_start_hour = block_hour_arr[0];
    var block_end_hour = block_hour_arr[1];
    jQuery('#block-start-hour').val(block_start_hour);
    jQuery('#block-end-hour').val(block_end_hour);
    jQuery('#block-start-hour').attr('readonly', true); 
    jQuery('#block-end-hour').attr('readonly', true); 
}
