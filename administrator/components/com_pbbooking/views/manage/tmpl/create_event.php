<?php
/**
 * @package		PurpleBeanie.PBBooking
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @link		http://www.purplebeanie.com
 */
defined('_JEXEC') or die;
JHtml::_('behavior.formvalidation');
?>

<script src="<?php echo JURI::root(false); ?>administrator/components/com_pbbooking/scripts/pbbooking_create_event.js"></script>
<script type="text/javascript">
    Joomla.submitbutton = function (task)
    {
        jQuery('#date').attr('class', 'required');
        if (document.formvalidator.isValid(document.id('event-form')))
        {
            Joomla.submitform(task, document.getElementById('event-form'));
        }
    }

    /*times_array = <?php echo json_encode($this->shift_times); ?>;
    time_increment = <?php echo $this->config->time_increment; ?>;
    time_prompt = "<?php echo JText::_('COM_PBBOOKING_SELECT_TIME'); ?>";
    services_array = <?php echo json_encode($this->services); ?>;*/
</script>

<style>
    label {display:inline;}
</style>

<div class="bootstrap-wrap">


    <div class="row-fluid">




        <div class="span12">                
            <form class="form-validate adminForm" action="index.php" method="post" name="adminForm" id="event-form">
                <?php if (count($this->customfields) > 0): ?>
                    <fieldset>
                        <legend><?php echo JText::_('COM_PBBOOKIONG_CUSTOMFIELDS'); ?></legend>
                        <table>
                            <?php foreach ($this->customfields as $field): ?>
                                <tr>
                                    <th><label><?php echo $field->fieldname; ?></label></th>
                                    <td>
                                        <?php if ($field->fieldtype == 'text') : ?>
                                            <input type="text" name="<?php echo $field->varname; ?>" value="">
                                        <?php endif; ?>
                                        <?php if ($field->fieldtype == 'radio') : ?>
                                            <?php foreach (explode('|', $field->values) as $value) : ?>
                                                <label class="<?php echo $field->varname; ?>-label"><?php echo $value; ?></label> <input type="radio" name="<?php echo $field->varname; ?>" value="<?php echo $value; ?>"/>
                                            <?php endforeach; ?>
                                        <?php endif; ?>
                                        <?php if ($field->fieldtype == 'select'): ?>
                                            <select name="<?php echo $field->varname; ?>">
                                                <?php foreach (explode('|', $field->values) as $value) : ?>
                                                    <option value="<?php echo $value; ?>"><?php echo $value; ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        <?php endif; ?>
                                        <?php if ($field->fieldtype == 'checkbox'): ?>
                                            <?php foreach (explode('|', $field->values) as $value) : ?>
                                                <label class="<?php echo $field->varname; ?>-label"><?php echo $value; ?></label>
                                                <input type="checkbox" name="<?php echo $field->varname; ?>[]" value="<?php echo $value; ?>"/>
                                            <?php endforeach; ?>
                                        <?php endif; ?>
                                        <?php if ($field->fieldtype == 'textarea') : ?>
                                            <textarea name="<?php echo $field->varname; ?>"></textarea>
                                        <?php endif; ?>
                                    </td>
                                </tr>
                            <?php endforeach; ?>		
                        </table>
                    </fieldset>
                <?php endif; ?>
                <fieldset>
                    <legend><?php echo JText::_('COM_PBBOOKING_CREATE_SUBHEADING'); ?></legend>
                    <table>
                        <tr>
                            <td style="width:200px;"><?php echo JText::_('COM_PBBOOKING_BOOKING_DATE');?></td>
                            <td><?php echo JHtml::_('date',$this->dateparam->format(DATE_ATOM),JText::_('COM_PBBOOKING_SUCCESS_DATE_FORMAT'));?></td>
                        </tr>
                        
                        <tr>
                            <td><?php echo JText::_('COM_PBBOOKING_SUCCESS_TIME');?></td>
                            <td><?php echo JHtml::_('date',$this->dateparam->format(DATE_ATOM),JText::_('COM_PBBOOKING_SUCCESS_TIME_FORMAT'));?></td>
                        </tr>
		
                        
                        <tr>
                            <td><?php echo JText::_('COM_PBBOOKING_SUCCESS_CALENDAR');?></td>
                            <td><?php echo $this->cal->name;?></td>
                        </tr>
                        
                        <tr>
                            <td><?php echo JText::_('COM_PBBOOKING_BOOKINGTYPE');?></td>
                            <td>
				<select name="treatment_id">					
					<?php foreach($this->services as $treatment) : ?>
						<option value="<?php echo $treatment->id;?>" 
							<?php echo ($this->cal->can_book_treatment_at_time($treatment->id,$this->dateparam,$this->closing_time)) ? null : 'disabled';?>
							>
							<?php echo $treatment->name;?>
							<?php if ($this->config->show_prices) :?>
								<?php if ($this->config->currency_symbol_before) :?>
									<?php echo JText::_('COM_PBBOOKING_CURRENCYSYMBOL').$treatment->price;?>
								<?php else:?>
									<?php echo $treatment->price.JText::_('COM_PBBOOKING_CURRENCYSYMBOL');?>
								<?php endif;?>
							<?php endif;?>
						</option>
					<?php endforeach;?>
				</select>                                
                            </td>
                        </tr>
                        
                        <tr>
                            <td><?php echo JText::_('COM_PBBOOKING_USER_LABEL'); ?></label></td>
                            <td>
                                <select name="calendar-user" id="calendar-user" class="required">
                                    <option value=""/><?php echo JText::_('COM_PBBOOKING_USER_DROPDOWN'); ?></option>								
                                    <?php foreach($this->users as $user) : ?>
                                        <option value="<?php echo $user->id;?>" >
                                            <?php echo $user->username;?>
                                        </option>                                        
                                    <?php endforeach;?>                                    
                                </select>
                            </td>
                        </tr>
                    </table>
                </fieldset>


                <?php if ($this->config->consolidated_view == 1) : ?>
                    <input type="hidden" name="cal_id" value="<?php echo $this->outcal->id; ?>"/>
                <?php endif; ?>
                <input type="hidden" name="cal_id" id="text-cal-id" value="<?php echo $this->cal->cal_id;?>"/> 
                <input type="hidden" name="date" value="<?php echo $this->dateparam->format('Ymd');?>"/>
                <input type="hidden" name="treatment-time" value="<?php echo $this->dateparam->format('Hi');?>"/>
                <input type="hidden" name="option" value="com_pbbooking"/>
                <input type="hidden" name="controller" value="manage"/>
                <input type="hidden" name="task" value=""/>
            </form>
        </div>
    </div>
</div>