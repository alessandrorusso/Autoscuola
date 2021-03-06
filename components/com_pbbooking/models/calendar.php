<?php

/**
* @package		PurpleBeanie.PBBooking
* @license		GNU General Public License version 2 or later; see LICENSE.txt
* @link		http://www.purplebeanie.com
*/


//class definition for event
class calendar

{
    const CONFIG_QUERY = 'select * from #__pbbooking_config';
    const ALL_CALENDARS_QUERY = 'select * from #__pbbooking_cals';
    const ACTIVE_CALENDARS_QUERY = 'select * from #__pbbooking_cals where status=1';
    const ALL_BLOCKS_QUERY = 'SELECT * FROM e3xea_pbbooking_block_days where block_end_date >= CURRENT_DATE or r_end >= CURRENT_DATE order by id DESC';
    const CALENDAR_EVENTS_QUERY = 'select * from #__pbbooking_events where cal_id = ';    
    const CALENDAR_BLOCK_EXCEPTIONS_QUERY = 'select * from #__pbbooking_block_exceptions where cal_id= ';

public $events;
public $kTimeslots;
public $cal_id;
public $name;
public $office;

function __construct() {

    $db=JFactory::getDBO();
	
    //set the timezone for the calendars
    $config =JFactory::getConfig();
    date_default_timezone_set($config->get('offset'));	
	
    //set a default cal_id;
    $this->cal_id = -1;
}

    /**
     * Retrieve pbbooking_config from session
     * @return pbbooking_config
     */
    static function get_config(){
        $session = JFactory::getSession();        
        $config = $session->get('pbbooking_config');
        if(!isset($config)){
            $db = JFactory::getDbo();
            $db->setQuery(self::CONFIG_QUERY);
            $config = $db->loadObject();    
            $session->set('pbbooking_config', $config);
        }
        return $config;
    }
    
/**
 * Retrieve all calendars from session
 * @return list of pbbooking_cals
 */
static function get_all_calendars(){
    $session = JFactory::getSession();        
    $all_calendars = $session->get('pbbooking_all_calendars');
    if(!isset($all_calendars)){
        $db = JFactory::getDbo();
        $db->setQuery(self::ALL_CALENDARS_QUERY);
        $all_calendars = $db->loadObjectList();    
        $session->set('pbbooking_all_calendars', $all_calendars);
    }
    return $all_calendars;
}
    
/**
 * Retrieve active calendars from session
 * @return list of pbbooking_cals
 */
static function get_active_calendars(){
    $session = JFactory::getSession();        
    $active_calendars = $session->get('pbbooking_active_calendars');
    if(!isset($active_calendars)){
        $db = JFactory::getDbo();
        $db->setQuery(self::ACTIVE_CALENDARS_QUERY);
        $active_calendars = $db->loadObjectList();    
        $session->set('pbbooking_all_calendars', $active_calendars);
    }
    return $active_calendars;
}

/**
 * Load all events for given calendar from DB
 * @param int $cal_id
 * @return list of pbbooking_events
 */
static function get_calendars_events($cal_id){
    /*$session =& JFactory::getSession();        
    $all_events = $session->get('pbbooking_all_events');
    if(!isset($all_events) ||(isset($all_events) && !array_key_exists($all_events, $cal_id))){
        $db = JFactory::getDbo();
        $db->setQuery(CALENDAR_EVENTS_QUERY.(int)$cal_id);
        $calendar_events = $db->loadObjectList(); 
        if(!isset($all_events)){
            $all_events = array();
        }
        $all_events[$cal_id]=$calendar_events;
        $session->set('pbbooking_all_events', $all_events);
    }
    return $all_events[$cal_id];*/
    $db = JFactory::getDbo();
    $db->setQuery(self::CALENDAR_EVENTS_QUERY.(int)$cal_id);
    $calendar_events = $db->loadObjectList(); 

    return $calendar_events;
}

/**
 * Load all block from DB
 * @return list of pbbooking_block_days
 */
static function get_all_blocks(){
    $db = JFactory::getDbo();
    $db->setQuery(self::ALL_BLOCKS_QUERY);
    $all_blocks = $db->loadObjectList();    

    return $all_blocks;        
}

/**
 * Load all block exceptions for given calendar from DB
 * @param int $cal_id
 * @return list of pbbooking_block_exceptions
 */
static function get_calendar_block_exceptions($cal_id){
    $db = JFactory::getDbo();
    $db->setQuery(self::CALENDAR_BLOCK_EXCEPTIONS_QUERY.(int)$cal_id.' order by  dtexcept ASC');
    $calendar_block_exceptions = $db->loadObjectList(); 

    return $calendar_block_exceptions;
}

/**
 * Load all block for given calendar from DB
 * @param int $cal_id
 * @return list of pbbooking_block_days
 */
static function get_calendar_blocks($cal_id){
    $all_blocks = self::get_all_blocks();
    $calendar_blocks = array();

    foreach ($all_blocks as $blocked_day) {            
        //verifico che il calendario sia coinvolto nel blocco corrente
        if (in_array($cal_id,explode(',',$blocked_day->calendars))) {
            array_push($calendar_blocks, $blocked_day);  
        }  
    }
    return $calendar_blocks;
}

/**
 * check if input date is within blocked day
 * @param type $date
 * @param type $blocked_day
 * @param type $offset
 * @return boolean
 */
private static function check_blocked_day($date, $blocked_day, $offset){
    $isOpen = true;
    
    //clono la data da confrontare e resetto l'ora
    $date_compare = clone $date;
    $date_compare->setTime(00, 00);
    
    $block_from = date_create($blocked_day->block_start_date,new DateTimeZone(PBBOOKING_TIMEZONE));
    $block_to = date_create($blocked_day->block_end_date,new DateTimeZone(PBBOOKING_TIMEZONE));

    if($date_compare>=$block_from && $date_compare<=$block_to){
        //data e ora inizio del blocco
        $date_compare_from = clone $date_compare;
        $date_compare_from->setTime(substr($blocked_day->block_start_hour, 0,2),substr($blocked_day->block_start_hour, 2),00);
        $date_compare_from->setTimezone(new DateTimezone($offset));
                    
        //data e ora fine del blocco
        $date_compare_to = clone $date_compare;
        $date_compare_to->setTime(substr($blocked_day->block_end_hour, 0,2),substr($blocked_day->block_end_hour, 2),00);                        
        $date_compare_to->setTimezone(new DateTimezone($offset));  
                    
        //verifico se la data in input rientra nel blocco
        if($date>=$date_compare_from && $date<=$date_compare_to){
            Pbdebug::log_msg('Calendar model found single block at '.$date->format(DATE_ATOM),'com_pbbooking');                    
            $isOpen = false;                        
        }
    }
    return $isOpen;    
}

/**
 * check if input date is a recursive block day
 * @param type $date
 * @param type $blocked_day
 * @param type $offset
 */
private static function check_recursive_blocked_day($date, $blocked_day, $offset){
    $isOpen = true;   
    
    //clono la data da confrontare e resetto l'ora
    $date_compare = clone $date;
    $date_compare->setTime(00, 00);
    $block_from = date_create($blocked_day->block_start_date,new DateTimeZone(PBBOOKING_TIMEZONE));
    $block_to = date_create($blocked_day->block_end_date,new DateTimeZone(PBBOOKING_TIMEZONE));
    
    $blocked_day->r_dtend = date_create($blocked_day->r_end,new DateTimeZone(PBBOOKING_TIMEZONE));
    $blocked_day->r_dtend->setTimezone(new DateTimeZone($offset));
                
    if (isset($blocked_day->r_int) && $blocked_day->r_int != 0 && 
        $date_compare>=$block_from && $date_compare <= $blocked_day->r_dtend) {                     
        
        /* se si tratta di una ricorrenza custom
         * devo verificare che il giorno in input ricada
         * tra quelli segnalati nel blocco
         */                                        
        if($blocked_day->r_freq == 'custom'){                            
            if (in_array($date->format('w'),explode(',',$blocked_day->custom_recurrence))) {                            
                $date_compare_from = clone $date_compare;
                $date_compare_from->setTime(substr($blocked_day->block_start_hour, 0,2),substr($blocked_day->block_start_hour, 2),00);
                $date_compare_from->setTimezone(new DateTimezone($offset));                    

                $date_compare_to = clone $date_compare;
                $date_compare_to->setTime(substr($blocked_day->block_end_hour, 0,2),substr($blocked_day->block_end_hour, 2),00);                        
                $date_compare_to->setTimezone(new DateTimezone($offset));                      

                //verifico se la data in input rientra nel blocco
                if($date>=$date_compare_from && $date<=$date_compare_to){
                    Pbdebug::log_msg('Calendar model found single block at '.$date->format(DATE_ATOM),'com_pbbooking');                    
                    $isOpen = false;                        
                }
            }                            
        }
        else{  
            while ($isOpen && ($block_from<=$date && $block_to <= $date) || ($block_from<=$blocked_day->r_dtend && $block_to <= $blocked_day->r_dtend)) {
                                
                $block_from->modify('+ '.$blocked_day->r_int.' '.$blocked_day->r_freq);
                $block_from->setTime(substr($blocked_day->block_start_hour, 0,2),substr($blocked_day->block_start_hour, 2),00);
                $block_from->setTimezone(new DateTimezone($offset));                            
                    
                $block_to->modify('+ '.$blocked_day->r_int.' '.$blocked_day->r_freq);
                $block_to->setTime(substr($blocked_day->block_end_hour, 0,2),substr($blocked_day->block_end_hour, 2),00);                        
                $block_to->setTimezone(new DateTimezone($offset));                      
                            
                //verifico se la data in input rientra nel blocco
                if($date>=$block_from && $date<=$block_to){
                    Pbdebug::log_msg('Calendar model found single block at '.$date->format(DATE_ATOM),'com_pbbooking');                    
                    $isOpen = false;                        
                }
            }
        }
    }
    return $isOpen;
}

/**
 * check if input date is a block exception
 * @param type $date
 * @param type $exception
 * @return boolean
 */
private static function check_block_exception($date, $exception){
    $isOpen = false;
    $exceptionDate = date_create($exception->dtexcept, new DateTimeZone(PBBOOKING_TIMEZONE));                        
    $interval = date_diff($exceptionDate,$date);
    $diffYear= $interval->format('%y');
    $diffMonth= $interval->format('%m');
    $diffDay= $interval->format('%d');
    $diffHour= $interval->format('%h');
    $diffMin= $interval->format('%i');
    if($diffYear <1 && $diffMonth <1 && $diffDay <1 && 
       $diffHour <1 && $diffMin <1){
            $isOpen = true;
    }
    return $isOpen;
}

/**
* used to calculate whether a date is a blocked date
*
* @param datetime the date to block
* @return true if is open or a string if is closed
*/
function isOpen($date) {   
    $system_config = JFactory::getConfig();
    $offset = $system_config->get('offset');    
    $calendar_blocked_days = self::get_calendar_blocks($this->cal_id);           
    if (count($calendar_blocked_days)>0) {
        //calcolo i blocchi rimossi per il calendario
        $calendar_block_exceptions = self::get_calendar_block_exceptions($this->cal_id);
        
        //ciclo tutti i blocchi trovati
        foreach ($calendar_blocked_days as $blocked_day) {         
            //verifico che la data coincida col blocco corrente
            $isOpen = self::check_blocked_day($date, $blocked_day, $offset);                
            if($isOpen){
                //verifico se il blocco è ricorrente
                $isOpen = self::check_recursive_blocked_day($date, $blocked_day, $offset);
            }
            if(!$isOpen){
                //è stato trovato un blocco ed occorre
                //verificare se è stato rimosso                                
                if(count($calendar_block_exceptions) > 0){
                    foreach ($calendar_block_exceptions as $exception){
                        if($exception->dtcreate > $blocked_day->dtcreate){                            
                            if(self::check_block_exception($date, $exception)){
                                return true;
                            }                        
                        }
                    }
                }
                return $blocked_day->block_note != '' ?  $blocked_day->block_note : 'Non disponibile';                
            }            
        }
    }
    return true;		
}

/**
* Loads the events from the database
*
* @param array An array of calendar ID's to be parsed
* @return nil loads $this->events with appointments
* @since 2.1
*/
function loadCalendarFromDbase($cals) {
    $db = JFactory::getDBO();

    //set the cal_id for future calendars
    $this->cal_id = (count($cals)>1) ? 0 : $cals[0];

    //set the calendar name if we have if
    if ($this->cal_id > 0) {
        $cal = $db->setQuery('select * from #__pbbooking_cals where id = '.$db->escape($this->cal_id))->loadObject();
        $this->name = $cal->name;
        $this->office = $cal->office;
        $this->license = $cal->license;
        $this->transport = $cal->transport;
        $this->color = $cal->color;
        $this->trading_hours = $cal->hours;
    }

    $events = array();
    foreach($cals as $cal) {        
        $cal_events = self::get_calendars_events($cal);
        if (count($cal_events) > 0 ) {
            foreach ($cal_events as $cal_event) {
                //$date_string = date(DATE_ATOM,$cal_event->dtend);
                $event = new event();
                $event->summary = $cal_event->summary;
                $event->dtend = date_create($cal_event->dtend,new DateTimeZone(PBBOOKING_TIMEZONE));
                $event->dtstart = date_create($cal_event->dtstart,new DateTimeZone(PBBOOKING_TIMEZONE));
                $event->description = $cal_event->description;
                $event->id = $cal_event->id;
                $event->r_int = $cal_event->r_int;
                $event->r_end = $cal_event->r_end;
                $event->r_freq = $cal_event->r_freq;                
                $events[] = $event;
            }
        }
    }	
    $this->events = $events;
}

/**
* writes an event out to the ics file
* @param event the event to write
* @param the calfile to write to
* @deprecated 2.1
*/
function writeEvent($event,$calfile) {
    global $kOutcal;
    //BEGIN:VEVENT
    //DTEND;VALUE=DATE-TIME:20100426T172429Z
    //DTSTART;VALUE=DATE-TIME:20100426T162429
    //SUMMARY:New Event
    //END:VEVENT
	
    $path_parts = pathinfo($calfile);
    if ($path_parts['dirname'] == '.') {
        #the cal is in the component subdir so add relevant info to path
        $realpath = JPATH_SITE.DS.'components'.DS.'com_pbbooking'.DS.$calfile;
        $calfile = $realpath;
    }
	
    $file = @fopen($calfile,"r");
    $lines = Array();
    $i = 0;
    $insert=0;
    while(!feof($file)) {
        //read entire file into memory and if line == BEGIN:VTIMEZONE then note the line in $i
        $line = fgets($file);
        if (preg_match("/^BEGIN:VTIMEZONE/",$line) == 1) {
            $insert=$i;
        }
        $i++;
        $lines[]=$line;
    }
    fclose($file);
	
    //slice array from insert to end
    //add elements recursively to end of array and merge again
    $arr1 = array_slice($lines,0,$insert);
    $arr2 = array_slice($lines,$insert,(count($lines)-$insert));
    //pop new elements to end of $arr1
    $arr1[] = "BEGIN:VEVENT\n";
    $arr1[] = sprintf("DTEND;VALUE=DATE-TIME:%sT%s\n",date_format($event->dtend,'Ymd'),date_format($event->dtend,'His'));
    $arr1[] = sprintf("DTSTART;VALUE=DATE-TIME:%sT%s\n",date_format($event->dtstart,'Ymd'),date_format($event->dtstart,'His'));
    $arr1[]=sprintf("SUMMARY:%s\n",$event->summary);
    $arr1[]="DESCRIPTION:$event->description\n";
    $arr1[]="END:VEVENT\n";
	
    $lines = array_merge($arr1,$arr2);
	
    $file = @fopen($calfile,"w");
    foreach($lines as $line) {
        fwrite($file,$line);
    }
	
    fclose($file);
}

/**
* Writes a validated event to the database
*
* @param event The event to be written to the calendar
* @return bool success or failure
* @since 2.1
*/
function writeEventToDatabase($event,$cal_id) {	
    $db = JFactory::getDBO();
    if ($event->id) {
        $sql = sprintf("update #__pbbooking_events set cal_id = %s, summary = '%s', dtend = %s, dtstart = %s, description = '%s' where id=%s",
        $db->escape($cal_id),$db->escape($event->summary),
        $db->escape($event->dtend->format('U')),
        $db->escape($event->dtstart->format('U')),
        $event->description,
        $db->escape($event->id));	        
    } else {
        $sql = sprintf("insert into #__pbbooking_events (cal_id,summary,dtend,dtstart,description) values (%s,'%s',%s,%s,'%s')",
        $db->escape($cal_id),$db->escape($event->summary),
        $db->escape($event->dtend->format('U')),
        $db->escape($event->dtstart->format('U')),
        $db->escape($event->description));		
    }
    $db->setQuery($sql);
    $db->query();
    return $db->insertid();
}

/**
* is_free_from_to() - 
* returns either an event or false (ie false = available) 
* to indicate whether the nominated calendar is free from from date to to date 
* used for newer views based on times
*
* @param datetime from_date - the datetime to check from
* @param datetime to_date - the datetime to check to
* @param bool is_admin - whether the method is being called from an admin view or not	
* @return event the event that is in the time slot if one is there.
* @since 2.2
*/	
public function is_free_from_to($from_date,$to_date,$is_admin=false) {

    $free = true;
    $bookedEvent = null;
        
    $system_config =JFactory::getConfig();
    date_default_timezone_set($system_config->get('offset'));
	
    $pbb_config = self::get_config();

    $trading_hours = ($this->cal_id != 0 && $this->trading_hours != '') ? json_decode($this->trading_hours,true) : json_decode($pbb_config->trading_hours,true);
        	
    //if (!$is_admin) {
    if ($trading_hours[$from_date->format('w')]['status'] == 'open') {
        
        //catches for outside trading times.
        $str_opening_time = $trading_hours[$from_date->format('w')]['open_time'];
        $opening_time_arr = str_split($str_opening_time,2);
        $opening_date = date_create($from_date->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
        $opening_date->setTime($opening_time_arr[0],$opening_time_arr[1]);                
        
        $str_closing_time = $trading_hours[$from_date->format('w')]['close_time'];        
        $closing_time_arr = str_split($str_closing_time,2);        
        $closing_date = date_create($from_date->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));        
        $closing_date->setTime($closing_time_arr[0],$closing_time_arr[1]);
        
        if ($from_date < $opening_date || $from_date >= $closing_date){
            return true;
        }              
    }
    else {
        //catches for non-trading day
        return true;
    }
    //}
        
    foreach($this->events as $event) {		
        if ($event->dtend > $from_date && $event->dtend <= $to_date) {
            $free = false;
            $bookedEvent = clone $event;
        }
        elseif ($event->dtstart >= $from_date && $event->dtstart < $to_date ) {
            $free = false;
            $bookedEvent = clone $event;
        }
		
        //check for multi day events
        if ($event->dtstart <= $from_date && $event->dtend >= $to_date) {
            $free = false;
            $bookedEvent = clone $event;
        }
    }	
    return $bookedEvent; 
}

/**
* returns bool to indicate whether a treatment can be booked at a specified time.
* there are a number of reasons why it might not be possible:
*   - slot is busy? caught by is_free_from_to
*   - too close to end of shift
*   - not enough time before next treatment
*
* @param int treatment_id - the id of the treatement to be booked
* @param datetime treatment_date - the datetime to be booked
* @param datetime shift_end - the ending time of the shift
* @returns bool
* @since 2.2
*/
public function can_book_treatment_at_time($treatment_id,$treatment_date,$shift_end) {
    $check_date = date_create($treatment_date->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
    $db = JFactory::getDbo();
    $db->setQuery('select * from #__pbbooking_treatments where id = '.$db->escape((int)$treatment_id));
    $treatment = $db->loadObject();
	
    $config = self::get_config();
    
    if ($treatment->duration<= $config->time_increment) {
        return true;
    }
	
    //all remaining are where treatment->duration > time_interval
    $poss_book = true;
    $treatment_end = date_create($check_date->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
    $treatment_end->modify('+'.($treatment->duration-1).'minutes');
	
    if ($treatment_end > $shift_end){
        return false;
    }
    
    while($check_date <= $treatment_end) {
        $slot_end = date_create($treatment_date->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
        $slot_end->modify('+'.$config->time_increment.' minutes');
        if ($this->is_free_from_to($check_date,$slot_end)) {
            return false;
        }
        
        //check to see if it's in a block date range.
        $date = clone $check_date;
        while ($date < $slot_end){
            $open = $this->isOpen($date);        
            if (!$open || !is_bool($open)) {
		return false;
            }
            $date->modify('+ '.$config->time_increment.' minutes');
        }
        
        if ($slot_end > $shift_end) {
            return false;
        }
        $check_date->modify('+'.$config->time_increment.' minutes');
    }
    return $poss_book;
}

/**
* returns the number of bookings on a given date including checking for recurring bookings
* @param the date to check
* @return int the number of bookings
* @since 2.3
* @todo merge the booking checking code in number_of_bookings_for_date and is_free_from_to
*/
public function number_of_bookings_for_date($check_date) {
    $system_config =JFactory::getConfig();
    date_default_timezone_set($system_config->get('offset'));	
	
    $bod = date_create($check_date->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
    $eod = date_create($check_date->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
    $bod->setTimezone(new DateTimeZone($system_config->get('offset')));
    $eod->setTimezone(new DateTimeZone($system_config->get('offset')));
    $bod->setTime(0,0,0);
    $eod->setTime(23,59,59);

    $num_events = 0;
    foreach ($this->events as $event) {
        if ($event->dtend >= $bod && $event->dtend <= $eod && !isset($event->r_int)) {
            //error_log('match for event'.$event->id);
            $num_events++;
        }
        if (isset($event->r_int)) {
            //recurring event
            $dt_until = date_create($event->r_end,new DateTimeZone(PBBOOKING_TIMEZONE));
            $dt_until->setTimezone(new DateTimeZone($config->get('offset')));

            $dt_recur_cur_dtend = date_create($event->dtend->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
            $dt_recur_cur_dtend->setTimezone(new DateTimeZone($config->get('offset')));

            while ($dt_recur_cur_dtend <= $dt_until && $dt_recur_cur_dtend <= $eod) {
                if ($dt_recur_cur_dtend >= $bod && $dt_recur_cur_dtend <= $eod) {
                    $num_events++;
                }
                $dt_recur_cur_dtend->modify('+'.$event->r_int.' '.$event->r_freq);
            }
        }
    }
    return $num_events;
}

/**
* returns the calendar utilization expressed as number of booked hours / number of working hours * 100
* @param datetime the date to calculate from
* @param datetime the date to calculate to
* @return float
* @since 2.4
* @access public
*/
public function get_calendar_utilization($_x_date_from,$date_to) {
    $date_from = date_create($_x_date_from->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));		
    Pbdebug::log_msg('get_calendar_utilization with dates $date_from = '.$date_from->format(DATE_ATOM).' $date_to  = '.$date_to->format(DATE_ATOM),'com_pbbooking');
    $config = self::get_config();
    $db = JFactory::getDbo();
    $calendar = $db->setQuery('select * from #__pbbooking_cals where id = '.(int)$this->cal_id)->loadObject();

    //calc total "avail hours" for period
    $cal_hours = json_decode($calendar->hours,true);
    $date_from->setTime(0,0,0);
    $date_to->setTime(23,59,59);
    $total_working_minutes = 0;

    $events = $db->setQuery('select * from #__pbbooking_events where dtstart >= "'.$date_from->format(DATE_ATOM).'" AND dtstart <= "'.$date_to->format(DATE_ATOM).'" and cal_id = '.(int)$this->cal_id)->loadObjectList();

    while ($date_from <= $date_to) {
        if ($cal_hours[$date_from->format('w')]['status'] == 'open') {
            $start_arr = str_split($cal_hours[$date_from->format('w')]['open_time'],2);
            $close_arr = str_split($cal_hours[$date_from->format('w')]['close_time'],2);
            $dtstart = new DateTime($date_from->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
            $dtend = new DateTime($date_from->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
            $dtstart->setTime($start_arr[0],$start_arr[1],0);
            $dtend->setTime($close_arr[0],$close_arr[1],59);
            $diff = $dtend->diff($dtstart);
            $total_working_minutes += (($diff->format('%h')*60) + $diff->format('%i'));
        }
        $date_from->modify('+1 day');
    }
    Pbdebug::log_msg('get_calendar_utilization() - total working minutes for calendar_id = '.$this->cal_id.' = '.$total_working_minutes,'com_pbbooking');

    //now get appt's in date range....
    $total_booked_minutes = 0;
    foreach ($events as $event) {
        $dtstart = date_create($event->dtstart,new DateTimeZone(PBBOOKING_TIMEZONE));
        $dtend = date_create($event->dtend,new DateTimeZone(PBBOOKING_TIMEZONE));
        $total_booked_minutes += (($dtstart->diff($dtend)->format('%h')*60)+$dtstart->diff($dtend)->format('%i'));
    }
    Pbdebug::log_msg('get_calendar_utilization() - total hours worked for calendar_id = '.$this->cal_id.' = '.$total_booked_minutes,'com_pbbooking');

    Pbdebug::log_msg('get_calendar_utilization() - calendar_utilization for calendar = '.$this->cal_id.' = '.($total_booked_minutes/$total_working_minutes)*100,'com_pbbooking');

    return ($total_booked_minutes/$total_working_minutes)*100;
}
	
}

?>