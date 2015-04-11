<?php 
	
	$doc = JFactory::getDocument();
	$doc->addStyleSheet(JURI::root(false)."components/com_pbbooking/user_view.css");
        $doc->addScript(JURI::root(true).'/media/jui/js/jquery.print.js');
        $user =& JFactory::getUser();
        $userProfile = JUserHelper::getProfile($user->id);
?>
<style>
img.printer {
        width: 30px;
        height: 30px;
        float: right;        
}    
</style>
<script type="text/javascript">
    
    function printReservation() {
        jQuery('.printer').click(function(event){
            jQuery('#component').print();            
        });
    }
    
    function deleteReservation() {
        jQuery('.delete-reservation').click(function(event){
           event.preventDefault(); 
           if(confirm('Sei sicuro di voler cancellare la prenotazione?')){
               window.location = jQuery(this).attr('href');
           }
           return false;
        });
    }
    
    window.addEvent('domready',function(){            
        printReservation();
        deleteReservation();
    }); 
        
</script>
<h1 id="title">
    <?php echo JText::_('COM_PBBOOKING_USER_RECAP');?>
        <?php if($this->events) : ?>
    <img class="printer no-print" src="<?php echo JURI::root(true);?>/administrator/components/com_pbbooking/images/printer.png" border="0" alt="Stampa Prenotazioni">
        <?php endif; ?>
</h1>
<table id="pbbooking" style="width: 100%;"> 
<?php if($this->events) : ?>
    <tr>
        <th><?php echo JText::_('COM_PBBOOKING_RECAP_DATE');?></th>
        <th><?php echo JText::_('COM_PBBOOKING_RECAP_HOUR');?></th>
        <th><?php echo JText::_('COM_PBBOOKING_RECAP_OFFICE');?></th>
        <th><?php echo JText::_('COM_PBBOOKING_RECAP_TRANSPORT');?></th>
        <th class="no-print"><?php echo JText::_('COM_PBBOOKING_RECAP_DELETE');?></th>
    </tr>
    <!-- draw table data rows -->
    <?php foreach ($this->events as $event) :?>
    <tr>
        <td class="pbbooking-free-cell">                     
            <?php echo date_create($event->dtstart,new DateTimeZone(PBBOOKING_TIMEZONE))->format('d-m-Y') ;?>						
        </td>
        
        <td class="pbbooking-free-cell">                     
            <?php echo date_create($event->dtstart,new DateTimeZone(PBBOOKING_TIMEZONE))->format('H:i');?>   
        </td>
        
        <td class="pbbooking-free-cell">
            <?php echo $event->office ;?>						
        </td>
        
        <td class="pbbooking-free-cell">
            <?php echo $event->transport ;?>						
        </td>
        <td class="pbbooking-free-cell no-print">            
            <a class="delete-reservation" href="<?php echo JRoute::_('index.php?option=com_pbbooking&task=deleteReservation&eventId='.$event->id);?>">
                <img src="<?php echo JURI::root(true);?>/administrator/components/com_pbbooking/images/delete.png" alt="Cancella Prenotazione">
            </a>
            
        </td>
        
    </tr>
    <?php endforeach;?>
    <!-- end draw table data rows-->    
<?php else : ?>
    <tr>
        <th><?php echo JText::_('COM_PBBOOKING_NO_USER_RESERVATION');?></th>
    </tr>            
<?php endif; ?>
</table>
<?php if(!$this->events || ($this->events && sizeof($this->events)<10)) : ?>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
<?php endif; ?>