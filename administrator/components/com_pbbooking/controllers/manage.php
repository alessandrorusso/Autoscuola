<?php
/**
 * @package    PurpleBeanie.PBBooking
 * @link http://www.purplebeanie.com
 * @license    GNU/GPL
 */
 
// No direct access
 
defined( '_JEXEC' ) or die( 'Restricted access' );
 
jimport('joomla.application.component.controller');
 

class PbbookingsControllermanage extends JControllerLegacy
{
	
    function __construct()
    {
        parent::__construct();

        $config =JFactory::getConfig();
        date_default_timezone_set($config->get('offset'));	

        //load the helper method. may not need it but it has good functions for events.
        require_once JPATH_SITE.DS.'components'.DS.'com_pbbooking'.DS.'helpers'.DS.'pbbookinghelper.php';
    }
	
    /**
     * Method to display the view
     *
     * @access    public
     */
    function display($cacheable=false,$options=array())
    {		
        $db = JFactory::getDbo();
        $view = $this->getView('manage','html');
		
        //stuff params
        $view->dateString = JRequest::getVar('date') ? JRequest::getVar('date') : '';
        $view->date = (JRequest::getVar('date')) ? date_create(JRequest::getVar('date'),new DateTimeZone(PBBOOKING_TIMEZONE)) : date_create("now",new DateTimeZone(PBBOOKING_TIMEZONE));
        $db->setQuery('select * from #__pbbooking_config');
        $view->config = $db->loadObject();
        $db->setQuery('select * from #__pbbooking_day_note');
        $view->day_notes = $db->loadObjectList();
        $db->setQuery('select * from #__pbbooking_cals where status=1');
        $view->cals = $db->loadObjectList();
        foreach($view->cals as $cal){            
            $view->cal_objs[$cal->id] = new calendar;
            $view->cal_objs[$cal->id]->loadCalendarFromDbase(array($cal->id));
        }

        //sort out openign and closing times
        $opening_hours = json_decode($view->config->trading_hours,true);
        $opening_time_arr = str_split($opening_hours[$view->date->format('w')]['open_time'],2);
        $closing_time_arr = str_split($opening_hours[$view->date->format('w')]['close_time'],2);
        $view->dt_start = date_create($view->date->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
        $view->dt_end = date_create($view->date->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
        $view->dt_start->setTime((int)$opening_time_arr[0],(int)$opening_time_arr[1]);
        $view->dt_end->setTime((int)$closing_time_arr[0],(int)$closing_time_arr[1]);
    	
        //display the view.
        JToolbarHelper::addNew('create');
        $view->display();
    }
    
    /**
     * edit - a method to edit an existing event in the database
     *
     * @param int the event id
     */
    function edit()
    {
        $db = JFactory::getDbo();
		
        if ($_SERVER['REQUEST_METHOD'] == "GET") {
			
            //render the edit form
            $view = $this->getView('manage','html');
			
            //load data
            $db->setQuery('select * from #__pbbooking_config');
            $view->config = $db->loadObject();
            $db->setQuery('select * from #__pbbooking_events where id = '.$db->escape(JRequest::getInt('id')));
            $view->event = $db->loadObject();
            $db->setQuery('select * from #__pbbooking_treatments');
            $view->services = $db->loadObjectList();
            $db->setQuery('select * from #__pbbooking_cals where id = '.$view->event->cal_id);
            $view->cal = $db->loadObject();
            
            //sort out openign and closing times
            
            $opening_hours = ($view->cal->hours > '') ? json_decode($view->cal->hours,true) : json_decode($config->trading_hours,true);
            $opening_time_arr = str_split($opening_hours[date_create($view->event->dtstart, new DateTimeZone(PBBOOKING_TIMEZONE))->format('w')]['open_time'],2);
            $closing_time_arr = str_split($opening_hours[date_create($view->event->dtstart, new DateTimeZone(PBBOOKING_TIMEZONE))->format('w')]['close_time'],2);
            $view->dt_start = date_create($view->event->dtstart,new DateTimeZone(PBBOOKING_TIMEZONE));
            $view->dt_end = date_create($view->event->dtstart,new DateTimeZone(PBBOOKING_TIMEZONE));
            $view->dt_start->setTime($opening_time_arr[0],$opening_time_arr[1]);
            $view->dt_end->setTime($closing_time_arr[0],$closing_time_arr[1]);
			
            //display the view
            $view->setLayout('edit_event');
            JToolbarHelper::save('edit',Jtext::_('COM_PBBOOKING_SAVE_CHANGES'));
            JToolbarHelper::trash('delete',Jtext::_('COM_PBBOOKING_DELETE_EVENT'),false);
            JToolbarHelper::custom('view_ical','view_ics','',Jtext::_('COM_PBBOOKING_VIEW_ICS'),false);
            JToolbarHelper::cancel();
            $view->display();
        }
		
        if ($_SERVER['REQUEST_METHOD'] == "POST") {
            $db->setQuery('select * from #__pbbooking_events where id = '.$db->escape(JRequest::getInt('id')));
            $event = $db->loadObject();
            
            $event->description = JRequest::getVar('description');
            if ($db->updateObject('#__pbbooking_events',$event,'id')) {
		$this->setRedirect('index.php?option=com_pbbooking&controller=manage&date='.JRequest::getVar('date'),Jtext::_('COM_PBBOOKING_EDIT_SUCCESS'));
            } else {
		echo $db->getErrorMsg();
            }
	}	
    }

    /**
     * create - a method to insert a new record into the database
     *
     */
    function create()
    {
        $db = JFactory::getDbo();
		
        if ($_SERVER['REQUEST_METHOD'] == "GET") {
            //render the create form
            $view = $this->getView('manage','html');
    		
            //load data
            $db->setQuery('select * from #__pbbooking_customfields');
            $view->customfields = $db->loadObjectList();
            $db->setQuery('select* from #__pbbooking_treatments');
            $view->services = $db->loadObjectList();
            $db->setQuery('select * from #__pbbooking_config');
            $view->config = $db->loadObject();
            $view->date = date_create(JRequest::getVar('date'),new DateTimeZone(PBBOOKING_TIMEZONE));
            $db->setQuery('select * from #__pbbooking_cals where status=1');
            $view->cals = $db->loadObjectList();

            //sort out openign and closing times
            $opening_hours = json_decode($view->config->trading_hours,true);
            $opening_time_arr = str_split($opening_hours[$view->date->format('w')]['open_time'],2);
            $closing_time_arr = str_split($opening_hours[$view->date->format('w')]['close_time'],2);
            $view->dt_start = date_create($view->date->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
            $view->dt_end = date_create($view->date->format(DATE_ATOM),new DateTimeZone(PBBOOKING_TIMEZONE));
            $view->dt_start->setTime($opening_time_arr[0],$opening_time_arr[1]);
            $view->dt_end->setTime($closing_time_arr[0],$closing_time_arr[1]);

            //display the view
            $view->setLayout('create_event');
            JToolbarHelper::save('create');
            $view->display();
        }
	
        if ($_SERVER['REQUEST_METHOD'] == "POST") {			            
            $event_id = Pbbookinghelper::save_pending_event($_POST);            
            
            if(is_int($event_id)){
                $validated_id = Pbbookinghelper::validate_pending($event_id, null);
                if ($validated_id) {
                    $this->setRedirect('index.php?option=com_pbbooking&controller=manage&date='.JRequest::getVar('date'),"Prenotazione salvata correttamente.");
                } else {
                    $this->setRedirect('index.php?option=com_pbbooking&controller=manage&date='.JRequest::getVar('date'),JText::_('COM_PBBOOKING_VALIDATION_ERROR').' '.$db->getErrorMsg());
                }
            } else {
                $this->setRedirect('index.php?option=com_pbbooking&controller=manage&date='.JRequest::getVar('date'),JText::_('COM_PBBOOKING_CREATE_ERROR').' '.$event_id);
            }
        }	
    }

    /**
     * delete - a method to delete an existing event in the database 
     * 
     * @param int the event id
     */
    function delete()
    {
        echo print_r($_POST);
        $db = JFactory::getDbo();
        $db->setQuery('delete from #__pbbooking_events where id = '.$db->escape(JRequest::getVar('id')));
        if ($db->query()) {
            $this->setRedirect('index.php?option=com_pbbooking&controller=manage&date='.JRequest::getVar('date'),JText::_('COM_PBBOOKING_DELETE_SUCCESFUL'));
        } else {
            $this->setRedirect('index.php?option=com_pbbooking&controller=manage&date='.JRequest::getVar('date'),JText::_('COM_PBBOOKING_DELETE_PROBLEM').' '.$db->getErrorMsg());
        }
    }
    
    function blockdays()
    {
        $db = JFactory::getDbo();
		
        //get the view
        $view = $this->getView('manage','html');
        $view->setLayout('block_days');
		
        //load up data in the view
        $db->setQuery('select * from #__pbbooking_block_days');
        $view->blocked_days = $db->loadObjectList();
        $db->setQuery('select * from #__pbbooking_config');
        $config=$db->loadObject();
        $view->trading_hours = json_decode($config->trading_hours,true);
	$db->setQuery('select * from #__pbbooking_cals');
	$view->cals = $db->loadObjectList();
        $db->setQuery('select * from #__pbbooking_config');
        $view->config = $db->loadObject();
						
	//display the view
	JToolBarHelper::save('save_block_days');
	$view->display();
    }
	
    function save_block_days()
    {
        $db = JFactory::getDBO();
        $is_open_arr = JRequest::getVar('is-open');                
		
        $opening_hours = array();
        $i=0;
        foreach (array('sunday','monday','tuesday','wednesday','thursday','friday','saturday') as $day) {
            if (in_array($i,$is_open_arr)) {
                $open_time = JRequest::getVar('open-time-'.$i);
                $close_time = JRequest::getVar('close-time-'.$i);
                $opening_hours[$i] = array('status'=>'open','open_time'=>$open_time,'close_time'=>$close_time);
            } else {
                $opening_hours[$i] = array('status'=>'closed');
            }
            $i++;
        }
		
        //dump to opening hours var in config
        $db->setQuery('update #__pbbooking_config set trading_hours = "'.$db->escape(json_encode($opening_hours)).'" where id =1');
        if (!$db->query()) {
            error_log($db->getErrorMsg());
        }
                
        //have i got any block date ranges to deal with?
        if ($_POST['block-from-date'] && $_POST['block-end-date']) {
            $input = JFactory::getApplication()->input;
            $return = Pbbookinghelper::validate_block($input);
            if($return['type'] == 'error'){
                $this->setRedirect('index.php?option=com_pbbooking&controller=manage&task=blockdays',$return['message'], $return['type']);
            }
            else{
                $block_start_date = $input->get('block-from-date',null,'string');
                $block_end_date = $input->get('block-end-date',null,'string');
                $block_start_hour = $input->get('block-start-hour', null, 'string');
                $block_end_hour = $input->get('block-end-hour', null, 'string');
                $block_note = $input->get('block-comment',"No Comment",'string');
                $block_calendars = implode(',',$input->get('block_calendars',null,'array'));
                $make_recurring = $input->get('reccur',0,'integer');
                $r_int = $input->get('interval',0,'integer');
                $r_freq = $input->get('frequency',null,'string');
                $r_end = $input->get('recur_end',null,'string');

                $block = new JObject(array('block_start_date'=>date_create($block_start_date,new DateTimeZone(PBBOOKING_TIMEZONE))->format(DATE_ATOM),'block_end_date'=>date_create($block_end_date,new DateTimeZone(PBBOOKING_TIMEZONE))->format(DATE_ATOM),
                                            'block_start_hour'=>$block_start_hour,'block_end_hour'=>$block_end_hour,'block_note'=>$block_note,'calendars'=>$block_calendars));
                if ($make_recurring == 1){
                    $block->setProperties(array('r_int'=>$r_int,'r_freq'=>$r_freq,'r_end'=>date_create($r_end,new DateTimeZone(PBBOOKING_TIMEZONE))->format(DATE_ATOM)));
                }
                $db->insertObject('#__pbbooking_block_days',$block);
                    
                $this->setRedirect('index.php?option=com_pbbooking&controller=manage&task=blockdays','Blocco salvato correttamente');
            }	
        }
        else{
            $this->setRedirect('index.php?option=com_pbbooking&controller=manage&task=blockdays','Settings Saved');
        }		
    }
	
    /**
     * Deletes a blocked day fromm the database
     *
     */
    function delete_blocked_day()
    {
        $db = JFactory::getDBO();
        $sql = sprintf('delete from #__pbbooking_block_days where id = %s',$db->escape(JRequest::getVar('id')));
        $db->setQuery($sql);
        $db->query();
        $this->setRedirect('index.php?option=com_pbbooking&controller=manage&task=blockdays');
    }
	
    /**
     * view_ical - used to render an ics file that the user can dump into their diary app
     *
     */
    function view_ical()
    {
        if (!JRequest::getVar('format') == 'raw') {
            $this->setRedirect(JURI::root(false).'administrator/index.php?option=com_pbbooking&controller=manage&task=view_ical&id='.JRequest::getInt('id').'&format=raw');
            return;
        }
        $view=$this->getView('manage','raw');
	$view->setLayout('ics_view');
	
	$db = JFactory::getDbo();
	$db->setQuery('select * from #__pbbooking_events where id='.$db->escape((int)JRequest::getInt('id')));		
	$view->event = $db->loadObject();
	
	$view->display();
    }
        
    function add_note()
    {
        JFactory::getDocument()->setMimeEncoding( 'application/json' );
        JResponse::setHeader('Content-Disposition','attachment;filename="progress-report-results.json"');
        $noteId = JRequest::getVar('noteId');
        $date = (JRequest::getVar('noteDate'));
        $text = JRequest::getVar('noteText');                
        $db = JFactory::getDbo();
        try{                      
            if ($noteId) {
                $db->setQuery('select * from #__pbbooking_day_note where id = '.$db->escape(JRequest::getVar('noteId')));
                $note = $db->loadObject();                
                $note->text = $text;                
                $db->updateObject('#__pbbooking_day_note',$note, 'id');
                echo json_encode($note);
            }		
            else{
                $day_note = new JObject(array('date'=>$db->escape($date),'text'=>$db->escape($text)));  
                $db->insertObject('#__pbbooking_day_note',$day_note); 
                $lastRowId = $db->insertid();
                $day_note->setProperties(array('id'=>$lastRowId));
                echo json_encode($day_note);
            }               
                    
            JFactory::getApplication()->close();

        } catch (Exception $ex) {                 
            echo json_encode(['message'=>$ex->getMessage()]); 
            JFactory::getApplication()->close();
        }
    }
        
    function loadCalendarRelatedInfo(){
        JFactory::getDocument()->setMimeEncoding( 'application/json' );
        JResponse::setHeader('Content-Disposition','attachment;filename="progress-report-results.json"');
        
        try{
            $calId = JRequest::getVar('cal_id') ? JRequest::getVar('cal_id') : 0;
            $date = (JRequest::getVar('date_sel')) ? date_create(JRequest::getVar('date_sel'),new DateTimeZone(PBBOOKING_TIMEZONE)) : date_create("now",new DateTimeZone(PBBOOKING_TIMEZONE));
            $db = JFactory::getDbo();
            $config = $db->setQuery('select * from #__pbbooking_config')->loadObject();
            if ($calId != 0) {
                $db->setQuery('select * from #__pbbooking_cals where id = '.$db->escape((int)$calId));
                $cal = $db->loadObject();                                        
                if($cal){                         
                    $registrationGroupUsers = Pbbookinghelper::get_calendar_users($cal);                        
                    //$result['users'] = $registrationGroupUsers;
                    echo json_encode($registrationGroupUsers);
                }
                else{
                    throw new Exception('Nessun calendario trovato');                        
                }
            }                
            JFactory::getApplication()->close();
        } catch (Exception $ex) {               
            echo json_encode(['message'=>$ex->getMessage()]); 
            JFactory::getApplication()->close();
        }
    }
}