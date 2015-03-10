window.addEvent('domready',function(){
    
    
        jQuery('#cal_id').change(function(){
            var url = 'index.php?option=com_pbbooking&controller=manage&task=loadCalendarRelatedInfo&cal_id='+jQuery('#cal_id').val()+'&date_sel='+jQuery('#date').val();
            var userItems = [];
            userItems.push("<option value =''> --- Seleziona un utente --- </option>");
            if(jQuery('#cal_id').val() != "" && jQuery('#date').val() != null){
                jQuery.getJSON( url, function( data ) {
                    if(typeof(data.message) == 'string'){
                        jQuery('#calendar-user').html(userItems.join(''));                  
                        alert(data.message);
                    }
                    else{
                        jQuery.each(data, function(key){
                            userItems.push( "<option value='" + data[key].id + "'>" + data[key].name + "</option>" );
                        });
                        jQuery('#calendar-user').html(userItems.join(''));                  
                    }
                }).fail( function() {
                    alert("Non è possibile caricare gli utenti abilitati al calendario, si prega di riprovare.");
                });
                 
            }
            else {
                //jQuery('#treatment-time').html(slotItems.join(''));
                jQuery('#calendar-user').html(userItems.join(''));
                alert('Indicare il calendario e data della prenotazione!');
            }
            
        });
    
	/*$('select-shift').addEvent('change',function(){
		
		this.setProperty('disabled',true);
		
		//load up the relevant times in the drop down box....
		start_hour = times_array[this.getProperty('value')]['start_time']['start_hour'];
		start_min = times_array[this.getProperty('value')]['start_time']['start_min'];
		end_hour = times_array[this.getProperty('value')]['end_time']['end_hour'];
		end_min = times_array[this.getProperty('value')]['end_time']['end_min'];
		
		//console.log('start_hour = '+start_hour);
		dtstart = new Date();
		dtend = new Date();
		dtstart.setHours(start_hour,start_min,0);
		dtend.setHours(end_hour,end_min,0);
		html = '<option value="0">--- Select a Time---</option>';
		
		while(dtstart<=dtend) {
			//console.log(dtstart.toString());
			html+='<option value="'+dtstart.format('%H%M')+'">'+dtstart.format('%H:%M %p')+'</option>';
			dtstart.setMinutes(dtstart.getMinutes()+time_increment);
		}				
		html = '<select name="treatment-time" id="select-treatment-time" disabled=false>'+html+'</select>';
		$('treatment-time').setProperty('html',html);		
		this.setProperty('disabled',false);	
		$('select-treatment-time').setProperty('disabled',false);
	})
	
	$$('select[name=treatment_id]').addEvent('change',function(){
		this.setProperty('disabled',true);
		
		idx = -1;
		for (i=0;i<services_array.length;i++) {
			if (services_array[i].id == this.getProperty('value')) {
				idx = i;
			}
		}
		
		service = services_array[idx];
		
		$$('select[name=cal_id]').setProperty('value',service.calendar);
		
		this.setProperty('disabled',false);
	})*/
})
