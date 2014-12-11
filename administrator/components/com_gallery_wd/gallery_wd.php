<?php
 /**
 * @package Gallery WD Lite
 * @author Web-Dorado
 * @copyright (C) 2014 Web-Dorado. All rights reserved.
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
 **/

defined('_JEXEC') or die('Restricted access');

		$db	= JFactory::getDBO();
$query="SELECT MAX(version_id) FROM #__schemas";
$db->setQuery($query);
$version=$db->loadResult();

if((float)$version>3.1)
JHtml::_('behavior.tabstate');

JTable::addIncludePath(JPATH_ADMINISTRATOR . '/components/com_gallery_wd/tables');

define('WD_BWG_DIR', JPATH_COMPONENT_SITE);
define('WD_BWG_URL', JURI::root().'components/com_gallery_wd');
require_once JPATH_COMPONENT_ADMINISTRATOR .  '/helpers/submenu.php';


$db		=JFactory::getDBO();
$query="SHOW TABLES LIKE '#__bwg_option'";
$db->setQuery($query);


if ($db->query()) {

$query='SELECT images_directory FROM #__bwg_option WHERE id=1';
$db->setQuery($query);
define('WD_BWG_UPLOAD_DIR', $db->loadResult() . '/com_gallery_wd/uploads');
}
else {
 
define('WD_BWG_UPLOAD_DIR', "administrator/components/com_gallery_wd/uploads");
}


$query='SELECT watermark_url,built_in_watermark_url FROM #__bwg_option WHERE id=1';
$db->setQuery($query);
$watermark_urls=$db->loadObject();
$watermark_url='components/com_gallery_wd/images/watermark.png';
if($watermark_urls->watermark_url=='components/com_gallery_wd/images/watermark.png')
{
$query='UPDATE #__bwg_option SET watermark_url="'.JURI::root().$watermark_url.'" WHERE id=1';
$db->setQuery($query);
$db->query();
}

if($watermark_urls->built_in_watermark_url=='components/com_gallery_wd/images/watermark.png')
{
$query='UPDATE #__bwg_option SET built_in_watermark_url="'.JURI::root().$watermark_url.'" WHERE id=1';
$db->setQuery($query);
$db->query();
}

$document		=JFactory::getDocument();
$document->addStyleSheet(JURI::root() .'components/com_gallery_wd/css/bwg_tables.css" type="text/css" rel="stylesheet');
$document->addStyleSheet(JURI::root() .'components/com_gallery_wd/css/bwg_licensing.css" type="text/css" rel="stylesheet');
$document->addScript(JURI::root() . 'components/com_gallery_wd/js/jquery.ui.js');

$document->addScript(JURI::root() . 'components/com_gallery_wd/js/bwg.js');
// Execute the task.


//////////////ON UPDATE






/////////END UPDATE



$task='';
if(JRequest::getVar('task')!='')
{
if(strpos(JRequest::getVar('task'),'.'))
{
$task_array=explode('.',JRequest::getVar('task'));
$task=$task_array[1];
}
else
$task=JRequest::getVar('task');
}


if($task=='' or ($task!="add" AND $task!=='edit' ))
SpidermpSubMenu::build();

$controller = JControllerLegacy::getInstance('gallery_wd');
$controller->execute(JFactory::getApplication()->input->get('task'));
$controller->redirect();
