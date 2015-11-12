<?php 
        
        $version = new JVersion;
        JHTML::_('behavior.modal');
        
        //draw current month - get some relevant dates for drawing
	$this->dateparamArr = date_parse(date_format($this->date,"Y-m-d"));

        $bom = date_create(sprintf("%s-%s-%s 00:00",$this->dateparamArr["year"],$this->dateparamArr['month'],"1"),new DateTimeZone(PBBOOKING_TIMEZONE));
	$eom = date_create($bom->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
        $curr_day = date_create($bom->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
        
	$eom->modify("+1 month");
	$eom->modify("-1 day");
	$num_days = $eom->format("j")-1;
		
	$next_month = date_create($bom->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
	$next_month->modify("+1 month");
	
	$last_month = date_create($bom->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
	$last_month->modify("-1 month");
              
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
            jQuery('<br><br><span>NOTA: </span><br>').appendTo('#hide-note');
            jQuery('.post-it').clone().appendTo('#hide-note');
            jQuery('.hide-summary').toggle();
            jQuery('.diary-table').print(); 
            jQuery('#hide-note').empty();
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
            var deleteUrl = encodeURI('<?php echo JURI::root(false);?>'+'administrator/index.php?option=com_pbbooking&controller=manage&task=delete_note&noteId='+data.id+'&noteDate='+date);
            jQuery('#delButt').show();
            jQuery('#modButt').show();
            jQuery('#addButt').hide();
            if(jQuery('.post-it').length > 0){               
               jQuery('.post-it').html(data.text);
            }
            else{
              jQuery('p').attr('class', 'post-it').attr('id', 'note_'+data.id).text(data.text).insertBefore('#delButt');  
            }            
            jQuery('#delButt').attr('href', deleteUrl)
            jQuery('#dialog-form').dialog( "close" );
        }).fail(function() {
            alert('Errore nel salvataggio della Nota. Si prega di riprovare.'); // or whatever
        });
    }
    
    jQuery('#office_select').on('change', function( event ) {
        var selectedOffice = jQuery('#office_select').val();
        var date ="<?php echo $this->date->format('Y-m-d');?>";
        var url = '<?php echo JURI::root(false);?>administrator/index.php?option=com_pbbooking&controller=manage&task=display&date='+date+'&selectedOffice='+selectedOffice;
        window.location.href =url;
        
    });
    
    
    
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
                        <a href="<?php echo JURI::root(false);?>administrator/index.php?option=com_pbbooking&controller=manage&task=display&date=<?php echo $last_month->format('Y-m-d');?>&selectedOffice=<?php echo $this->selectedOffice ;?>">
                            <<
                        </a>
                    </th>
                    <th colspan=3><?php echo JHtml::_('date',$bom->format(DATE_ATOM),'F');?></th>
                    <th colspan=2>
			<a href="<?php echo JURI::root(false);?>administrator/index.php?option=com_pbbooking&controller=manage&task=display&date=<?php echo $next_month->format('Y-m-d');?>&selectedOffice=<?php echo $this->selectedOffice ;?>">
                            >>
			</a>
                    </th>
                </tr>
                <tr>
                    <!-- begin header row-->
                    <?php $bow = date_create('last Sunday',new DateTimeZone(PBBOOKING_TIMEZONE));?>
			<?php for ($i=0;$i<$this->config->calendar_start_day;$i++) :?>
				<?php $bow->modify('+1 day');?>
			<?php endfor;?>
			
			<?php $eow = clone $bow;?>
			<?php $eow->modify('+6 days');?>
			
			<?php for ($i=0;$i<=6;$i++) :?>
				<th><?php echo Jhtml::_('date',$bow->format(DATE_ATOM),'D');?></th>
				<?php $bow->modify("+1 day");?>	
			<?php endfor;?>
                    <!-- end header row-->
                </tr>
                <tr>
                    <!-- calc cal padding -->
                    <?php if ($curr_day->format('w') < $this->config->calendar_start_day) :?>
			<?php for ($i=0;$i< 7 - ($this->config->calendar_start_day-$curr_day->format('w'));$i++) :?>
                            <td></td>
                        <?php endfor;?>
                    <?php endif;?>
			
                    <?php if ($curr_day->format('w') > $this->config->calendar_start_day) :?>
                        <?php for ($i=0;$i<($curr_day->format('w') - $this->config->calendar_start_day);$i++) :?>
                            <td></td>
                        <?php endfor;?>
                    <?php endif;?>
                    <!-- end cal padding -->
                    <?php for ($i=0;$i<=$num_days;$i++) :?>                        
                         <td
                            <?php $class = "";?>
                            
                            <?php if ($curr_day->format("z") == $this->date->format("z")) :?>
                                <?php $class .= "selected-date";?>
                            <?php endif;?>
                            <?php $isReserved = Pbbookinghelper::booking_for_day($curr_day, $this->events);?>
                            <?php $class .= ($isReserved) ? 'bookings' : '';?>
                            <?php echo ($class !="") ? 'class = "'.$class.'"' : "";?>>	
                            <a href="<?php echo JURI::root(false);?>administrator/index.php?option=com_pbbooking&controller=manage&task=display&date=<?php echo $curr_day->format('Y-m-d');?>&selectedOffice=<?php echo $this->selectedOffice ;?>">
                                    <?php echo JHtml::_('date',$curr_day->format(DATE_ATOM),'j');?></a>
                        </td>
                        
                        <!-- break if needed -->
                        <?php if (($curr_day->format('w') == $eow->format('w'))) :?>
                            </tr><tr>
                        <?php endif;?>
                        <!-- finish line break -->		    	
                        <?php $curr_day->modify("+1 day");?>
                    <?php endfor;?>
                </tr>	
		</table>
            <div style="margin-top: 15px;" id="noteContainer">                
                <?php if ($this->day_notes):?>
                    <?php foreach ($this->day_notes as $day_note) :?>                
                        <?php if ($day_note->date == $this->date->format('Y-m-d')):?>
                            <?php $addNote = false; ?>
                                <p id="note_<?php echo $day_note->id; ?>" class="post-it"><?php echo $day_note->text; ?></p>
                                <div class="row-fluid">
                                    <a id="delButt" style="display: block;" class="btn btn-small span4" href="<?php echo JURI::root(false);?>administrator/index.php?option=com_pbbooking&controller=manage&task=delete_note&noteId=<?php echo $day_note->id;?>&noteDate=&noteDate=<?php echo $day_note->date;?>" >Cancella nota</a>
                                    <a id="modButt" style="display: block;" class="openModal btn btn-small span4" href="#">Modifica nota</a> 
                                    <a id="addButt" style="display: none;" class="openModal btn btn-small span4" href="#">Aggiungi nota</a>
                                </div>
                        <?php endif;?>
                    <?php endforeach;?>			
                <?php endif;?>            
		<?php if ($addNote) :?>
                                <div class="row-fluid">
                                    <a id="delButt" style="display: none;" class="btn btn-small span4" href="#">Cancella nota</a>
                                    <a id="modButt" style="display: none;" class="openModal btn btn-small span4" href="#">Modifica nota</a> 
                                    <a id="addButt" style="display: block;" class="openModal btn btn-small span4" href="#">Aggiungi nota</a>                            
                                </div>
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
