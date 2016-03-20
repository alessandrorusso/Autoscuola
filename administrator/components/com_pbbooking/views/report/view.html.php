<?php

defined('_JEXEC') or die();
 
jimport( 'joomla.application.component.view' );
 

class PbbookingsViewreport extends PbAdminView
{

	function display($tpl = null)
        {
            $task = JRequest::getVar('task');
            if (!$task || $task=="display") {
                $this->report = JRequest::getVar('report');
            }
            parent::display($tpl);
        }
}