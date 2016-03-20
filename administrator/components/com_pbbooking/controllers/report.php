<?php

/**
 * @package    PurpleBeanie.PBBooking
 * @link http://www.purplebeanie.com
 * @license    GNU/GPL
 */
// No direct access

defined('_JEXEC') or die('Restricted access');

jimport('joomla.application.component.controller');

class PbbookingsControllerreport extends JControllerLegacy {

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
        $view = $this->getView('report', 'html');
        
        //Office loading...
        $sqlOffice = "select * from #__pbbooking_lov_office";
        $db->setQuery($sqlOffice);
        $lovOffice = $db->loadAssocList();
        $view->office = $lovOffice;

        //License loading...
        $sqlLicense = "select * from #__pbbooking_lov_license";
        $db->setQuery($sqlLicense);
        $lovLicense = $db->loadAssocList();
        $view->license = $lovLicense;
        
        //Loading all user...
        $sqlUsers = "select distinct ev.uid as user, us.username as username, ll.desc as patente, lo.desc as sede
                    from e3xea_pbbooking_events ev, 
                         e3xea_users us, 
	                 e3xea_user_profiles pr, 
	                 e3xea_user_profiles pr1,
	                 e3xea_pbbooking_lov_license ll,
  	                 e3xea_pbbooking_lov_office lo
                    where ev.uid=us.id
                    and ev.uid=pr.user_id
                    and pr.user_id=pr1.user_id
                    and pr.profile_key='profileautoscuola.license'
                    and pr1.profile_key='profileautoscuola.office'
                    and pr.profile_value=ll.id
                    and pr1.profile_value=lo.id";
        $db->setQuery($sqlUsers);
        $allUsers = $db->loadRowList();
        $view->users = $allUsers;

        $view->setLayout('display');
        $view->display();
    }

    function recap() {
         JFactory::getDocument()->setMimeEncoding('application/json');
        JResponse::setHeader('Content-Disposition', 'attachment;filename="progress-report-results.json"');
        $userId = JRequest::getVar('userId');
        $db =JFactory::getDBO();
        
        //retrieve booking events for logged user
        $db->setQuery("SELECT ev.id, ev.dtstart,ev.dtend, of.desc as office, tr.desc as transport
                        FROM `e3xea_pbbooking_events` as ev
                            JOIN (`e3xea_pbbooking_cals` as cl)
                                ON (cl.id = ev.cal_id)   
                            JOIN (`e3xea_pbbooking_lov_office` as of)
                                ON (of.id = cl.office)
                            JOIN (`e3xea_pbbooking_lov_transport` as tr)
                                ON (tr.id = cl.transport)
                        WHERE ev.uid = ".(int)$userId);
        //WHERE ev.dtstart >= now() and ev.uid = ".(int)$userId);
        $user_events = $db->loadObjectList();
        $ret = array();
        foreach ($user_events as $event){
            $row = array();
            $dataEvento = date_create($event->dtstart,new DateTimeZone(PBBOOKING_TIMEZONE))->format('d-m-Y') ;
            $oraInizioEvento = date_create($event->dtstart,new DateTimeZone(PBBOOKING_TIMEZONE))->format('H:i');
            $oraFineEvento = date_create($event->dtend,new DateTimeZone(PBBOOKING_TIMEZONE))->format('H:i');
            $row=[$dataEvento, $oraInizioEvento.'-'.$oraFineEvento, $event->office, $event->transport];
            $ret[] = $row;
        }
        echo json_encode($ret);        
        JFactory::getApplication()->close();
    }
  
}