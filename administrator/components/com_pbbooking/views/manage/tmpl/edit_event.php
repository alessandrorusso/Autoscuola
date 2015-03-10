<?php 

/**
* @package		PurpleBeanie.PBBooking
* @license		GNU General Public License version 2 or later; see LICENSE.txt
* @link		http://www.purplebeanie.com
*/


?>

<script src="<?php echo JURI::root(false);?>administrator/components/com_pbbooking/scripts/pbbooking_edit_event.js"></script>
<script type="text/javascript">
	times_array = <?php echo json_encode($this->shift_times);?>;
	time_increment = <?php echo $this->config->time_increment;?>;
	time_prompt = "<?php echo JText::_('COM_PBBOOKING_SELECT_TIME');?>";
</script>
<style>
	.icon-32-view_ics {
		background:url(<?php echo JURI::root(false);?>administrator/components/com_pbbooking/images/calendar_link.png);
	}
</style>



<div class="bootstrap-wrap">


<div class="row-fluid">



	<div class="span10">

		<form class="adminForm" action="index.php" method="post" name="adminForm" id="adminForm">
			
			<fieldset>
				<?php echo JText::_('COM_PBBOOKING_EDIT_WARNING');?>
				<table>
					<tr>
						<th><label><?php echo JText::_('COM_PBBOOKING_EVENT_SUMMARY');?></label></th>
                                                <td><input type="text" name="summary" value="<?php echo $this->event->summary;?>" style="width:500px;" readonly="readonly"/></td>
					</tr>

					<tr>
						<th><label><?php echo JText::_('COM_PBBOOKING_EVENT_DESCRIPTION');?></label></th>
						<td><textarea name="description" style="width:500px;"><?php echo $this->event->description;?></textarea></td>
					</tr>

					<tr>
						<th><label><?php echo JText::_('COM_PBBOOKING_BOOKING_DATE');?></label></th>
						<td><input type="text" name="date" value="<?php echo date_create($this->event->dtstart,new DateTimeZone(PBBOOKING_TIMEZONE))->format('Y-m-d');?>" style="width:500px;" readonly="readonly"/></td>
					</tr>
					

					<tr>
						<th><label><?php echo JText::_('COM_PBBOOKING_BOOKING_TIME');?></label></th>
                                                <td><input type="text" name="treatment-time" value="<?php echo date_create($this->event->dtstart,new DateTimezone(PBBOOKING_TIMEZONE))->format('Hi');?>" style="width:500px;" readonly="readonly"/></td>
						
					</tr>

					<tr>
						<th><label><?php echo JText::_('COM_PBBOOKING_CAL_LABEL');?></label></th>
						<td><input type="text" name="cal_id" value="<?php echo $this->cal->name;?>" style="width:500px;" readonly="readonly"/></td>
                                        </tr>				
					
					
				</table>
			</fieldset>


			<input type="hidden" name="id" value="<?php echo $this->event->id;?>"/>
			<input type="hidden" name="option" value="com_pbbooking"/>
			<input type="hidden" name="controller" value="manage"/>
			<input type="hidden" name="task" value=""/>
		</form>
	</div>
</div>


</div>