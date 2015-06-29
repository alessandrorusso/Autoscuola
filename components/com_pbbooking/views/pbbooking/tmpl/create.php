<?php 
	
	$doc = JFactory::getDocument();
	$doc->addStyleSheet(JURI::root(false)."components/com_pbbooking/user_view.css");

	//push in mootools.
	Jhtml::_('behavior.framework');
	Jhtml::_('behavior.framework','more');
        
        $user = JFactory::getUser();
        $userProfile = JUserHelper::getProfile($user->id);
?>

<link rel="stylesheet" href="<?php echo JURI::root(false);?>components/com_pbbooking/user_view.css" type="text/css"/>

<script>
	customfields = <?php echo json_encode($this->customfields);?>;
	error_msg_service = "<?php echo JText::_('COM_PBBOOKING_ERROR_MSG_NO_SERVICE');?>";
</script>

<script src="<?php echo JURI::root(false);?>/components/com_pbbooking/scripts/com_pbbooking_create.js"></script>

<form action="<?php echo JRoute::_('index.php?option=com_pbbooking&task=save');?>" method="POST" id = "pbbooking-reservation-form">

	<h2><?php echo JText::_('COM_PBBOOKING_YOURDETAILS');?></h2>
	
	
	<!-- begin render custom fields -->
	<table class="pbbooking-data-table">
            <tr>
                <td style="width:200px;">Nome</td>
                <td><?php echo $user->username; ?></td>
            </tr>
            <tr>
                <td>Telefono</td>
                <td><?php echo $userProfile->profileautoscuola['phone']; ?></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><?php echo $user->email; ?></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
            </tr>
	<?php foreach($this->customfields as $customfield) : ?>
		<tr>
			<td><?php echo $customfield->fieldname;?></td>
			<td>
				<?php if ($customfield->fieldtype == 'text') :?>
					<input type="text" name="<?php echo $customfield->varname;?>" value="" id="<?php echo $customfield->varname;?>">
				<?php endif;?>
				<?php if ($customfield->fieldtype == 'radio') :?>
					<?php foreach (explode('|',$customfield->values) as $value) :?>
						<label class="<?php echo $customfield->varname;?>-label"><?php echo $value;?></label> <input type="radio" name="<?php echo $customfield->varname;?>" value="<?php echo $value;?>" id="<?php echo $customfield->varname;?>"/>
					<?php endforeach;?>
				<?php endif;?>
				<?php if ($customfield->fieldtype == 'select'): ?>
					<select name="<?php echo $customfield->varname;?>" id="<?php echo $customfield->varname;?>">
						<?php foreach (explode('|',$customfield->values) as $value) :?>
							<option value="<?php echo $value;?>"><?php echo $value;?></option>
						<?php endforeach;?>
					</select>
				<?php endif;?>
				<?php if ($customfield->fieldtype == 'checkbox'):?>
					<?php foreach (explode('|',$customfield->values) as $value) :?>
						<label class="<?php echo $customfield->varname;?>-label"><?php echo $value;?></label>
						<input type="checkbox" name="<?php echo $customfield->varname;?>[]" value="<?php echo $value;?>" id="<?php echo $customfield->varname;?>"/>
					<?php endforeach;?>
				<?php endif;?>
				<?php if ($customfield->fieldtype == 'textarea'):?>
					<textarea name="<?php echo $customfield->varname;?>" id="<?php echo $customfield->varname;?>"></textarea>
				<?php endif;?>
			</td>
		</tr>
	<?php endforeach;?>
	</table>
	<!-- end render custom fields -->
	
	<h2><?php echo JText::_('COM_PBBOOKING_BOOKINGDETAILS');?></h2>
	<table class="pbbooking-data-table">
		<tr>
			<td style="width:200px;"><?php echo JText::_('COM_PBBOOKING_SUCCESS_DATE');?></td>
			<td><?php echo JHtml::_('date',$this->dateparam->format(DATE_ATOM),JText::_('COM_PBBOOKING_SUCCESS_DATE_FORMAT'));?></td>
		</tr>
		<tr>
			<td><?php echo JText::_('COM_PBBOOKING_SUCCESS_TIME');?></td>
                        <?php                        
                              $date_end = clone $this->dateparam;
                              $date_end = $date_end->modify('+ '.$this->config->time_increment.' minutes');
                        ?>
			<td><?php echo JHtml::_('date',$this->dateparam->format(DATE_ATOM),JText::_('COM_PBBOOKING_SUCCESS_TIME_FORMAT')).'- '.
                            JHtml::_('date',$date_end->format(DATE_ATOM),JText::_('COM_PBBOOKING_SUCCESS_TIME_FORMAT'));?>
                        </td>
		</tr>
		<tr>
			<td><?php echo JText::_('COM_PBBOOKING_SUCCESS_CALENDAR');?></td>
			<td><?php echo $this->cal->name;?></td>
		</tr>
		<tr>
			<td><?php echo JText::_('COM_PBBOOKING_BOOKINGTYPE');?></td>
			<td>
				<select name="treatment_id">					
					<?php foreach($this->treatments as $treatment) : ?>
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
                                                <a href="create.php"></a>
				</select>
                                <input type="hidden" name="cal_id" id="text-cal-id" value="<?php echo $this->cal->cal_id;?>"/> 
                                <input type="hidden" name="date" value="<?php echo $this->dateparam->format('Ymd');?>"/>
                                <input type="hidden" name="treatment_time" value="<?php echo $this->dateparam->format('Hi');?>"/>
			</td>
		</tr>
	</table>

	
	<!-- begin render service types -->
	<?php $i=0;?>
	<div id="service-error-msg"></div>
	<!-- end render service types -->
        <div class="form-actions" style="margin-bottom: 17%;">            
            <a href="index.php/prenotazioni-online/dayview?dateparam=<?php echo $this->dateparamback ?>" class="btn" role="button">Indietro</a>
            <div class="pull-right">
                <button class ="btn" type="submit" id="pbbooking-submit"><?php echo JText::_('COM_PBBOOKING_SUBMIT_BUTTON');?></button>
            </div>
        </div>
	
</form>