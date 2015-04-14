<?php

	/**
	* @package		PurpleBeanie.PBBooking
	* @license		GNU General Public License version 2 or later; see LICENSE.txt
	* @link		http://www.purplebeanie.com
	*/


	Jhtml::_('behavior.framework');
	Jhtml::_('behavior.framework','more');
	$version = new JVersion();
	
	$doc = JFactory::getDocument();
	$doc->addStyleSheet(JURI::root(false)."components/com_pbbooking/user_view.css");
	


	//draw current month - get some relevant dates for drawing
	$this->dateparamArr = date_parse(date_format($this->dateparam,"Y-m-d"));
	
	$bom = date_create(sprintf("%s-%s-%s 00:00",$this->dateparamArr["year"],$this->dateparamArr['month'],"1"),new DateTimeZone(PBBOOKING_TIMEZONE));
	$eom = date_create($bom->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
	$curr_day = date_create($bom->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
	$eom->modify("+1 month");
	$eom->modify("-1 day");
	$num_days = $eom->format("j")-1;
		
	$next_month = date_create($bom->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
	$next_month->modify("+1 month");
	
	$last_month = date_create($bom->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
	$last_month->modify("-1 month");

?>

<script type="text/javascript">
        window.addEvent('domready',function(){            
            jQuery('#pbbooking tbody td a').click(function(event){ 
                var dateParam = getURLParameter(jQuery(this).attr('href'), 'dateparam');
                var selectedTime = new Date(dateParam.substring(0,4), dateParam.substring(4,6)-1, dateParam.substring(6,8));             
                var today = new Date();                
                var tomorrow = new Date(today);
                tomorrow.setDate(today.getDate()+1);
                var maxTime = new Date(today);
                maxTime.setDate(today.getDate()+15);
                if(selectedTime < today){
                    alert("Non è possibile selezionare una data passata!");
                    event.preventDefault();
                }                
                else if(selectedTime <= tomorrow){
                    alert("Occorre prenotare con più di 24 ore di anticipo!");                    
                    event.preventDefault();
                }
                else if(selectedTime > maxTime){
                    alert("E' possibile prenotare con un massimo di 15 giorni di anticipo!");
                    event.preventDefault();
                }                
            });
        });
        
        function getURLParameter(url, name) {
            return (RegExp(name + '=' + '(.+?)(&|$)').exec(url)||[,null])[1];
        }
        
        
</script>
<div class="calendar-window" style="height: 450px;">

	<div id="calendar">
		<table id="pbbooking">
			<tr>
		
				<th colspan=7 align="center">
					<a href="<?php echo JRoute::_('index.php?option=com_pbbooking&task=view&dateparam='.$last_month->format("Ymd"));?>"><<</a>
					<span class="month-heading">
						<?php echo Jhtml::_('date',$this->dateparam->format(DATE_ATOM),'F');?>
					</span>
					<a href="<?php echo JRoute::_('index.php?option=com_pbbooking&task=view&dateparam='.$next_month->format("Ymd"));?>">>></a>
				</th>
		
		
			</tr>
			
			<tr>
		
			<!-- begin header row-->
			<?php $bow = date_create('last Sunday',new DateTimeZone(PBBOOKING_TIMEZONE));?>
			
			<?php for ($i=0;$i<$this->config->calendar_start_day;$i++) :?>
				<?php $bow->modify('+1 day');?>
			<?php endfor;?>
			
			<?php $eow = clone $bow;?>
			<?php $eow->modify('+6 days');?>
			
			<?php for ($i=0;$i<=6;$i++) :?>
				
				<th><?php echo Jhtml::_('date',$bow->format(DATE_ATOM),'D');?></th>
				<?php $bow->modify("+1 day");?>
		
			<?php endfor;?>
			
			<!-- end header row-->
		
			<?php
				$curr_day = $bom;
				if ($this->config->block_same_day==1) :
					$curr_day->setTime(0,0,0);
				else:
					$curr_day->setTime(23,59,59);
				endif;
			?>
		
			</tr>
		
			<tr>
			
			<!-- calc cal padding -->
			<?php if ($curr_day->format('w') < $this->config->calendar_start_day) :?>
				<?php for ($i=0;$i< 7 - ($this->config->calendar_start_day-$curr_day->format('w'));$i++) :?>
					<td></td>
				<?php endfor;?>
			<?php endif;?>
			
			<?php if ($curr_day->format('w') > $this->config->calendar_start_day) :?>
				<?php for ($i=0;$i<($curr_day->format('w') - $this->config->calendar_start_day);$i++) :?>
					<td></td>
				<?php endfor;?>
			<?php endif;?>
			
			<!-- end cal padding -->
		
			<?php for ($i=0;$i<=$num_days;$i++) :?>
				
		
				<?php if ($curr_day > date_create()) :?>
					<td
						<?php $class = "";?>
						<?php if ($curr_day->format("z") == $this->dateparam->format("z")) :?>
							<?php $class .= "selected_day";?>
						<?php endif;?>
						<?php $free = Pbbookinghelper::free_appointments_for_day($curr_day);?>
						<?php $class .= ($free) ? '' : ' fully-booked ';?>
						<?php echo ($class !="") ? 'class = "'.$class.'"' : "";?>>	
						<?php if ($free) :?>
							<a href='<?php echo JRoute::_('index.php?option=com_pbbooking&task=dayview&dateparam='.$curr_day->format("Ymd"));?>'>
						<?php endif;?>
						<?php echo $curr_day->format("d");?>
						<?php if ($free) :?>
							</a>
						<?php endif;?>
					</td>
				<?php else:?>
					<td><?php echo JHtml::_('date',$curr_day->format(DATE_ATOM),'j');?></td>
				<?php endif;?>
				
				<!-- break if needed -->
				<?php if (($curr_day->format('w') == $eow->format('w'))) :?>
					</tr><tr>
				<?php endif;?>
				<!-- finish line break -->
				
				<?php $curr_day->modify("+1 day");?>
			<?php endfor;?>
			</tr>
		</table>
	</div>

</div>




<div style="clear:both;"></div>
