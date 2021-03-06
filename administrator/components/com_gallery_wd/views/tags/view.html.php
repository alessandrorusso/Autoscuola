<?php
 /**
 * @package Gallery WD
 * @author Web-Dorado
 * @copyright (C) 2014 Web-Dorado. All rights reserved.
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
 **/
 
defined('_JEXEC') or die('Restricted access');

// import Joomla view library
jimport('joomla.application.component.view');


class gallery_wdViewTags extends JViewLegacy
{
	/**
	 * HelloWorlds view display method
	 *
	 * @param   string $tpl The name of the template file to parse; automatically searches through the template paths.
	 *
	 * @return  mixed  A string if successful, otherwise a JError object.
	 */
	public function display($tpl = null)
	{
	JHtml::_('jquery.framework');
		// Get data from the model
		$model = $this->getModel();
		$input = JFactory::getApplication()->input;
		$result=$model->get_rows_data();
	
	$this->assignRef('get_rows_data',$result[0]);	
	$this->assignRef('pageNav',$result[1]);	
	$this->assignRef('lists',$result[2]);	
		$this->addToolBar();
		// Display the template
		parent::display($tpl);
	}

	
	protected function addToolBar()
	{

	JToolBarHelper::title(JText::_('Tags'));
	JToolBarHelper::apply('tags.save_tag');
	JToolBarHelper::deleteList('Are you sure you want to delete this item?','tags.delete_all');

	

	}

	/**
	 * Setting the toolbar
	 */
	
}