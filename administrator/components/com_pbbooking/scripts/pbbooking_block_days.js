window.addEvent('domready',function(){    
    /*var table = jQuery('#blockedDayTable').dataTable({
	"bProcessing": true,
	"bServerSide": true,
        "bPaginate": true,
        "bLengthChange": false,
        "bFilter":false,
        "bSort": false,
        "iDisplayLength" : 2,               
	"sAjaxSource": "index.php?option=com_pbbooking&task=reloadBlockdays&controller=manage",
        "columnDefs": [ {
            "targets": -1,
            "data": null,
            "defaultContent": "<a class =\"delete-reservation\"><img src=\"components/com_pbbooking/images/delete.png\"/></a>"
            }        
        ]
    });*/
    var table = jQuery('#blockedDayTable').dataTable({
        "data": dataSet,
        "bPaginate": true,
        "bLengthChange": false,
        "bFilter":true,
        "bSort": false,
        "iDisplayLength" : 5,        
        "columnDefs": [ {
            "targets": -1,            
            "defaultContent": "<a class =\"delete-reservation\"><img src=\"components/com_pbbooking/images/delete.png\"/></a>"
            }        
        ]
        
    });
    
    jQuery('#blockedDayTable tbody').on( 'click', 'a', function () {
        var data = jQuery(this).parents('tr').find('td:nth-last-child(2)').text();        
        window.location.href = 'index.php?option=com_pbbooking&controller=manage&task=delete_blocked_day&id='+data;        
    } );
    
    jQuery('#frequency').attr('disabled', true);
    jQuery('#recur_end').attr('disabled', true);
    
    jQuery('#reccur').change(function(){
        if(jQuery('#reccur').attr('checked')){
            jQuery('#frequency').attr('disabled', false);
            jQuery('#recur_end').attr('disabled', false);
        }
        else{
            jQuery('#frequency').attr('disabled', true);
            jQuery('#recur_end').attr('disabled', true);
            jQuery('.check-day').hide();            
        }
    });
    
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
    
    jQuery('#frequency').change(function(){
        if(jQuery('#frequency').val() == 'custom'){
            jQuery('.check-day').show();
        }
        else{
            jQuery('.check-day').hide();
        }
    });
        
    $('adminForm').addEvent('submit',function(){
        jQuery('#block-end-date').val(jQuery('#block-from-date').val());
        if(jQuery('#block-slot').val() != ''){
            fillBlockSlot();
        }            
        if((jQuery('#block-start-hour').val()== null || jQuery('#block-start-hour').val()=='') || 
           (jQuery('#block-end-hour').val()== null || jQuery('#block-end-hour').val()== '')){
                jQuery('#block-start-hour').val('0900');
                jQuery('#block-end-hour').val('2000');
        }

        //loop through all the time inputs and replace the colons...
        $$('.time-input').each(function(el,index){
            el.setProperty('value',el.getProperty('value').replace(/\:/,''));
        });        
    });
});

function fillBlockSlot(){
    var block_hour_arr = jQuery('#block-slot').val().split('-');
    var block_start_hour = block_hour_arr[0];
    var block_end_hour = block_hour_arr[1];
    jQuery('#block-start-hour').val(block_start_hour);
    jQuery('#block-end-hour').val(block_end_hour);
    jQuery('#block-start-hour').attr('readonly', true); 
    jQuery('#block-end-hour').attr('readonly', true); 
}


