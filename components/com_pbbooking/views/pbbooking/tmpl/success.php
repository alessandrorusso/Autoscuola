<?php
 
/**
* @package		PurpleBeanie.PBBooking
* @license		GNU General Public License version 2 or later; see LICENSE.txt
* @link		http://www.purplebeanie.com
*/

// No direct access
 
defined('_JEXEC') or die('Restricted access'); 

?>


<h1><?php echo ($this->config->validation == 'admin') ? Jtext::_('COM_PBBOOKING_SUCCESS_PENDING_ADMIN_VALIDATION') : JTEXT::_('COM_PBBOOKING_SUCCESS_HEADING');?></h1>
<p><?php echo ($this->config->validation == 'admin') ? JText::_('COM_PBBOOKING_SUCCESS_PENDNG_ADMIN_VALIDATION_MSG') : JTEXT::_('COM_PBBOOKING_SUCCESS_MSG');?></p>

<p><em><?php echo JTEXT::_('COM_PBBOOKING_SUCCESS_SUB_HEADING');?></em></p>

<table>
	<tr>
            <th>
                <?php echo JTEXT::_('COM_PBBOOKING_SUCCESS_DATE');?>
            </th>
            <td style="padding-left: 3px;">
                <?php echo JHtml::_('date',date_create($this->pending->dtstart,new DateTimeZone(PBBOOKING_TIMEZONE))->format(DATE_ATOM),$this->config->date_format_message);?>
            </td>
	<tr>
            <th>
                <?php echo JTEXT::_('COM_PBBOOKING_SUCCESS_TIME');?>
            </th>
            <td style="padding-left: 3px;">
                <?php $date_start = date_create($this->pending->dtstart,new DateTimeZone(PBBOOKING_TIMEZONE));
                      $date_end = date_create($this->pending->dtstart,new DateTimeZone(PBBOOKING_TIMEZONE))->modify('+ '.$this->config->time_increment.' minutes')
                ?>
                <?php echo Jhtml::_('date',$date_start->format(DATE_ATOM),JText::_('COM_PBBOOKING_SUCCESS_TIME_FORMAT')).'- '.
                Jhtml::_('date',$date_end->format(DATE_ATOM),JText::_('COM_PBBOOKING_SUCCESS_TIME_FORMAT'));?>
            </td>
        </tr>
	<tr>
            <th>
                <?php echo JTEXT::_('COM_PBBOOKING_BOOKINGTYPE');?>
            </th>
            <td style="padding-left: 3px;">
                <?php echo $this->service->name;?>
            </td>
        </tr>
	<?php if (isset($this->calendar)) {?>
		<tr><th><?php echo JTEXT::_('COM_PBBOOKING_SUCCESS_CALENDAR');?></th><td><?php echo $this->calendar->name;?></td></tr>
	<?php
	}?>                    
</table>
<div class="form-actions" style="margin-bottom: 17%;">                
    <a href="<?php echo $this->baseurl;?>" class="btn" role="button">Home</a>                
    <div class="pull-right">
        <a href="index.php/prenotazioni-online" class="btn" role="button">Nuova Prenotazione</a>
        <a href="index.php?option=com_pbbooking&task=recap" class="btn" role="button">Resoconto Prenotazioni</a>
        
    </div>
</div>