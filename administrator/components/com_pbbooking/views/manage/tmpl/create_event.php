<?php 

/**
* @package		PurpleBeanie.PBBooking
* @license		GNU General Public License version 2 or later; see LICENSE.txt
* @link		http://www.purplebeanie.com
*/
defined('_JEXEC') or die;
JHtml::_('behavior.formvalidation');
?>

<script src="<?php echo JURI::root(false);?>administrator/components/com_pbbooking/scripts/pbbooking_create_event.js"></script>
<script type="text/javascript">
        Joomla.submitbutton = function(task)
	{       
                jQuery('#date').attr('class', 'required');
		if (document.formvalidator.isValid(document.id('event-form')))
		{
			Joomla.submitform(task, document.getElementById('event-form'));
		}
	}

	times_array = <?php echo json_encode($this->shift_times);?>;
	time_increment = <?php echo $this->config->time_increment;?>;
	time_prompt = "<?php echo JText::_('COM_PBBOOKING_SELECT_TIME');?>";
	services_array = <?php echo json_encode($this->services);?>;
</script>

<style>
	label {display:inline;}
</style>

<div class="bootstrap-wrap">


<div class="row-fluid">




	<div class="span12">                
		<form class="form-validate adminForm" action="index.php" method="post" name="adminForm" id="event-form">
                        <?php if(count($this->customfields) > 0): ?>
			<fieldset>
				<legend><?php echo JText::_('COM_PBBOOKIONG_CUSTOMFIELDS');?></legend>
				<table>
					<?php foreach ($this->customfields as $field): ?>
						<tr>
							<th><label><?php echo $field->fieldname;?></label></th>
							<td>
								<?php if ($field->fieldtype == 'text') :?>
									<input type="text" name="<?php echo $field->varname;?>" value="">
								<?php endif;?>
								<?php if ($field->fieldtype == 'radio') :?>
									<?php foreach (explode('|',$field->values) as $value) :?>
										<label class="<?php echo $field->varname;?>-label"><?php echo $value;?></label> <input type="radio" name="<?php echo $field->varname;?>" value="<?php echo $value;?>"/>
									<?php endforeach;?>
								<?php endif;?>
								<?php if ($field->fieldtype == 'select'): ?>
									<select name="<?php echo $field->varname;?>">
										<?php foreach (explode('|',$field->values) as $value) :?>
											<option value="<?php echo $value;?>"><?php echo $value;?></option>
										<?php endforeach;?>
									</select>
								<?php endif;?>
								<?php if ($field->fieldtype == 'checkbox'):?>
									<?php foreach (explode('|',$field->values) as $value) :?>
										<label class="<?php echo $field->varname;?>-label"><?php echo $value;?></label>
										<input type="checkbox" name="<?php echo $field->varname;?>[]" value="<?php echo $value;?>"/>
									<?php endforeach;?>
								<?php endif;?>
								<?php if ($field->fieldtype=='textarea') :?>
									<textarea name="<?php echo $field->varname;?>"></textarea>
								<?php endif;?>
							</td>
						</tr>
					<?php endforeach;?>		
				</table>
			</fieldset>
                        <?php endif;?>
			<fieldset>
				<legend><?php echo JText::_('COM_PBBOOKING_CREATE_SUBHEADING');?></legend>
				<table>
                                    <tr>
                                        <th><label for="treatment_id"><?php echo JText::_('COM_PBBOOKING_SERVICE_LABEL');?></label></th>
                                        <td>
                                            <select name="treatment_id" class="required">								
                                            <?php foreach ($this->services as $service) :?>
                                                <option value="<?php echo $service->id;?>"><?php echo $service->name;?></option>
                                            <?php endforeach;?>
                                            </select>
                                        </td>
                                    </tr>
                                   
                                    <tr>
                                        <th><label for="date"><?php echo JText::_('COM_PBBOOKING_BOOKING_DATE');?></label></th>
                                        <td>
                                            <?php echo JHTML::_('calendar',$this->date->format('Y-m-d'),'date','date');?>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th><label for="treatment-time"><?php echo JText::_('COM_PBBOOKING_SLOT_LABEL');?></label></th>
                                        <td>
                                            <select name="treatment-time" id="treatment-time" class="required">
                                                <?php while($this->dt_start<= $this->dt_end) :?>
                                                    <option value="<?php echo $this->dt_start->format('Hi');?>"><?php echo JHtml::_('date',$this->dt_start->format(DATE_ATOM),JText::_('COM_PBBOOKING_SUCCESS_TIME_FORMAT'));?></option>
							<?php $this->dt_start->modify('+ '.$this->config->time_increment.' minutes');?>
                                                <?php endwhile;?>
                                            </select>
                                        </td>
                                    </tr>

                                    <tr>
                                        <th><label for="cal_id"><?php echo JText::_('COM_PBBOOKING_CAL_LABEL');?></label></th>
                                        <td>
                                            <select name="cal_id" id="cal_id" class="required">
                                                <option value=""><?php echo Jtext::_('COM_PBBOOKING_CAL_DROPDOWN');?></option>
                                            <?php foreach ($this->cals as $cal) :?>
                                                <option value="<?php echo $cal->id;?>"><?php echo $cal->name;?></option>
                                            <?php endforeach;?>
                                            </select>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th><label for="calendar-user"><?php echo JText::_('COM_PBBOOKING_USER_LABEL');?></label></th>
                                        <td>
                                            <select name="calendar-user" id="calendar-user" class="required">
                                                <option value=""/><?php echo JText::_('COM_PBBOOKING_USER_DROPDOWN');?></option>								
                                            </select>
                                        </td>
                                    </tr>
				</table>
			</fieldset>


			<?php if ($this->config->consolidated_view == 1) :?>
				<input type="hidden" name="cal_id" value="<?php echo $this->outcal->id;?>"/>
			<?php endif;?>
			<input type="hidden" name="option" value="com_pbbooking"/>
			<input type="hidden" name="controller" value="manage"/>
			<input type="hidden" name="task" value=""/>
		</form>
	</div>
</div>
</div>