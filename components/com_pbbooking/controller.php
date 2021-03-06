<?php
/**
 * @package    PurpleBeanie.PBBooking
 * @link http://www.purplebeanie.com
 * @license    GNU/GPL
 */
 
// No direct access
 
defined( '_JEXEC' ) or die( 'Restricted access' );
 
jimport('joomla.application.component.controller');
require_once((dirname(__FILE__)).DS.'helpers'.DS.'pbbookinghelper.php');
 
class PbbookingController extends JControllerLegacy
{
    function __construct()
    {
	parent::__construct();
        JRequest::setVar('view','pbbooking');
    	
        $config =JFactory::getConfig();
    	date_default_timezone_set($config->get('offset'));	

    	$db = JFactory::getDbo();
    	$db->setQuery('select * from #__pbbooking_config');
    	$this->config = $db->loadObject();


        //set locale as well...
        $language = JFactory::getLanguage();
        $locale = $language->getLocale();		
        $str_locale = preg_replace(array('/-/','/\.utf8/'),array('_',''),$locale[0]);
        setlocale(LC_ALL,$str_locale);	

        Pbdebug::log_msg('Joomla offset = '.$config->get('offset').' PBBooking timezone = '.$this->config->timezone,'com_pbbooking');	
    }
	
    /**
     * Method to display the view
     *
     * @access    public
     */
    function display($cacheable=false,$options=array())
    {	
    	Pbdebug::log_msg('Calling display method in front end','com_pbbooking');    	
    	//load up the view
    	$view = $this->getView('PBBooking','html');
    	$view->setLayout('calendar');
    	
    	//populate needed data into the view.
    	$db = JFactory::getDBO();
    	
    	$db->setQuery("select * from #__pbbooking_config");
    	$view->config = $db->loadObject();
        $view->calendar_message = $view->config->calendar_message;
        $view->now = date_create("now",new DateTimeZone(PBBOOKING_TIMEZONE));
	    	
    	//am I passing a selected date from the view, either in the heading or in the body?
        if (JRequest::getVar('dateparam')) {
            $view->dateparam = date_create(JRequest::getVar('dateparam'),new DateTimeZone(PBBOOKING_TIMEZONE));            
        } else {
            $view->dateparam = date_create("now",new DateTimeZone(PBBOOKING_TIMEZONE));            
        }

        $config =JFactory::getConfig();
    	$view->dateparam->setTimezone(new DateTimezone($config->get('offset')));
		
        //parse a valid cal from the database		
        if ($view->config->consolidated_view == 0) {
            $db->setQuery("select * from #__pbbooking_cals where status=1");
            $cals = $db->loadObjectList();
            foreach ($cals as $cal) {
                $new_cal = new calendar();
                $new_cal->loadCalendarFromDbase(array($cal->id));
                $new_cal->cal_id = $cal->id;
                $new_cal->name = $cal->name;
                $view->cals[]=$new_cal;
            }
        } else {
            $db->setQuery("select id from #__pbbooking_cals where status=1");
            $cals = $db->loadResultArray();
            $view->cal = new calendar();
            $view->cal->loadCalendarFromDbase($cals);	
        }
		
        //a hack for block same say...
        if ($view->config->block_same_day == 1 && date_create("now",new DateTimeZone(PBBOOKING_TIMEZONE))->format("z") == $view->dateparam->format("z") ) 
        {
            $view->dateparam->modify("+1 day");
        }
		
    	//display the view.
    	$view->display();			
    }
    
    /**
     * 
     * saves the appointment to the pending_events table and routes validation emails
     * 
     */
    function save()
    {
        $db =JFactory::getDBO();
        $db->setQuery('select * from #__pbbooking_config');
        $config = $db->loadObject();
    	
        //load up the appointment data in an array.
        $data = array();        
        	
        $data['treatment_id'] = JRequest::getInt('treatment_id',0);
        $data['date'] = JRequest::getVar('date',"");
        $data['treatment-time'] = JRequest::getVar('treatment_time');
        $data['cal_id'] = JRequest::getInt('cal_id');
        
        $user = JFactory::getUser();
        $data['calendar-user'] = $user->id;                
        $pending_id = Pbbookinghelper::save_pending_event($data);                    
        if(is_int($pending_id)){
            $valid = Pbbookinghelper::validate_pending($pending_id, null);
            if ($valid) {
                $data['pending_id'] = $pending_id;
                $view = $this->getView('PBBooking','html');
                $view->setLayout('success');
                //populate needed data into the view.
                $db->setQuery('select * from #__pbbooking_treatments where id = '.$db->escape($data['treatment_id']));
                $view->service = $db->loadObject();
                $view->config = $config;
                $db->setQuery('select * from #__pbbooking_pending where id = '.$db->escape($pending_id));
                $view->pending = $db->loadObject();

                //display the view
                $view->display();
            } else {
                $this->setRedirect('index.php/option=com_pbbooking',JText::_('COM_PBBOOKING_BOOKING_PROBLEM'));
            }
        } else {
            $this->setRedirect('index.php/option=com_pbbooking',JText::_('COM_PBBOOKING_BOOKING_PROBLEM'));				
        }       
    }
    
    /**
     * 
     * deletes the appointment 
     * 
     */
    function deleteReservation()
    {
        $db = JFactory::getDbo();
        $db->setQuery('select * from #__pbbooking_events where id = '.$db->escape(JRequest::getVar('eventId')));
        $event = $db->loadObject();        
        $dtstart = date_create($event->dtstart,new DateTimeZone(PBBOOKING_TIMEZONE));
        $now = date_create("now",new DateTimeZone(PBBOOKING_TIMEZONE));                
        $now->modify('+ 1 Days');        
        if($dtstart <= $now){
            //var_dump($dtstart);
            //var_dump($now);
            $this->setRedirect('index.php/component/pbbooking/recap?Itemid=176','Occorre cancellare la prenotazione con più di 24 ore di anticipo!');            
            return;
        }        
        $db->setQuery('delete from #__pbbooking_events where id = '.$db->escape(JRequest::getVar('eventId')));
        $db->query();
        $this->recap();            
    }
    
    function recap() {
        
        Pbdebug::log_msg('Calling recap method in front end','com_pbbooking'); 

        $user = JFactory::getUser();
        $db =JFactory::getDBO();
        $view = $this->getView('pbbooking','html');
        //retrieve booking events for logged user
        $db->setQuery("SELECT ev.id, ev.dtstart,ev.dtend, of.desc as office, tr.desc as transport
                        FROM `e3xea_pbbooking_events` as ev
                            JOIN (`e3xea_pbbooking_cals` as cl)
                                ON (cl.id = ev.cal_id)   
                            JOIN (`e3xea_pbbooking_lov_office` as of)
                                ON (of.id = cl.office)
                            JOIN (`e3xea_pbbooking_lov_transport` as tr)
                                ON (tr.id = cl.transport)
                        WHERE ev.dtstart >= now() and ev.uid = ".(int)$user->id)->loadObject();
        
        $user_events = $db->loadObjectList();        
        $view->events = $user_events;        
        $view->setLayout('recap');
        $view->display();
    }
	
    function validate() {
		
        $pendingid = JRequest::getVar('id');
        $email = JRequest::getVar('email',null);
        $token = JRequest::getVar('token',null);
    	
        $event_id = Pbbookinghelper::validate_pending($pendingid,$token);
        if ($event_id) {
		
            //load up the view
            $view = $this->getView('PBBooking','html');
            $view->setLayout('validated');
		
            //populate the view with data
            $db=JFactory::getDBO();
            $db->setQuery('select * from #__pbbooking_pending where id = '.$db->escape($pendingid));
            $view->pending = $db->loadObject();
            $db->setQuery("select * from #__pbbooking_treatments where id = ".$view->pending->service);
            $view->treatment = $db->loadObject();
            $db->setQuery("select * from #__pbbooking_cals where id = ".$view->pending->cal_id);
            $view->calendar = $db->loadObject();
            $db->setQuery('select * from #__pbbooking_config');
            $view->config = $db->loadObject();
            $db->setQuery('select * from #__pbbooking_events where id= '.$event_id);
            $view->event = $db->loadObject();

            //check if the appt is sent to auto validate as if it is we need to email the user
            if ($view->config->validation == 'auto') {
                Pbdebug::log_msg('validate() sending auto validation email for event id '.$event_id,'com_pbbooking');
                Pbbookinghelper::send_auto_validate_email($event_id);
            }
			
            //display the view
            $view->display();
        } else {
            $this->setRedirect('index.php?option=com_pbbooking',JText::_('COM_PBBOOKING_VALIDATION_PROBLEM'));
        }
    }
	
    function error() {
        //$this->setLayout('fail');
        JRequest::setVar('layout','fail');
        parent::display();
    }
	
		
   /**
    * Subscribe function
    *
    * @param int via JRequest picks up the cal_id to load the approriate calendar
    * @return string Outputs the ics formatted calendar from the database
    */
    function subscribe()
    {
        $view = $this->getView("Pbbooking","raw");
        $db = JFactory::getDbo();
        $db->setQuery('select * from #__pbbooking_config');
        $config = $db->loadObject();
    	
        //pump vars into view....
        $cal_id = JRequest::getInt('cal_id',0);
        if ($cal_id !=0 && JRequest::getVar('subscribe_secret',"") == $config->subscribe_secret && $config->allow_subscribe == 1) {
            $view->setLayout('ics_view');
            $db->setQuery("select * from #__pbbooking_cals where id = ".$db->escape($cal_id));
            $view->cal = $db->loadObject();

            $db->setQuery('select * from #__pbbooking_events where cal_id = '.$db->escape($cal_id));
            $view->events = $db->loadObjectList();
            $view->display();
        } else {
            echo JText::_('COM_PBBOOKING_SUBSCRIBE_MSG');
        }
    }

    /**
     * loads the view for a specific day showing all calendars, all time slots, and availability on each calendar.  Only called from individual_view.php
     * @param the date param object
     * @since 2.0.6
     * @access public
     */
    public function dayview()
    {
        $input = JFactory::getApplication()->input;
        $db = JFactory::getDbo();
        $view = $this->getView('pbbooking','html');

        $dateparam = $input->get('dateparam',date_create("now",new DateTimeZone(PBBOOKING_TIMEZONE))->format(DATE_ATOM),'string');
        $view->dateparam = date_create($dateparam,new DateTimezone(PBBOOKING_TIMEZONE));
        $cals = $db->setQuery('select * from #__pbbooking_cals')->loadObjectList();
        $config = $db->setQuery('select * from #__pbbooking_config')->loadObject();
        $opening_hours = json_decode($config->trading_hours,true);
        $start_time_arr = str_split($opening_hours[(int)$view->dateparam->format('w')]['open_time'],2);
        $end_time_arr = str_split($opening_hours[(int)$view->dateparam->format('w')]['close_time'],2);

        $view->cals = array();
        $view->opening_hours = $opening_hours[(int)$view->dateparam->format('w')];
        
        $view->config = $config;
        $hours_array = Pbbookinghelper::get_estremi_orario($cals, $view->dateparam);              
        $view->day_dt_start = $hours_array['open_time'];
        $view->day_dt_end = $hours_array['close_time'];
        //step back one time slot on $view->day_dt_end
        $view->dt_last_slot = clone $view->day_dt_end;
        $view->dt_last_slot->modify('- '.$config->time_increment.' minutes');

        $user = JFactory::getUser();
        $userProfile = JUserHelper::getProfile($user->id);
        foreach ($cals as $i=>$cal) {
            if($cal->status == 1 && strcasecmp($cal->office, $userProfile->profileautoscuola['office']) == 0){
                $licenseField = $userProfile->profileautoscuola['license'];                        
                if(strcmp($cal->license, $licenseField) == 0){
                    $transportField = $userProfile->profileautoscuola['transport'];                            
                    if(!$transportField || strcasecmp($cal->transport, $transportField) == 0){
                        $view->cals[$i] = new Calendar();
                        $view->cals[$i]->loadCalendarFromDbase(array($cal->id));
                    }
                }
            }
        }
        $view->setLayout('dayview');
        $view->display();
    }

    /**
     * responds to the create task
     * @param string the date and time from the command ?dtstart=201209041030
     * @param string the cal_id &cal=1
     * @since 2.0.6
     * @access public
     */
    public function create()
    {
        $input = JFactory::getApplication()->input;
        $db = JFactory::getDbo();
        $view = $this->getView('pbbooking','html');
        $config = $db->setQuery('select * from #__pbbooking_config')->loadObject();
	
        $dateparam = $input->get('dtstart',date_create('now',new DateTimeZone(PBBOOKING_TIMEZONE))->format('YmdHi'),'string');
        $dateparamback = $input->get('dtstart',date_create('now',new DateTimeZone(PBBOOKING_TIMEZONE))->format(DATE_ATOM),'string');
        $cal_id = $input->get('cal_id',0,'integer');
        $opening_hours = json_decode($config->trading_hours,true);
        $closing_time_arr = str_split( $opening_hours[date_create($dateparam,new DateTimezone(PBBOOKING_TIMEZONE))->format('w')]['close_time'],2 );
	
        $view->dateparam = date_create($dateparam,new DateTimeZone(PBBOOKING_TIMEZONE));
        $view->dateparamback = date_create($dateparamback,new DateTimeZone(PBBOOKING_TIMEZONE))->format("Ymd");
        $view->customfields = $db->setQuery('select * from #__pbbooking_customfields')->loadObjectList();
        $view->treatments = $db->setQuery('select * from #__pbbooking_treatments')->loadObjectList();
        $view->cal = new Calendar();
        $view->cal->loadCalendarFromDbase(array((int)$cal_id));
        $view->closing_time = clone $view->dateparam;
        $view->closing_time->setTime((int)$closing_time_arr[0],(int)$closing_time_arr[1],0);
        $view->config = $config;

        $view->setLayout('create');
        $view->display();
    }
}