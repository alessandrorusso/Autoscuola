<?php 

/**
* @package		PurpleBeanie.PBBooking
* @license		GNU General Public License version 2 or later; see LICENSE.txt
* @link		http://www.purplebeanie.com
*/

?>
<div class="diary-table">
<table>

	<tr>
            <th>
                <img class="printer no-print" src="<?php echo JURI::root(true);?>/administrator/components/com_pbbooking/images/printer.png" border="0" alt="Stampa Prenotazioni">        
            </th>
            <th colspan = "<?php echo count($this->cals);?>"><?php echo JHtml::_('date',$this->date->format(DATE_ATOM),'d F Y');?></th>
	</tr>
	<tr>
		<th></th>
		<?php foreach ($this->cals as $cal):?>
                <th style="background-color: <?php echo $cal->color;?>"><?php echo $cal->name;?></th>
		<?php endforeach;?>
	</tr>


	<!-- build table content-->
	<?php while($this->dt_start<=$this->dt_end) :?>
		<?php $dt_slot_end = date_create($this->dt_start->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));?>
		<?php $dt_slot_end->modify('+ '.$this->config->time_increment.' minutes');?>
		<tr>
			<th><?php echo Jhtml::_('date',$this->dt_start->format(DATE_ATOM),JText::_('COM_PBBOOKING_SUCCESS_TIME_FORMAT'));?></th>
			<?php foreach ($this->cal_objs as $key => $cal) :?>                        
					<?php $event = $cal->is_free_from_to($this->dt_start,$dt_slot_end,true);?>
                                        <?php $open = $cal->isOpen($this->dt_start);?>
                                        <?php if ($open  && is_bool($open) && !$event) :?>
                                        <td style="background-color: <?php echo $cal->color;?>">
                                            <a class="no-print" href="<?php echo JURI::root(false);?>administrator/index.php?option=com_pbbooking&controller=manage&task=create&cal_id=<?php echo $key;?>&dtstart=<?php echo $this->dt_start->format('YmdHi');?>">
						<?php echo JText::_('COM_PBBOOKING_FREE'); ?>
                                            </a>
                                        </td>    
					<?php elseif (!is_bool($open)) :?>                                        
                                        <td class="busy-cell">
                                            <a class="no-print" style="font-weight:bold; color: white;" href="<?php echo JURI::root(false);?>administrator/index.php?option=com_pbbooking&controller=manage&task=delete_block&cal_id=<?php echo $key;?>&dtstart=<?php echo $this->dt_start->format('YmdHi');?>">
						<?php echo $open; ?>
                                            </a>
                                            <span class="hide-summary" style="display:none; font-weight:bold;">
                                                <?php echo $open; ?>
                                            </span>
                                        </td>
                                        
                                        <?php elseif ($event && is_bool($event)!=true) :?>
                                        <td style="background-color: <?php echo $cal->color;?>">
                                            <a class="no-print" style="font-weight:bold; color: black;" href="<?php echo JURI::root(false);?>administrator/index.php?option=com_pbbooking&controller=manage&task=edit&id=<?php echo $event->id;?>">
						<?php echo $event->admin_summary();?>	
                                            </a>
                                            <span class="hide-summary" style="display:none; font-weight:bold;">
                                                <?php echo $event->admin_summary();?>
                                            </span>
                                        </td>
					<?php endif;?>			
			<?php endforeach;?>
		</tr>
		<?php $this->dt_start->modify('+ '.$this->config->time_increment.' minutes');?>
	<!-- end table content-->

	<?php endwhile;?>        
</table>
<span id="hide-note" class="hide-summary" style="display:none;"></span>

</div>