<?php

/**
 * @package    PurpleBeanie.PBBooking
 * @link http://www.purplebeanie.com
 * @license    GNU/GPL
 */
// No direct access

defined('_JEXEC') or die('Restricted access');

jimport('joomla.application.component.controller');

class PbbookingsControllermanage extends JControllerLegacy {

    function __construct() {
        parent::__construct();

        $config = JFactory::getConfig();
        date_default_timezone_set($config->get('offset'));

        //load the helper method. may not need it but it has good functions for events.
        require_once JPATH_SITE . DS . 'components' . DS . 'com_pbbooking' . DS . 'helpers' . DS . 'pbbookinghelper.php';
    }

    /**
     * Mostra la pagina di gestione delle 
     * prenotazioni lato amministratore 
     *
     * @access    public
     */
    function display($cacheable = false, $options = array()) {
        $db = JFactory::getDbo();
        $view = $this->getView('manage', 'html');

        //Recupero la data selezionata
        $view->dateString = JRequest::getVar('date') ? JRequest::getVar('date') : '';
        $view->date = (JRequest::getVar('date')) ? date_create(JRequest::getVar('date'), new DateTimeZone(PBBOOKING_TIMEZONE)) : date_create("now", new DateTimeZone(PBBOOKING_TIMEZONE));
        $view->selectedOffice = (JRequest::getVar('selectedOffice')) ? JRequest::getVar('selectedOffice') : 1;
        
        //Recupero la configurazione generale, i calendari attivi e le note
        $db->setQuery('select * from #__pbbooking_config');
        $view->config = $db->loadObject();
        $db->setQuery('select * from #__pbbooking_day_note');
        $view->day_notes = $db->loadObjectList();
        $db->setQuery('select * from #__pbbooking_cals where status=1 order by office, license');
        //$db->setQuery('select * from #__pbbooking_cals where status=1 and office='.$db->escape($view->selectedOffice).  ' order by office, license');
        $view->cals = $db->loadObjectList();
        $db->setQuery('select * from #__pbbooking_lov_office');
        $view->offices = $db->loadObjectList();
        $view->events = Pbbookinghelper::get_all_events();
        
        //Popolo l'oggetto calendario da utilizzare in pagina
        foreach ($view->cals as $cal) {
            $view->cal_objs[$cal->id] = new calendar;
            $view->cal_objs[$cal->id]->loadCalendarFromDbase(array($cal->id));
        }

        //Imposto gli orari di apertura e chiusura
        $opening_hours = json_decode($view->config->trading_hours, true);
        $opening_time_arr = str_split($opening_hours[$view->date->format('w')]['open_time'], 2);
        $closing_time_arr = str_split($opening_hours[$view->date->format('w')]['close_time'], 2);
        $view->dt_start = date_create($view->date->format(DATE_ATOM), new DateTimeZone(PBBOOKING_TIMEZONE));
        $view->dt_end = date_create($view->date->format(DATE_ATOM), new DateTimeZone(PBBOOKING_TIMEZONE));
        $view->dt_start->setTime((int) $opening_time_arr[0], (int) $opening_time_arr[1]);
        $view->dt_end->setTime((int) $closing_time_arr[0], (int) $closing_time_arr[1]);

        $view->setLayout('display');
        $view->display();
    }

    /**
     * Consente di modificare una prenotazione
     * aggiungendo una descrizione
     *
     * @param int id, l'identificativo della prenotazione
     */
    function edit() {
        $db = JFactory::getDbo();

        if ($_SERVER['REQUEST_METHOD'] == "GET") {

            //Imposto il form della modifica
            $view = $this->getView('manage', 'html');

            //Recupero i dati generali e della prenotazione da modificare
            $db->setQuery('select * from #__pbbooking_config');
            $view->config = $db->loadObject();
            $db->setQuery('select * from #__pbbooking_events where id = ' . $db->escape(JRequest::getInt('id')));
            $view->event = $db->loadObject();
            $view->event->summary = '';
            $db->setQuery('select * from #__pbbooking_treatments');
            $view->services = $db->loadObjectList();
            $db->setQuery('select * from #__pbbooking_cals where id = ' . $view->event->cal_id);
            $view->cal = $db->loadObject();
            $view->selectedOffice = (JRequest::getVar('selectedOffice')) ? JRequest::getVar('selectedOffice') : 1;
            //Imposto gli orari di apertura e chiusura
            $opening_hours = ($view->cal->hours > '') ? json_decode($view->cal->hours, true) : json_decode($config->trading_hours, true);
            $opening_time_arr = str_split($opening_hours[date_create($view->event->dtstart, new DateTimeZone(PBBOOKING_TIMEZONE))->format('w')]['open_time'], 2);
            $closing_time_arr = str_split($opening_hours[date_create($view->event->dtstart, new DateTimeZone(PBBOOKING_TIMEZONE))->format('w')]['close_time'], 2);
            $view->dt_start = date_create($view->event->dtstart, new DateTimeZone(PBBOOKING_TIMEZONE));
            $view->dt_end = date_create($view->event->dtstart, new DateTimeZone(PBBOOKING_TIMEZONE));
            $view->dt_start->setTime($opening_time_arr[0], $opening_time_arr[1]);
            $view->dt_end->setTime($closing_time_arr[0], $closing_time_arr[1]);
            
            $view->users = Pbbookinghelper::get_calendar_users($view->cal);

            //Imposto i pulsanti di Modifica, Salva, Cancella, EsportaCalendario, Annulla
            $view->setLayout('edit_event');
            JToolbarHelper::save('edit', Jtext::_('COM_PBBOOKING_SAVE_CHANGES'));
            JToolbarHelper::trash('delete', Jtext::_('COM_PBBOOKING_DELETE_EVENT'), false);
            JToolbarHelper::custom('view_ical', 'view_ics', '', Jtext::_('COM_PBBOOKING_VIEW_ICS'), false);
            JToolbarHelper::cancel();
            $view->display();
        }

        if ($_SERVER['REQUEST_METHOD'] == "POST") {
            $db->setQuery('select * from #__pbbooking_events where id = ' . $db->escape(JRequest::getInt('id')));
            $event = $db->loadObject();
            $selectedOffice = (JRequest::getVar('selectedOffice')) ? JRequest::getVar('selectedOffice') : 1;
            $event->description = JRequest::getVar('description');
            $event->uid = JRequest::getVar('calendar-user');
            if(JRequest::getVar('summary') == ''){
                $event->summary = JFactory::getUser($event->uid)->username; 
            }
            else{
                $event->summary = JRequest::getVar('summary');
            }
            if ($db->updateObject('#__pbbooking_events', $event, 'id')) {
                $this->setRedirect('index.php?option=com_pbbooking&controller=manage&date=' . JRequest::getVar('date') . '&selectedOffice=' . $selectedOffice, Jtext::_('COM_PBBOOKING_EDIT_SUCCESS'));
            } else {
                echo $db->getErrorMsg();
            }
        }
    }

    /**
     * Consente di creare una nuova 
     * prenotazione lato amministrazione
     *
     */
    function create() {
        $db = JFactory::getDbo();

        if ($_SERVER['REQUEST_METHOD'] == "GET") {
            $input = JFactory::getApplication()->input;
            
            //Imposto il form di creazione
            $view = $this->getView('manage', 'html');

            //carico i dati generali
            $config = $db->setQuery('select * from #__pbbooking_config')->loadObject();
            $dateparam = $input->get('dtstart', date_create('now', new DateTimeZone(PBBOOKING_TIMEZONE))->format('YmdHi'), 'string');
            $cal_id = $input->get('cal_id', 0, 'integer');
            
            $view->cal = new Calendar();
            $view->cal->loadCalendarFromDbase(array((int) $cal_id));            
            $view->selectedOffice = $input->get('selectedOffice', 1, 'integer');
            $opening_hours = json_decode($config->trading_hours, true);            
            $closing_time_arr = str_split($opening_hours[date_create($dateparam, new DateTimezone(PBBOOKING_TIMEZONE))->format('w')]['close_time'], 2);                        
            
            $view->dateparam = date_create($dateparam, new DateTimeZone(PBBOOKING_TIMEZONE));
            $db->setQuery('select * from #__pbbooking_customfields');
            $view->customfields = $db->loadObjectList();
            $db->setQuery('select* from #__pbbooking_treatments');
            $view->services = $db->loadObjectList();
            $view->config = $config;
            
            $view->users = Pbbookinghelper::get_calendar_users($view->cal);
            $view->booking_time = clone $view->dateparam;
            $view->booking_time->modify('+ '.$config->time_increment.' minutes'); 
            $view->closing_time = clone $view->dateparam;
            $view->closing_time->setTime((int) $closing_time_arr[0], (int) $closing_time_arr[1], 0);
            
            //display the view
            $view->setLayout('create_event');
            JToolbarHelper::save('create');
            $view->display();
        }

        if ($_SERVER['REQUEST_METHOD'] == "POST") {
            $event_id = Pbbookinghelper::save_pending_event($_POST);
            $selectedOffice = (JRequest::getVar('selectedOffice')) ? JRequest::getVar('selectedOffice') : 1;
            if (is_int($event_id)) {
                $validated_id = Pbbookinghelper::validate_pending($event_id);
                if ($validated_id) {
                    $this->setRedirect('index.php?option=com_pbbooking&controller=manage&date=' . JRequest::getVar('date') . '&selectedOffice=' . $selectedOffice, "Prenotazione salvata correttamente.");
                } else {
                    $this->setRedirect('index.php?option=com_pbbooking&controller=manage&date=' . JRequest::getVar('date') . '&selectedOffice=' . $selectedOffice, JText::_('COM_PBBOOKING_VALIDATION_ERROR') . ' ' . $db->getErrorMsg());
                }
            } else {
                $this->setRedirect('index.php?option=com_pbbooking&controller=manage&date=' . JRequest::getVar('date') . '&selectedOffice=' . $selectedOffice, JText::_('COM_PBBOOKING_CREATE_ERROR') . ' ' . $event_id);
            }
        }
    }

    /**
     * Consente di cancellare una prenotazione
     * lato amministratore
     * 
     * @param int the event id
     */
    function delete() {
        echo print_r($_POST);
        $db = JFactory::getDbo();
        $db->setQuery('delete from #__pbbooking_events where id = ' . $db->escape(JRequest::getVar('id')));
        if ($db->query()) {
            $this->setRedirect('index.php?option=com_pbbooking&controller=manage&date=' . JRequest::getVar('date'), JText::_('COM_PBBOOKING_DELETE_SUCCESFUL'));
        } else {
            $this->setRedirect('index.php?option=com_pbbooking&controller=manage&date=' . JRequest::getVar('date'), JText::_('COM_PBBOOKING_DELETE_PROBLEM') . ' ' . $db->getErrorMsg());
        }
    }

    /**
     * Visualizza tutte le date bloccate 
     * sia interi giorni che blocchi parziali
     */
    function blockdays() {
        $db = JFactory::getDbo();

        //get the view
        $view = $this->getView('manage', 'html');
        $view->setLayout('block_days');

        //load up data in the view        
        $view->blocked_days = $this->getBlockedDays();        
        $db->setQuery('select * from #__pbbooking_config');
        $config = $db->loadObject();
        $view->trading_hours = json_decode($config->trading_hours, true);
        $view->config = $config;
        $db->setQuery('select * from #__pbbooking_cals');
        $view->cals = $db->loadObjectList();               
        
        $view->dt_start = date_create('now', new DateTimeZone(PBBOOKING_TIMEZONE));
        $view->dt_end = date_create('now', new DateTimeZone(PBBOOKING_TIMEZONE));
        $view->dt_start->setTime("09", "00");
        $view->dt_end->setTime("24", "00");
        
        $view->dt_start_2 = date_create('now', new DateTimeZone(PBBOOKING_TIMEZONE));
        $view->dt_end_2 = date_create('now', new DateTimeZone(PBBOOKING_TIMEZONE));
        $view->dt_start_2->setTime("09", "00");
        $view->dt_end_2->setTime("24", "00");

        //display the view
        JToolBarHelper::save('save_block_days');
        $view->display();
    }

    /**
     * Ricarica le date bloccate (metodo usato da dataTable)
     * @throws Exception
     */
    function reloadBlockdays() {
        JFactory::getDocument()->setMimeEncoding('application/json');
        JResponse::setHeader('Content-Disposition', 'attachment;filename="progress-report-results.json"');

        try {

            $builtBlockedDays = $this->getBlockedDays(JRequest::getVar('iDisplayStart'), (JRequest::getVar('iDisplayStart') + JRequest::getVar('iDisplayLength')));
            if (count($builtBlockedDays) > 0) {
                $ret['aaData'] = $builtBlockedDays;
                $db = JFactory::getDbo();
                $db->setQuery("SELECT id, DATE_FORMAT(block_start_date,'%d-%m-%Y') as block_start_date, DATE_FORMAT(block_end_date,'%d-%m-%Y') as block_end_date, block_start_hour, block_end_hour, block_note, calendars, r_int, r_freq, custom_recurrence, DATE_FORMAT(r_end,'%d-%m-%Y') as r_end FROM #__pbbooking_block_days where block_end_date >= CURDATE() order by block_end_date asc");
                $blocked_days = $db->loadObjectList();
                $ret['iTotalDisplayRecords'] = count($blocked_days);
                $ret['iTotalRecords'] = count($blocked_days);
                $ret['sEcho'] = JRequest::getVar('sEcho');
                echo json_encode($ret);
            } else {
                throw new Exception('Al momento non sono presenti orari di chiusura.');
            }
            JFactory::getApplication()->close();
        } catch (Exception $ex) {
            echo json_encode(['message' => $ex->getMessage()]);
            JFactory::getApplication()->close();
        }
    }

    private function getBlockedDays($from = 0, $to = 999999) {
        $db = JFactory::getDbo();
        $db->setQuery("SELECT id, DATE_FORMAT(block_start_date,'%d-%m-%Y') as block_start_date, "
                    . "DATE_FORMAT(block_end_date,'%d-%m-%Y') as block_end_date, block_start_hour, "
                    . "block_end_hour, block_note, calendars, r_int, r_freq, custom_recurrence, "
                    . "DATE_FORMAT(r_end,'%d-%m-%Y') as r_end "
                    . "FROM #__pbbooking_block_days where block_end_date >= CURDATE() "
                    . "order by block_end_date asc");

        $blocked_days = $db->loadObjectList();
        if (count($blocked_days) > 0) {
            $built_blocked_days = array();            
            foreach ($blocked_days as $blocked_day) {                
                $row = array();
                $calName = '';                    
                foreach (explode(',', $blocked_day->calendars) as $cal_id) {
                    if (isset($cal_id) && $cal_id != null) {
                        $calName = $calName . Pbbookinghelper::get_calendar_name_for_id($cal_id) . '<br/>';
                    }
                }
                $frequency = '';
                if (isset($blocked_day->r_int) && $blocked_day->r_int != 0) {                     
                    if($blocked_day->r_freq == 'custom'){                            
                        foreach (explode(',',$blocked_day->custom_recurrence) as $day_id) {
                            if (isset($day_id) && $day_id != null) {
                                $frequency = $frequency . Pbbookinghelper::get_day_name($day_id) . '<br/>';
                            }
                        }                            
                    }
                    else {
                        $frequency = JText::_('COM_PBBOOKING_EVENT_RECUR_' . strtoupper($blocked_day->r_freq));
                    }
                }                  

                $row = [$calName, $blocked_day->block_start_date, $blocked_day->block_start_hour, $blocked_day->block_end_hour, $frequency, $blocked_day->r_end, $blocked_day->block_note, $blocked_day->id];
                $built_blocked_days[] = $row;               
            }
            return $built_blocked_days;
        }
        return null;
    }
    
    /**
     * Elimina un blocco rendendo l'orario nuovamente
     * disponibile per una prenotazione
     */
    function delete_block() {
        
        $db = JFactory::getDbo();       
        $cal_id = JRequest::getVar('cal_id');
        $dtstart = JRequest::getVar('dtstart');
        $selectedOffice = (JRequest::getVar('selectedOffice'));
                
        if (isset($cal_id) && $cal_id != null) {
            $exception = new JObject(array('cal_id' => $cal_id, 'dtexcept' => date_create($dtstart, new DateTimeZone(PBBOOKING_TIMEZONE))->format(DATE_ATOM)));
            $db->insertObject('#__pbbooking_block_exceptions', $exception);                   
            $this->setRedirect('index.php?option=com_pbbooking&controller=manage&date=' . $dtstart . '&selectedOffice=' . $selectedOffice, 'Blocco rimosso correttamente');                    
        }
        else{
            $this->setRedirect('index.php?option=com_pbbooking&controller=manage&date=' . $dtstart . '&selectedOffice=' . $selectedOffice, 'Errore nella rimozione del blocco');                    
        }       
    }

    /**
     * Aggiorna i giorni di apertura con i relativi orari di Apertura e Chiusura
     * Inserisce un nuovo Blocco che può riferirsi ad uno o più calendari
     */
    function save_block_days() {
        $db = JFactory::getDBO();
        $is_open_arr = JRequest::getVar('is-open');

        $opening_hours = array();
        $i = 0;
        foreach (array('sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday') as $day) {
            if (in_array($i, $is_open_arr)) {
                $open_time = JRequest::getVar('open-time-' . $i);
                $close_time = JRequest::getVar('close-time-' . $i);
                if($open_time && $close_time){
                    $opening_hours[$i] = array('status' => 'open', 'open_time' => $open_time, 'close_time' => $close_time);
                }
                else{
                    $this->setRedirect('index.php?option=com_pbbooking&controller=manage&task=blockdays', 'Indicare Orario di apertura e chiusura per i Giorni lavorativi', 'error');
                }
            } else {
                $opening_hours[$i] = array('status' => 'closed');
            }
            $i++;
        }

        //dump to opening hours var in config
        $db->setQuery('update #__pbbooking_config set trading_hours = "' . $db->escape(json_encode($opening_hours)) . '" where id =1');
        if (!$db->query()) {
            error_log($db->getErrorMsg());
        }

        //have i got any block date ranges to deal with?
        if ($_POST['block-from-date'] && $_POST['block-end-date']) {
            $input = JFactory::getApplication()->input;
            $return = Pbbookinghelper::validate_block($input);
            if ($return['type'] == 'error') {
                $this->setRedirect('index.php?option=com_pbbooking&controller=manage&task=blockdays', $return['message'], $return['type']);
            }
            else {
                //riporto la data inizio in formato inglese (aaaa-mm-gg)
                $block_start_date = $input->get('block-from-date', null, 'string');
                $array_start_date = explode("-", $block_start_date);
                $block_start_date = $array_start_date[2]."-".$array_start_date[1]."-".$array_start_date[0]; 
                
                //riporto la data fine in formato inglese (aaaa-mm-gg)
                $block_end_date = $input->get('block-end-date', null, 'string');
                $array_end_date = explode("-", $block_end_date);
                $block_end_date = $array_end_date[2]."-".$array_end_date[1]."-".$array_end_date[0];
                
                //estraggo le ore di chiusura, le note ed i calendari associati
                $block_start_hour = $input->get('block-start-hour', null, 'string');
                $block_end_hour = $input->get('block-end-hour', null, 'string');
                $block_note = $input->get('block-comment', "No Comment", 'string');
                $block_calendars = implode(',', $input->get('block_calendars', null, 'array'));
                
                //verifico se è stata creato un blocco ricorsivo
                $make_recurring = $input->get('reccur', 0, 'integer');
                $r_int = $input->get('interval', 0, 'integer');
                $r_freq = $input->get('frequency', null, 'string');                
                $r_end = $input->get('recur_end', null, 'string');
                $array_r_end = explode("-", $r_end);
                $r_end = $array_r_end[2]."-".$array_r_end[1]."-".$array_r_end[0]; 

                $block = new JObject(array('block_start_date' => date_create($block_start_date, new DateTimeZone(PBBOOKING_TIMEZONE))->format(DATE_ATOM), 'block_end_date' => date_create($block_end_date, new DateTimeZone(PBBOOKING_TIMEZONE))->format(DATE_ATOM),
                    'block_start_hour' => $block_start_hour, 'block_end_hour' => $block_end_hour, 'block_note' => $block_note, 'calendars' => $block_calendars));
                if ($make_recurring == 1) {
                    $block->setProperties(array('r_int' => $r_int, 'r_freq' => $r_freq, 'r_end' => date_create($r_end, new DateTimeZone(PBBOOKING_TIMEZONE))->format(DATE_ATOM)));                    
                    if($r_freq == 'custom'){
                         $check_day = implode(',',JRequest::getVar('check_day'));                         
                         $block->setProperties(array('custom_recurrence' => $check_day));                        
                    }
                }
                $db->insertObject('#__pbbooking_block_days', $block);
                $this->setRedirect('index.php?option=com_pbbooking&controller=manage&task=blockdays', 'Blocco salvato correttamente');
            }
        } else {
            $this->setRedirect('index.php?option=com_pbbooking&controller=manage&task=blockdays', 'Indicare Dati di Inizio e Data di Fine del nuovo blocco', 'error');
        }
    }

    /**
     * Deletes a blocked day fromm the database
     *
     */
    function delete_blocked_day() {
        $db = JFactory::getDBO();
        $sql = sprintf('delete from #__pbbooking_block_days where id = %s', $db->escape(JRequest::getVar('id')));
        $db->setQuery($sql);
        $db->query();
        $this->setRedirect('index.php?option=com_pbbooking&controller=manage&task=blockdays', 'Chiusura cancellata correttamente');
    }

    /**
     * view_ical - used to render an ics file that the user can dump into their diary app
     *
     */
    function view_ical() {
        if (!JRequest::getVar('format') == 'raw') {
            $this->setRedirect(JURI::root(false) . 'administrator/index.php?option=com_pbbooking&controller=manage&task=view_ical&id=' . JRequest::getInt('id') . '&format=raw');
            return;
        }
        $view = $this->getView('manage', 'raw');
        $view->setLayout('ics_view');

        $db = JFactory::getDbo();
        $db->setQuery('select * from #__pbbooking_events where id=' . $db->escape((int) JRequest::getInt('id')));
        $view->event = $db->loadObject();

        $view->display();
    }

    function add_note() {
        JFactory::getDocument()->setMimeEncoding('application/json');
        JResponse::setHeader('Content-Disposition', 'attachment;filename="progress-report-results.json"');
        $noteId = JRequest::getVar('noteId');
        $date = (JRequest::getVar('noteDate'));
        $text = JRequest::getVar('noteText');
        $db = JFactory::getDbo();
        try {
            if ($noteId) {
                $db->setQuery('select * from #__pbbooking_day_note where id = ' . $db->escape(JRequest::getVar('noteId')));
                $note = $db->loadObject();
                $note->text = $text;
                $db->updateObject('#__pbbooking_day_note', $note, 'id');
                echo json_encode($note);
            } else {
                $day_note = new JObject(array('date' => $db->escape($date), 'text' => $db->escape($text)));
                $db->insertObject('#__pbbooking_day_note', $day_note);
                $lastRowId = $db->insertid();
                $day_note->setProperties(array('id' => $lastRowId));
                echo json_encode($day_note);
            }

            JFactory::getApplication()->close();
        } catch (Exception $ex) {
            echo json_encode(['message' => $ex->getMessage()]);
            JFactory::getApplication()->close();
        }
    }
    
    function delete_note() {        
        $noteId = JRequest::getVar('noteId');
        $date = (JRequest::getVar('noteDate'));
        $db = JFactory::getDbo();
        if ($noteId) {
            $db->setQuery('delete from #__pbbooking_day_note where id = ' . $db->escape(JRequest::getVar('noteId')));
            if ($db->query()) {
                $this->setRedirect('index.php?option=com_pbbooking&controller=manage&date=' . $date);
            } else {
                $this->setRedirect('index.php?option=com_pbbooking&controller=manage&date=' . $date, $db->getErrorMsg());
            }            
        } 
    }

    function loadCalendarRelatedInfo() {
        JFactory::getDocument()->setMimeEncoding('application/json');
        JResponse::setHeader('Content-Disposition', 'attachment;filename="progress-report-results.json"');

        try {
            $calId = JRequest::getVar('cal_id') ? JRequest::getVar('cal_id') : 0;
            $date = (JRequest::getVar('date_sel')) ? date_create(JRequest::getVar('date_sel'), new DateTimeZone(PBBOOKING_TIMEZONE)) : date_create("now", new DateTimeZone(PBBOOKING_TIMEZONE));
            $db = JFactory::getDbo();
            $config = $db->setQuery('select * from #__pbbooking_config')->loadObject();
            if ($calId != 0) {
                $db->setQuery('select * from #__pbbooking_cals where id = ' . $db->escape((int) $calId));
                $cal = $db->loadObject();
                if ($cal) {
                    $registrationGroupUsers = Pbbookinghelper::get_calendar_users($cal);
                    //$result['users'] = $registrationGroupUsers;
                    echo json_encode($registrationGroupUsers);
                } else {
                    throw new Exception('Nessun calendario trovato');
                }
            }
            JFactory::getApplication()->close();
        } catch (Exception $ex) {
            echo json_encode(['message' => $ex->getMessage()]);
            JFactory::getApplication()->close();
        }
    }
}