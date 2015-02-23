function populateTransport(url, selectedLicense, selectedTransport, selectId){
    var items = [];
    items.push("<option value =''> --Seleziona un Veicolo-- </option>");
    if(selectedLicense != ""){
        jQuery.getJSON( url, function( data ) {
            jQuery.each( data, function( index, value ) {
                if(selectedTransport != "" && selectedTransport== parseInt(value.id)){
                    items.push( "<option value='" + value.id + "' selected='selected'>" + value.desc + "</option>" );
                }
                else{
                    items.push( "<option value='" + value.id + "'>" + value.desc + "</option>" );
                }
                
            });                    
            jQuery(selectId).html(items.join(''));            
            if(selectedTransport != ""){
                jQuery(selectId).val(selectedTransport).trigger('liszt:updated');
            }
            else{
                jQuery(selectId).val('').trigger("liszt:updated");
            }
        });
    }
    else{
        jQuery(selectId).html(items.join(''));            
    }    
}