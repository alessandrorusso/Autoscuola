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


class gallery_wdViewComments extends JViewLegacy
{

	public function display($tpl = null)
	{
		// Get data from the model
		$model = $this->getModel();
		$input = JFactory::getApplication()->input;
	$document		=JFactory::getDocument();
	JHtml::_('jquery.framework');

$get_rows_data=$model->get_rows_data();
		

	$id=$input->get('id',0);
	$get_option_row_data=$model->get_option_row_data();
	$get_images_for_comments_table=$model->get_images_for_comments_table();
	
	$this->assignRef('get_option_row_data',$get_option_row_data);
	$this->assignRef('get_rows_data',$get_rows_data[0]);
	$this->assignRef('pageNav',$get_rows_data[1]);
	$this->assignRef('lists',$get_rows_data[2]);
	$this->assignRef('get_images_for_comments_table',$get_images_for_comments_table);


	
		
		
		$this->addToolBar();
		// Display the template
		parent::display($tpl);
	}

	
	protected function addToolBar()
	{

	JToolBarHelper::title(JText::_('Comments'));
	JToolBarHelper::publish('comments.publish');
	JToolBarHelper::unpublish('comments.unpublish');
	JToolBarHelper::deleteList('Are you sure you want to delete this item?','comments.delete');


	}
	

	
}