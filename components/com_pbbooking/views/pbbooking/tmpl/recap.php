<?php 
	
	$doc = JFactory::getDocument();
	$doc->addStyleSheet(JURI::root(false)."components/com_pbbooking/user_view.css");
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
            var prtContent = jQuery('#pbbooking');            
            //var WinPrint = ;
            //Add these two lines 
            var titleDiv = jQuery('#title');    
            //WinPrint.document.write(titleDiv.outerHTML);
            //WinPrint.document.write(prtContent.innerHTML);
            //WinPrint.document.close();
            //WinPrint.focus();
            //WinPrint.print();
            //WinPrint.close();
            window.print();
            return false;
        });
    }
    
    window.addEvent('domready',function(){            
        printReservation();
    }); 
        
</script>
<h1 id="title">
    <?php echo JText::_('COM_PBBOOKING_USER_RECAP');?>
        <?php if($this->events) : ?>
    <img class="printer" src="<?php echo JURI::root(true);?>/administrator/components/com_pbbooking/images/printer.png" border="0" alt="Stampa Prenotazioni">
        <?php endif; ?>
</h1>
<table id="pbbooking" style="width: 100%;"> 
<?php if($this->events) : ?>
    <!-- draw table data rows -->
    <?php foreach ($this->events as $event) :?>
    <tr>
        <th style="text-align: right;"><?php echo JText::_('COM_PBBOOKING_RECAP_DATE');?></th>
        <td class="pbbooking-free-cell">                     
            <?php echo date_create($event->dtstart,new DateTimeZone(PBBOOKING_TIMEZONE))->format('d-m-Y') ;?>						
        </td>
        <th style="text-align: right;"><?php echo JText::_('COM_PBBOOKING_RECAP_HOUR');?></th>
        <td class="pbbooking-free-cell">                     
            <?php echo date_create($event->dtstart,new DateTimeZone(PBBOOKING_TIMEZONE))->format('H:i');?>   
        </td>
        
        <th style="text-align: right;"><?php echo JText::_('COM_PBBOOKING_RECAP_OFFICE');?></th>
        <td class="pbbooking-free-cell">
            <?php echo $event->office ;?>						
        </td>
        <th style="text-align: right;"><?php echo JText::_('COM_PBBOOKING_RECAP_TRANSPORT');?></th>
        <td class="pbbooking-free-cell">
            <?php echo $event->transport ;?>						
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