<?php 

/**
* @package		PurpleBeanie.PBBooking
* @version		$Id: pbbooking.php
* @license		GNU General Public License version 2 or later; see LICENSE.txt
* @link		http://www.purplebeanie.com
*/

defined('_JEXEC') or die('Restricted access'); 

?>
<link rel="stylesheet" type="text/css" href="<?php echo JURI::root(false); ?>administrator/components/com_pbbooking/css/jquery.dataTables.css">
<link href="<?php echo JURI::root(false);?>administrator/components/com_pbbooking/css/jquery-ui.css" rel="stylesheet" type="text/css">
<script src="<?php echo JURI::root(false);?>administrator/components/com_pbbooking/scripts/jquery-ui.min.js"></script>

<script src="<?php echo JURI::root(true);?>/media/jui/js/jquery.print.js"></script>
<script src="<?php echo JURI::root(false); ?>administrator/components/com_pbbooking/scripts/jquery.dataTables.min.js"></script>
<script>    
    dataSet = <?php echo json_encode($this->users); ?>;
    window.addEvent('domready',function(){    
         var width = jQuery(window).width();
         var height = jQuery(window).height();
        jQuery('#dialog-form').dialog({
            autoOpen: false,
            height: (height-(height*0.40)),
            width: (width-(width*0.40)),
            modal: true            
        });
        
        var table = jQuery('#userTable').DataTable({
            "data": dataSet,
            "bPaginate": true,
            "bLengthChange": false,
            "bFilter":true,
            "bSort": true,
            "iDisplayLength" : 10,
            "columnDefs": [ {
            "targets": -1,
            "defaultContent": "<a class =\"reservation-list\"><img src=\"components/com_pbbooking/images/calendar_link.png\"/></a>"
            }        
        ]
        });
        var recapTable = jQuery('#recapTable').dataTable();
        jQuery('#userTable').on( 'click', 'tr', function () {
            var userId = table.row( this ).data()[0];
            jQuery.get( "index.php?option=com_pbbooking&task=recap&controller=report"+"&userId="+userId, function( data ) {
                var userRecap = JSON.parse(data);
                recapTable.fnClearTable();
                recapTable.fnAddData(userRecap);            
                jQuery('#dialog-form').dialog('open');
            });            
        });
        
        
    });
</script>
<div class="bootstrap-wrap">
    <div class="tab-pane" id="block-dates"> <!-- begin block dates pane -->
        <div class="row-fluid">
            <div class="span12">
                <table id="userTable" class="adminlist display" style="width:100%;" class="table-striped">
                    <thead>
                        <tr>	
                            <th align="left">ID</th>
                            <th align="left">NOME COGNOME</th>                                            
                            <th align="left">PATENTE</th>
                            <th align="left">SEDE</th>   
                            <th align="left">RIEPILOGO</th>
                        </tr>
                    </thead>                                                      
                </table>
            </div>
        </div>
    </div>
</div>
<div id="dialog-form" title="Riepilogo Prenotazioni">
   <table id="recapTable" class="adminlist display" style="width:100%;" class="table-striped">
                    <thead>
                        <tr>
                            <th align="left">DATA</th>
                            <th align="left">ORA</th>                            
                            <th align="left">SEDE</th>
                            <th align="left">VEICOLO</th>
                        </tr>
                    </thead>                                                      
                </table>
</div>