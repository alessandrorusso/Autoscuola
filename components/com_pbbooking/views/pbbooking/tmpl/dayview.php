<?php 
	
	$doc = JFactory::getDocument();
	$doc->addStyleSheet(JURI::root(false)."components/com_pbbooking/user_view.css");
        $user = JFactory::getUser();
        $userProfile = JUserHelper::getProfile($user->id);
?>


<h1><?php echo JText::_('COM_PBBOOKING_DAY_VIEW_HEADING').' '.Jhtml::_('date',$this->dateparam->format(DATE_ATOM),JText::_('COM_PBBOOKING_DAY_VIEW_DATE_FORMAT'));?></h1>
<div class="calendar-window">
<table id="pbbooking">
<!-- Draw header row showing calendars across the top....-->
	<tr>
		<th></th> <!-- first column left blank to display time slots -->
		<?php foreach ($this->cals as $cal) :?>
                <th><?php echo $cal->name;?></th>
		<?php endforeach;?>
	</tr>


	<!-- draw table data rows -->

	<?php while ($this->day_dt_start <= $this->dt_last_slot) :?>
		<?php $slot_end = date_create($this->day_dt_start->format(DATE_ATOM),new DateTimezone(PBBOOKING_TIMEZONE));?>
		<?php $slot_end->modify('+ '.$this->config->time_increment.' minutes');?>
		<tr>
			<th><?php echo Jhtml::_('date',$this->day_dt_start->format(DATE_ATOM),JText::_('COM_PBBOOKING_SUCCESS_TIME_FORMAT'));?></th>
			<?php foreach ($this->cals as $cal) :?>
                                <?php $event = $cal->is_free_from_to($this->day_dt_start,$slot_end);?>
                                <?php $open = $cal->isOpen($this->day_dt_start);?>
                        <td class="pbbooking-<?php echo ($open  && is_bool($open) && !$event) ? 'free' : 'busy';?>-cell">
                        <?php if ($this->day_dt_start>date_create("now",new DateTimeZone(PBBOOKING_TIMEZONE)) && ($open  && is_bool($open) && !$event)) :?>
                            <a href="<?php echo JRoute::_('index.php?option=com_pbbooking&task=create&dtstart='.$this->day_dt_start->format('YmdHi').'&cal_id='.$cal->cal_id);?>">
                                <?php echo ($open  && is_bool($open) && !$event) ? JText::_('COM_PBBOOKING_FREE') : JText::_('COM_PBBOOKING_BUSY');?>
                            </a>
                            <?php else :?>
                                <?php echo JText::_('COM_PBBOOKING_BUSY');?>
                            <?php endif;?>
                        </td>                            	
			<?php endforeach;?>
		</tr>
		<?php $this->day_dt_start->modify('+ '.$this->config->time_increment.' minutes');?>
	<?php endwhile;?>

	<!-- end draw table data rows-->

</table>
    <div class="form-actions">        
        <a href="index.php/prenotazioni-online" class="btn" role="button">Indietro</a>                
    </div>
</div>