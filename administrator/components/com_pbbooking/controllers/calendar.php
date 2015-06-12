<?php

/**
 * @package    PurpleBeanie.PBBooking
 * @link http://www.purplebeanie.com
 * @license    GNU/GPL
 */
// No direct access

defined('_JEXEC') or die('Restricted access');

jimport('joomla.application.component.controller');

class PbbookingsControllercalendar extends JControllerLegacy {

    function __construct() {
        parent::__construct();

        // Register Extra tasks
        $this->registerTask('add', 'edit');

        //check calendars
        $db = JFactory::getDBO();
        $db->setQuery("select * from #__pbbooking_config limit 1");
        $config = $db->loadObject();

        if ($config->consolidated_view == 1) {
            //check of we have an out cal
            $db->setQuery("select * from #__pbbooking_cals where out_cal = 1");
            $cals = $db->loadObjectList();
            if (!isset($cals) || count($cals) == 0) {
                $app = JFactory::getApplication();
                $app->enqueueMessage('Non ci sono Calendari configurati. Per proseguire occorre crearne almeno uno.');
            }
        }
    }

    /**
     * Method to display the view
     *
     * @access    public
     */
    function display($cacheable = false, $options = array()) {
        //Select all calendar even closed.
        $sql = "select * from #__pbbooking_cals";
        $db = JFactory::getDBO();
        $db->setQuery($sql);
        $cals = $db->loadAssocList();
        JRequest::setVar('cals', $cals);
        JRequest::setVar('view', 'calendar');
        JRequest::setVar('layout', 'default');

        $view = $this->getView('calendar', 'html');
        $view->setLayout('default');
        $this->setupLov($db, $view);
        parent::display();
    }

    /**
     * Method to display the edit page
     */
    function edit() {
        $db = JFactory::getDBO();
        JRequest::setVar('view', 'calendar');
        JRequest::setVar('layout', 'form');
        JRequest::setVar('hidemainmenu', 1);

        //load up view
        $view = $this->getView('calendar', 'html');
        $view->setLayout('form');

        $config = $db->loadObject();
        $view->trading_hours = json_decode($config->trading_hours, true);

        $cid = JRequest::getVar('cid');
        if ($cid) {
            $sql = "select * from #__pbbooking_cals where id = " . $cid[0];
            $db->setQuery($sql);
            $cals = $db->loadAssocList();
            $this->setupLov($db, $view, $cals[0]['license']);
            $view->calendar = $cals[0];
            $view->trading_hours = ($cals[0]['hours'] > '') ? json_decode($cals[0]['hours'], true) : json_decode($config->trading_hours, true);
        } else {
            $this->setupLov($db, $view);
            $view->calendar = Array("in_cal" => 1, "out_cal" => 0, "id" => 0, "name" => "", 'office' => '1', 'transport' => '1', 'email' => '', 'status' => 1, 'color'=>'#FFFFFF');
        }

        $view->display();
    }

    function save() {
        $db = JFactory::getDBO();
        $path = JRequest::getVar('path');
        $in_cal = JRequest::getVar('in_cal', 0);
        $out_cal = JRequest::getVar('out_cal', 0);
        $name = JRequest::getVar('name');
        $office = JRequest::getVar('office');
        $license = JRequest::getVar('license');
        $transport = JRequest::getVar('transport');
        $id = JRequest::getVar('id');
        $is_open_arr = JRequest::getVar('is-open');
        $email = JRequest::getVar('email');
        $status = JRequest::getVar('status');
        $color = JRequest::getVar('color');

        //retreive opening hours
        $opening_hours = array();
        $i = 0;
        foreach (array('sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday') as $day) {
            if (in_array($i, $is_open_arr)) {
                $open_time = JRequest::getVar('open-time-' . $i);
                $close_time = JRequest::getVar('close-time-' . $i);
                $opening_hours[$i] = array('status' => 'open', 'open_time' => $open_time, 'close_time' => $close_time);
            } else {
                $opening_hours[$i] = array('status' => 'closed');
            }
            $i++;
        }

        //dump to opening hours string
        $opening_hours_string = (count($opening_hours) > 0) ? json_encode($opening_hours) : '';

        if ($id != 0) {
            $sql = sprintf("update #__pbbooking_cals set in_cal=%s,out_cal=%s,name='%s', hours = '%s', email = '%s', office = '%s', transport = '%s', status = '%s', license = '%s', color= '%s' where id = %s", $in_cal, $out_cal, $db->escape($name), $db->escape($opening_hours_string), $db->escape($email), $db->escape($office), $db->escape($transport), $db->escape($status), $db->escape($license), $db->escape($color), $id);
        } else {
            $sql = sprintf("insert into #__pbbooking_cals (in_cal,out_cal,name,hours,email, office, transport, status, license, color) values (%s,%s,'%s','%s','%s','%s','%s','%s','%s','%s')", $in_cal, $out_cal, $db->escape($name), $db->escape($opening_hours_string), $db->escape($email), $db->escape($office), $db->escape($transport), $db->escape($status), $db->escape($license), $db->escape($color));
        }

        $db->setQuery($sql);
        $db->query();
        $this->setRedirect('index.php?option=com_pbbooking&controller=calendar', null);
    }

    function remove() {
        $ids = JRequest::getVar('cid');
        foreach ($ids as $id) {
            $sql = sprintf("delete from #__pbbooking_cals where id = %s", $id);
            //echo $sql;
            $db = JFactory::getDBO();
            $db->setQuery($sql);
            $db->query();
        }
        $this->setRedirect('index.php?option=com_pbbooking&controller=calendar', null);
    }

    function close() {
        $ids = JRequest::getVar('cid');
        foreach ($ids as $id) {
            $sql = sprintf("update #__pbbooking_cals set status = 0 where id = %s", $id);
            //echo $sql;
            $db = JFactory::getDBO();
            $db->setQuery($sql);
            $db->query();
        }
        $this->setRedirect('index.php?option=com_pbbooking&controller=calendar', null);
    }

    function populateTransport() {
        JFactory::getDocument()->setMimeEncoding('application/json');
        JResponse::setHeader('Content-Disposition', 'attachment;filename="progress-report-results.json"');
        $licenseId = JRequest::getVar('licenseId');
        $db = JFactory::getDBO();       
        echo json_encode($this->calculateTransport($db, $licenseId));
        JFactory::getApplication()->close(); // or jexit();
    }

    private function calculateTransport($db, $licenseId) {
        if ($licenseId) {
            $sql = sprintf("select tr.* from  #__pbbooking_lov_transport tr, #__pbbooking_lov_transport_license tr_ls "
                    . "where tr.id = tr_ls.id_transport and "
                    . "tr_ls.id_license = %s", $licenseId);
        } else {
            $sql = "select * from #__pbbooking_lov_transport";
        }
        $db->setQuery($sql);
        return $db->loadAssocList();
    }

    private function setupLov($db, $view, $licenseId = null) {
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

        //Transport loading...
        $lovTransport = $this->calculateTransport($db, $licenseId);
        $view->transport = $lovTransport;
    }

}
