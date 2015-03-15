<?php 
	
	$doc = JFactory::getDocument();
	$doc->addStyleSheet(JURI::root(false)."components/com_pbbooking/user_view.css");
        $user =& JFactory::getUser();
        $userProfile = JUserHelper::getProfile($user->id);
?>

<h1><?php echo JText::_('COM_PBBOOKING_DAY_VIEW_HEADING');?></h1>

<table id="pbbooking" style="width: 100%;"> 
<?php if($this->events) : ?>
    <!-- draw table data rows -->
    <?php foreach ($this->events as $event) :?>
    <tr>
        <th style="text-align: right;">Data</th>
        <td class="pbbooking-free-cell">                     
            <?php echo date_create($event->dtstart,new DateTimeZone(PBBOOKING_TIMEZONE))->format('d-m-Y') ;?>						
        </td>
        <th style="text-align: right;">Ora</th>
        <td class="pbbooking-free-cell">                     
            <?php echo date_create($event->dtstart,new DateTimeZone(PBBOOKING_TIMEZONE))->format('H:i');?>   
        </td>
        
        <th style="text-align: right;">Sede</th>
        <td class="pbbooking-free-cell">
            <?php echo $event->office ;?>						
        </td>
        <th style="text-align: right;">Auto</th>
        <td class="pbbooking-free-cell">
            <?php echo $event->transport ;?>						
        </td>
    </tr>
    <?php endforeach;?>
    <!-- end draw table data rows-->    
<?php else : ?>
    <tr>
        <th>NON SONO PRESENTI PRENOTAZIONI</th>
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