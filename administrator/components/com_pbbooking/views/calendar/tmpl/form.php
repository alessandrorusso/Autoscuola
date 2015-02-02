<?php 

/**
* @package		PurpleBeanie.PBBooking
* @version		$Id: pbbooking.php
* @license		GNU General Public License version 2 or later; see LICENSE.txt
* @link		http://www.purplebeanie.com
*/


defined('_JEXEC') or die('Restricted access'); 
	
	$days_of_week = array('sunday'=>JTEXT::_('COM_PBBOOKING_DAYS_SUNDAY'),'monday'=>JTEXT::_('COM_PBBOOKING_DAYS_MONDAY'),'tuesday'=>JTEXT::_('COM_PBBOOKING_DAYS_TUESDAY'),
						'wednesday'=>JTEXT::_('COM_PBBOOKING_DAYS_WEDNESDAY'),'thursday'=>JTEXT::_('COM_PBBOOKING_DAYS_THURSDAY'),'friday'=>JTEXT::_('COM_PBBOOKING_DAYS_FRIDAY'),
						'saturday'=>JTEXT::_('COM_PBBOOKING_DAYS_SATURDAY'));
	$just_days = array('sunday','monday','tuesday','wednesday','thursday','friday','saturday');
	
		
?>


<div class="bootstrap-wrap">

 
<form action="index.php" method="POST" name="adminForm" id="adminForm">
	<div class="row-fluid">

		<div class="span12">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#calendar-details" data-toggle="tab"><?php echo Jtext::_('COM_PBBOOKING_DETAILS');?></a></li>
				<li class=""><a href="#calendar-hours" data-toggle="tab"><?php echo JText::_('COM_PBBOOKING_CALENDAR_OVERRIDE_TRADING_TIMES');?></a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="calendar-details"> <!-- begin calendar details tab -->
			        <table class="admintable" style="width:100%;">
				   	<tr>
				            <td align="left" class="key" width="200">
				                <label>
				                    <?php echo JText::_( 'COM_PBBOOKING_CAL_NAME' ); ?>:
				                </label>
				            </td>
							<td>
				                <input class="text_area" type="text" name="name" id="name" size="64" maxlength="250" value="<?php echo $this->calendar['name'];?>" />
				            </td>
				        </tr>
                                        
                                        <tr>
				            <td align="left" class="key" width="200">
				                <label>
				                    <?php echo JText::_( 'COM_PBBOOKING_CAL_OVERRIDE_OFFICE' ); ?>:
				                </label>
				            </td>
                                            <td>
                                                <select name="office" id="office">
                                                    <option value="Colleferro" <?php if($this->calendar['office'] == 'Colleferro') echo ' selected="selected"';?>>Colleferro</option>
                                                    <option value="Paliano" <?php if($this->calendar['office'] == 'Paliano')  echo ' selected="selected"';?>>Paliano</option>
                                                    <option value="Palestrina"<?php if($this->calendar['office'] == 'Palestrina') echo ' selected="selected"';?>>Palestrina</option>
                                                </select>				                
				            </td>
				        </tr>
                                        
                                        <tr>
				            <td align="left" class="key" width="200">
				                <label>
				                    <?php echo JText::_( 'COM_PBBOOKING_CAL_OVERRIDE_TRANSPORT' ); ?>:
				                </label>
				            </td>
                                            <td>
                                                <select name="transport" id="transport">
                                                    <option value="auto1" <?php if($this->calendar['transport'] == 'auto1') echo ' selected="selected"';?>>Auto 1</option>
                                                    <option value="auto2" <?php if($this->calendar['transport'] == 'auto2') echo ' selected="selected"';?>>Auto 2</option>
                                                    <option value="auto3"<?php if($this->calendar['transport'] == 'auto3') echo ' selected="selected"';?>>Auto 3</option>
                                                    <option value="moto1" <?php if($this->calendar['transport'] == 'moto1') echo ' selected="selected"';?>>Moto 1</option>
                                                    <option value="camion1"<?php if($this->calendar['transport'] == 'camion1') echo ' selected="selected"';?>>Camion 1</option>
                                                </select>				                
				            </td>
				        </tr>

				   	<tr>
				            <td align="left" class="key">
				                <label >
				                    <?php echo JText::_( 'COM_PBBOOKING_CAL_OVERRIDE_EMAIL' ); ?>:
				                </label>
				            </td>
							<td>
				                <input type="text" name="email" id="email" size="80" value="<?php echo $this->calendar['email'];?>" />
				            </td>
				        </tr>
                                        
                                        <tr>
				            <td align="left" class="key" width="200">
				                <label>
				                    <?php echo JText::_( 'COM_PBBOOKING_CAL_OVERRIDE_STATUS' ); ?>:
				                </label>
				            </td>
                                            <td>
                                                <select name="status" id="status_cal">
                                                    <option value="0" <?php if($this->calendar['status'] == '0') echo ' selected="selected"';?>>Chiuso</option>
                                                    <option value="1" <?php if($this->calendar['status'] == '1') echo ' selected="selected"';?>>Aperto</option>                                                    
                                                </select>				                
				            </td>
				        </tr>

				    </table>	
				</div> <!-- end calendar details tab -->

				<div class="tab-pane" id="calendar-hours">
					 <table class="admintable">
						<tr>
							<td></td>
							<th><?php echo JText::_('COM_PBBOOKING_DAY_IS_OPEN');?></th>
							<th><?php echo JText::_('COM_PBBOOKING_DAY_OPENING_TIME');?></th>
							<th><?php echo JText::_('COM_PBBOOKING_DAY_CLOSING_TIME');?></th>
                                                        <th><?php echo JText::_('COM_PBBOOKING_DAY_PAUSE_TIME');?></th>
                                                        <th><?php echo JText::_('COM_PBBOOKING_DAY_PAUSE_START_TIME');?></th>
                                                        <th><?php echo JText::_('COM_PBBOOKING_DAY_PAUSE_END_TIME');?></th>
						</tr>
						<?php $i = 0;?>
						<?php foreach ($days_of_week as $day):?>
							<tr>
								<th><?php echo $day;?></th>
                                                                <td style="text-align: center; vertical-align: middle;"><input type="checkbox" name="is-open[]" value="<?php echo $i;?>" <?php echo ($this->trading_hours[$i]['status'] == 'open') ? 'checked=true' : '';?>/></td>
								<td><input type="text" name="open-time-<?php echo $i;?>" class="time-input" value="<?php echo (isset($this->trading_hours[$i]['open_time'])) ? $this->trading_hours[$i]['open_time'] : '';?>"/></td>
								<td><input type="text" name="close-time-<?php echo $i;?>" class="time-input" value="<?php echo (isset($this->trading_hours[$i]['close_time'])) ? $this->trading_hours[$i]['close_time'] : '';?>"/></td>
                                                                <td style="text-align: center; vertical-align: middle;"><input type="checkbox" name="has-pause[]" value="<?php echo $i;?>" <?php echo ($this->trading_hours[$i]['pause'] == 'yes') ? 'checked=true' : '';?>/></td>
                                                                <td><input type="text" name="pause-start-time-<?php echo $i;?>" class="time-input" value="<?php echo (isset($this->trading_hours[$i]['pause_start_time'])) ? $this->trading_hours[$i]['pause_start_time'] : '';?>"/></td>
								<td><input type="text" name="pause-end-time-<?php echo $i;?>" class="time-input" value="<?php echo (isset($this->trading_hours[$i]['pause_end_time'])) ? $this->trading_hours[$i]['pause_end_time'] : '';?>"/></td>
							</tr>
							<?php $i++;?>
						<?php endforeach;?>
			   		</table>
				</div>
			</div> <!-- uses tab-content-->
		</div> <!-- closes span10-->
	</div> <!-- closes row-fluid-->
 
<input type="hidden" name="option" value="com_pbbooking" />
<input type="hidden" name="id" value="<?php echo $this->calendar['id']; ?>" />
<input type="hidden" name="task" value="save" />
<input type="hidden" name="controller" value="calendar" />
</form>


</div>