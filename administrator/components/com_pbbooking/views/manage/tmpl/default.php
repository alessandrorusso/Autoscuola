<?php 

	/**
	* @package		PurpleBeanie.PBBooking
	* @license		GNU General Public License version 2 or later; see LICENSE.txt
	* @link		http://www.purplebeanie.com
	*/

	$bom = date_create($this->date->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
	$bom->setDate($this->date->format('Y'),$this->date->format('m'),1);

	$start_selected_day = date_create($this->date->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
	$end_selected_day = clone $this->date;	
	$eom = date_create($bom->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
	$curr_day = date_create($bom->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
	$prev_month = date_create($bom->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));

	$eom->modify('+1 month');
	$prev_month->modify('-1 day');

	$start_selected_day->setTime(0,0,0);
	$end_selected_day->setTime(23,59,59);
        
        //Calendario in italiano (parte dal lunedì)
        $m = $this->date->format('m');
        $y = $this->date->format('Y');
        $cols = 7;
        $days = date("t",mktime(0, 0, 0, $m, 1, $y)); 
        $lunedi= date("w",mktime(0, 0, 0, $m, 1, $y));
        if($lunedi==0) $lunedi = 7;
	//FINE Calendario in italiano (parte dal lunedì)
	$version = new JVersion;
        JHTML::_('behavior.modal');
        
        $addNote = true ;
               
        
?>

<style>

table.calendar-table {
        border-style: solid;
        border-width: 1px;
        border-color: black;
	border-collapse:collapse;
}


table.calendar-table tr,td,th{        
        border-style: solid;
        border-width: 1px;	    
        border-color: black;
	padding: 5px;
	width:45px;
	height:45px;
	text-align:center;
	font-size:13px;
}

td.selected-date {
	background-color:yellow;
}

table.diary-table {
	width:100%;
        border-style: solid;
        border-width: 1px;
        border-color: black;
	border-collapse: collapse;
}

td.bookings {
	background-color:green;
	color:white;
}

td.bookings a {
	color:white;
}

.icon-32-printer {
	background:url('components/com_pbbooking/images/printer.png');
}

td.busy-cell {
    background-color:red;
    color:white;
}


</style>
<link href="<?php echo JURI::root(false);?>administrator/components/com_pbbooking/css/jquery-ui.css" rel="stylesheet" type="text/css">
<script src="<?php echo JURI::root(false);?>administrator/components/com_pbbooking/scripts/jquery-ui.min.js"></script>
<script src="<?php echo JURI::root(false);?>administrator/components/com_pbbooking/scripts/pbbooking_manage_days.js"></script>
<script src="<?php echo JURI::root(true);?>/media/jui/js/jquery.print.js"></script>


<script type="text/javascript">
function printReservation() {
        
        jQuery('.printer').click(function(event){
            jQuery('.hide-summary').toggle();
            jQuery('.diary-table').print();            
            jQuery('.hide-summary').toggle();
        });
        
    }    
    
jQuery(document).ready(function() 
{
    printReservation();
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
    
    function addNote() {
        jQuery('#text').removeClass("ui-state-error");
        if(jQuery('#text').val() == ""){
            jQuery('#text').addClass("ui-state-error");
            return false;
        }
        var id ='';
        if(jQuery('.post-it').length > 0){
            id =jQuery('.post-it').attr('id').substring(5);            
        }
         
        var date ="<?php echo $this->date->format('Y-m-d');?>";
        var url = 'index.php?option=com_pbbooking&controller=manage&task=add_note&noteDate='+date+'&noteText='+jQuery('#text').val()+'&noteId='+id;
        jQuery.getJSON( url, function( data ) {
            
           if(jQuery('.post-it').length > 0){               
               jQuery('.post-it').html(data.text);
            }
            else{
              jQuery('p').attr('class', 'post-it').attr('id', 'note_'+data.id).text(data.text).insertBefore('.openModal');  
            }
            jQuery('.openModal:eq(0)').html('Modifica Nota');
            jQuery('#dialog-form').dialog( "close" );
        }).fail(function() {
            alert('Errore nel salvataggio della Nota. Si prega di riprovare.'); // or whatever
        });
    }
    
});
</script>
<div id="dialog-form" title="Inserisci Nota">
    <form id="modalForm" class="adminForm">
    <fieldset>
      <label for="text">Testo Nota</label>
      <textarea name="text" rows="8" id="text" class="text ui-widget-content ui-corner-all" style="width: 98%;"></textarea> 
      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
  </form>
</div>
<div class="bootstrap-wrap">
    <div class="row-fluid">
        <div class="span4 no-print">
            <table class="calendar-table">
                <tr>
                    <th colspan=2>
                        <a href="<?php echo JURI::root(false);?>administrator/index.php?option=com_pbbooking&controller=manage&task=display&date=<?php echo $prev_month->format('Y-m-d');?>">
                            <<
                        </a>
                    </th>
                    <th colspan=3><?php echo JHtml::_('date',$bom->format(DATE_ATOM),'F');?></th>
                    <th colspan=2>
			<a href="<?php echo JURI::root(false);?>administrator/index.php?option=com_pbbooking&controller=manage&task=display&date=<?php echo $eom->format('Y-m-d');?>">
                            >>
			</a>
                    </th>
                </tr>
			<tr>	
                                <th><?php echo Jtext::_('COM_PBBOOKING_MONDAY_ABBR');?></th>
				<th><?php echo Jtext::_('COM_PBBOOKING_TUESDAY_ABBR');?></th>
				<th><?php echo Jtext::_('COM_PBBOOKING_WEDNESDAY_ABBR');?></th>
				<th><?php echo Jtext::_('COM_PBBOOKING_THURSDAY_ABBR');?></th>
				<th><?php echo Jtext::_('COM_PBBOOKING_FRIDAY_ABBR');?></th>
				<th><?php echo Jtext::_('COM_PBBOOKING_SATURDAY_ABBR');?></th>                                
                                <th><?php echo Jtext::_('COM_PBBOOKING_SUNDAY_ABBR');?></th>
			</tr>
			<!-- draw date rows -->
			<?php for($j = 1; $j<$days+$lunedi; $j++): ?>
                            <?php if($j%$cols+1==0) :?>
                            <tr>
                            <?php endif;?>                                    
                            <?php if($j<$lunedi) :?>
                                <td> </td>
                            <?php else:?>
                                <?php 
                                    $day= $j-($lunedi-1);
                                    $data = strtotime(date($y."-".$m."-".$day));
                                    $oggi = strtotime(date("Y-m-d"));
                                ?>
                                <?php if($data != $oggi) :?>
                                <td <?php echo (PbbookingHelper::booking_for_day($curr_day)) ? 'class="bookings"' : '';?>>                                                               
                                <?php else:?>
                                    <td class="selected-date">
                                <?php endif;?>
                                <a href="<?php echo JURI::root(false);?>administrator/index.php?option=com_pbbooking&controller=manage&task=display&date=<?php echo $curr_day->format('Y-m-d');?>">
                                            <?php echo JHtml::_('date',$curr_day->format(DATE_ATOM),$this->config->date_format_cell);?></a>
                                                </td>        
                            <?php endif;?>
                            <?php if($j%$cols==0) :?>
                                </tr>
                            <?php endif;?> 
                            <?php $curr_day->modify('+1 day');?>
                        <?php endfor;?>
                        <!-- calc padding -->                                
			<!-- end draw date rows -->
		
		</table>
            <div style="margin-top: 15px;" id="noteContainer">                
                <?php if ($this->day_notes):?>
                    <?php foreach ($this->day_notes as $day_note) :?>                
                        <?php if ($day_note->date == $this->date->format('Y-m-d')):?>
                            <?php $addNote = false; ?>
                            <p id="note_<?php echo $day_note->id; ?>" class="post-it"><?php echo $day_note->text; ?></p>
                            <a href="#" class="openModal">Modifica nota</a>                                                    
                        <?php endif;?>
                    <?php endforeach;?>			
                <?php endif;?>            
		<?php if ($addNote) :?>
                            <a href="#" class="openModal">Aggiungi nota</a>
		<?php endif;?>
            </div>
	</div>       

	<div class="span8">
		
		<?php if ($this->config->use_freeflow == 1 ):?>
			<?php include_once('default_freeflow_calendar.php');?>
		<?php else:?>
			<?php include_once('default_slot_based_calendar.php');?>
		<?php endif;?>

	</div>

	<form action="index.php" method="get" name="adminForm" id="adminForm"/>
	<input type="hidden" name="option" value="com_pbbooking"/>
	<input type="hidden" name="controller" value="manage"/>
	<input type="hidden" name="task" value=""/>
	<input type="hidden" name="date" value="<?php echo $this->date->format('Y-m-d');?>"/>
	</form>

</div>

</div>