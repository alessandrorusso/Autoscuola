<?php
/**
 * @package		PurpleBeanie.PBBooking
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @link		http://www.purplebeanie.com
 */
defined('_JEXEC') or die('Restricted access');

jimport('joomla.html.html.sliders');

$days_of_week = array('sunday' => JTEXT::_('COM_PBBOOKING_DAYS_SUNDAY'), 'monday' => JTEXT::_('COM_PBBOOKING_DAYS_MONDAY'), 'tuesday' => JTEXT::_('COM_PBBOOKING_DAYS_TUESDAY'),
    'wednesday' => JTEXT::_('COM_PBBOOKING_DAYS_WEDNESDAY'), 'thursday' => JTEXT::_('COM_PBBOOKING_DAYS_THURSDAY'), 'friday' => JTEXT::_('COM_PBBOOKING_DAYS_FRIDAY'),
    'saturday' => JTEXT::_('COM_PBBOOKING_DAYS_SATURDAY'));
$just_days = array('sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday');

$shifts = json_decode($this->config->time_groupings);

$doc = JFactory::getDocument();
$doc->addStyleDeclaration(".icon-32-add_shift {background:url('/administrator/components/com_pbbooking/images/button_purple_add.png');}");
$doc->addStyleDeclaration(".icon-32-delete_shift {background:url('/administrator/components/com_pbbooking/images/button_purple_delete.png');}");
?>
<link rel="stylesheet" type="text/css" href="<?php echo JURI::root(false); ?>administrator/components/com_pbbooking/css/jquery.dataTables.css">
<script>base_url = "<?php echo JURI::root(false); ?>";</script>
<script src="<?php echo JURI::root(false); ?>administrator/components/com_pbbooking/scripts/jquery.dataTables.min.js"></script>
<script src="<?php echo JURI::root(false); ?>administrator/components/com_pbbooking/scripts/pbbooking_block_days.js"></script>

<div class="bootstrap-wrap">


    <form action="index.php" method="POST" name="adminForm" id="adminForm" class="adminForm form-horizontal">
        <div class="row-fluid">



            <!-- BEGIN CONTENT-->
            <div class="span12 form-horizontal">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#opening-hours" data-toggle="tab"><?php echo JText::_('COM_PBBOOKING_OPENING_HOURS_TAB'); ?></a></li>
                    <li><a href="#block-dates" data-toggle="tab"><?php echo JText::_('COM_PBBOOKING_BLOCK_DATES'); ?></a></li>
                </ul>
                <div class="tab-content">
                    <!-- begin tabs -->
                    <div class="tab-pane active" id="opening-hours"> <!-- start pane opening hour-->
                        <div class="row-fluid">
                            <div class="span10">
                                <table class="admintable">
                                    <tr>
                                        <td></td>
                                        <th><?php echo JText::_('COM_PBBOOKING_DAY_IS_OPEN'); ?></th>
                                        <th><?php echo JText::_('COM_PBBOOKING_DAY_OPENING_TIME'); ?></th>
                                        <th><?php echo JText::_('COM_PBBOOKING_DAY_CLOSING_TIME'); ?></th>
                                    </tr>
<?php $i = 0; ?>
                                    <?php foreach ($days_of_week as $day): ?>
                                        <tr>
                                            <th><?php echo $day; ?></th>
                                            <td><input type="checkbox" name="is-open[]" value="<?php echo $i; ?>" <?php echo ($this->trading_hours[$i]['status'] == 'open') ? 'checked=true' : ''; ?>/></td>
                                            <td><input type="text" name="open-time-<?php echo $i; ?>" class="time-input" value="<?php echo (isset($this->trading_hours[$i]['open_time'])) ? $this->trading_hours[$i]['open_time'] : ''; ?>"/></td>
                                            <td><input type="text" name="close-time-<?php echo $i; ?>" class="time-input" value="<?php echo (isset($this->trading_hours[$i]['close_time'])) ? $this->trading_hours[$i]['close_time'] : ''; ?>"/></td>
                                        </tr>
    <?php $i++; ?>
                                    <?php endforeach; ?>
                                </table>
                            </div>
                        </div>
                    </div> <!-- end pane opening hours-->

                    <div class="tab-pane" id="block-dates"> <!-- begin block dates pane -->
                        <div class="row-fluid">
                            <div class="span12">
                                <table id="blockedDayTable" class="adminlist display" style="width:100%;" class="table-striped">
                                    <thead>
                                        <tr>	
                                            
                                            <th align="left"><?php echo JText::_('COM_PBBOOKING_BLOCK_CALENDAR'); ?></th>
                                            <th align="left"><?php echo JText::_('COM_PBBOOKING_BLOCK_START'); ?></th>
                                            <th align="left"><?php echo JText::_('COM_PBBOOKING_BLOCK_END'); ?></th>
                                            <th align="left"><?php echo JText::_('COM_PBBOOKING_BLOCK_START_HOUR'); ?></th>
                                            <th align="left"><?php echo JText::_('COM_PBBOOKING_BLOCK_END_HOUR'); ?></th>
                                            <th align="left"><?php echo JText::_('COM_PBBOOKING_BLOCK_NOTE'); ?></th> 
                                            <th align="left">Id</th>
                                            <th align="left">Delete</th>    
    
                                        </tr>
                                    </thead>                                                      
                                </table>
                                <br/>
                                <div class="clr"></div>

                                <div class="well well-large">
                                    <h3><?php echo JText::_('COM_PBBOOKING_BLOCK_CREATE'); ?></h3>
                                    <div class="row-fluid">

                                        <div class="span6">
                                            <div class="control-group">
                                                <label class="control-label"><?php echo JText::_('COM_PBBOOKING_BLOCK_START'); ?></label>
                                                <div class="controls"><?php echo JHTML::_('calendar', '', 'block-from-date', 'block-from-date', '%d-%m-%Y'); ?></div>
                                            </div>

                                            <div class="control-group">
                                                <label class="control-label"><?php echo JText::_('COM_PBBOOKING_BLOCK_END'); ?></label>
                                                <div class="controls"><?php echo JHTML::_('calendar', '', 'block-end-date', 'block-end-date', '%d-%m-%Y'); ?></div>
                                            </div>

                                            <div class="control-group">
                                                <label class="control-label"><?php echo JText::_('COM_PBBOOKING_BLOCK_NOTE'); ?></label>
                                                <div class="controls"><textarea name="block-comment" rows = 5 class="input-xlarge"></textarea></div>
                                            </div>

                                            <div class="control-group">
                                                <label class="control-label"><?php echo JText::_('COM_PBBOOKING_BLOCK_CALENDAR'); ?></label>
                                                <div class="controls">
                                                    <select name="block_calendars[]" size="5" multiple="true">
<?php foreach ($this->cals as $cal) : ?>
                                                            <option value="<?php echo $cal->id; ?>"><?php echo $cal->name; ?></option>
                                                        <?php endforeach; ?>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="span6">
<?php if (count($shifts) > 0) : ?>
                                                <div class="control-group">
                                                    <label class="control-label"><?php echo JText::_('COM_PBBOOKING_BLOCK_SLOT'); ?></label>
                                                    <div class="controls">                                                                                    
                                                        <select name="block-slot" id="block-slot">
                                                            <option value=""><?php echo JText::_('COM_PBBOOKING_BLOCK_SLOT_DROPDOWN'); ?></option>
    <?php foreach ($shifts as $slot) : ?>
                                                                <option value="<?php echo $slot->shift_start . '-' . $slot->shift_end; ?>"><?php echo $slot->display_label; ?></option>
                                                            <?php endforeach; ?>                                                                                    
                                                        </select>
                                                    </div>
                                                </div>
<?php endif; ?>
                                            <div class="control-group">
                                                <label class="control-label"><?php echo JText::_('COM_PBBOOKING_BLOCK_START_HOUR'); ?></label>
                                                <div class="controls">
                                                    <input type="text" name="block-start-hour" id="block-start-hour" class="time-input" value=""/>
                                                </div>
                                            </div>

                                            <div class="control-group">
                                                <label class="control-label"><?php echo JText::_('COM_PBBOOKING_BLOCK_END_HOUR'); ?></label>
                                                <div class="controls">
                                                    <input type="text" name="block-end-hour" id="block-end-hour" class="time-input" value=""/>
                                                </div>
                                            </div>

                                            <div class="control-group">
                                                <label class="control-label"><?php echo JText::_('COM_PBBOOKING_EVENT_MAKE_RECUR'); ?></label>
                                                <div class="controls"><input type="checkbox" name="reccur" value="1"/></div>
                                            </div>

                                            <div class="control-group">
                                                <label class="control-label"><?php echo JText::_('COM_PBBOOKING_EVENT_RECUR_INT'); ?></label>
                                                <div class="controls"><input type="text" name="interval" value="1"/></div>
                                            </div>

                                            <div class="control-group">
                                                <label class="control-label"><?php echo JText::_('COM_PBBOOKING_EVENT_RECUR_FREQ'); ?></label>
                                                <div class="controls">
                                                    <select name="frequency">
<?php foreach (array('days', 'weeks', 'months', 'years') as $freq) : ?>
                                                            <option value="<?php echo $freq; ?>"><?php echo JText::_('COM_PBBOOKING_EVENT_RECUR_' . strtoupper($freq)); ?></option>
                                                        <?php endforeach; ?>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="control-group">
                                                <label class="control-label"><?php echo JText::_('COM_PBBOOKING_EVENT_RECUR_END'); ?></label>
                                                <div class="controls">
<?php echo JHTML::_('calendar', $this->date->format('Y-m-d'), 'recur_end', 'recur_end'); ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div style="clear:both;"></div>

                                </div>
                            </div>
                        </div>
                    </div> <!-- end block dates pane-->

                </div>
            </div>
        </div>



        <input type="hidden" name="option" value="com_pbbooking" />
        <input type="hidden" name="controller" value="manage"/>
        <input type="hidden" name="task" value="save_block_days" />
    </form>

    <div class="modal hide fade" id="dummy">
    </div>


</div>