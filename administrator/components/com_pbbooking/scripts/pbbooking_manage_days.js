//is jquery loaded?
try { if(jQuery) {
	//do stuff
} else {
	loadJquery();
} 
} catch (e) {
	loadJquery();
}
finally {
	//do nothing
}


function deleteBlock(id)
{
    console.log('delete block '+id);
    console.log($path);
    jQuery.get($path+'administrator/index.php?option=com_pbbooking&controller=manage&task=delete_block&format=raw&id='+id,function(data){
	console.log('data = '+data)
	if (data == "success") {
            jQuery('tr#pbbooking-blocked-day-id-'+id).css({'display':'none'});
	} else {
            alert('Something went wrong with the delete');
	}
    })
}


function loadJquery()
{
	var script = document.createElement('script');
	script.setAttribute('type','text/javascript');
	script.setAttribute('src','../components/com_pbbooking/scripts/jquery.js');
	head = document.getElementsByTagName('head');
	head[0].appendChild(script);
}

    function addNote() {
        jQuery('#text').removeClass("ui-state-error");
        if(jQuery('#text').val() == ""){
            jQuery('#text').addClass("ui-state-error");
            return false;
        }
        var id ='';
        if(jQuery('.post-it').length > 0){
            id =jQuery('.post-it')[0].id.substring(5);            
        }
         
        var date ="<?php echo $this->date->format('Y-m-d');?>";
        var url = 'index.php?option=com_pbbooking&controller=manage&task=add_note&noteDate='+date+'&noteText='+jQuery('#text').val()+'&nodeId='+id;
        jQuery.getJSON( url, function( data ) {
           if(jQuery('.post-it').length > 0){
               jQuery('.post-it')[0].cid='note_'+data.id;
               jQuery('.post-it')[0].text=data.text;
            }
            else{
              jQuery('p').attr('class', 'post-it').attr('id', 'note_'+data.id).text(data.text).insertBefore('.openModal');  
            }
            jQuery('.openModal')[0].text='Modifica Nota';
            jQuery('#dialog-form').dialog( "close" );
        }).fail(function() {
            alert('Errore nel salvataggio della Nota. Si prega di riprovare.'); // or whatever
        });
    }

jQuery(document).ready(function() 
{
    var width = jQuery(window).width();
    var height = jQuery(window).height();
    
    jQuery('#dialog-form').dialog({
      autoOpen: false,
      height: (height-(height*0.40)),
      width: (width-(width*0.40)),
      modal: true,
      buttons: {
        "Salva Nota": addNote,
        Cancel: function() {
          jQuery('#dialog-form').dialog( "close" );
        }
      },
      close: function() {
        jQuery('#dialog-form').find( "form" )[0].reset();        
      }
    });
        
    jQuery('#modalForm').on('submit', function( event ) {
        event.preventDefault();
        addNote();
    });
    
    jQuery('.openModal').click(function() {        
        if(jQuery('.post-it').length > 0){
            jQuery('#text').val(jQuery('.post-it').text());            
        }
        jQuery('#dialog-form').dialog('open');
    });  
    
});