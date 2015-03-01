<?php
// No direct access to this file
defined('_JEXEC') or die('Restricted access');
 
if(!defined('DS'))
	define('DS',DIRECTORY_SEPARATOR);

class YoutubeGalleryTheme_Simple_Grid_2_3InstallerScript
{
	function preflight($route, $adapter)
	{
		YoutubeGalleryTheme_Simple_Grid_2_3InstallerScript::deleteIfExists();
	}
	
	function deleteIfExists()
	{
		//delete extension - type="file" AND 
		$db = JFactory::getDbo();
		$db->setQuery('DELETE FROM #__extensions WHERE name = "YoutubeGalleryTheme_Simple_Grid_2_3" ');
		if (!$db->query())    die( $db->stderr());      
	}
    
        function install($parent) 
        {
		$theme_name='Simple_Grid_2_3';
		$manifest = $parent->get("manifest");
		$parent = $parent->getParent();
		$source = $parent->getPath("source");
		$installer = new JInstaller();
		YoutubeGalleryTheme_Simple_Grid_2_3InstallerScript::deleteIfExists();
        	
	    	if(file_exists(JPATH_SITE.DS.'administrator'.DS.'components'.DS.'com_youtubegallery'.DS.'models'.DS.'themeimport.php'))
		{
		    $this->addTheme($source);
		}
		else
		{
		    echo '<h1 style="text-align:center;">Youtube Gallery not found. Please install it first.<br/>
		    <a href="http://www.joomlaboat.com/youtube-gallery">Youtube Gallery Home Page.</a>
		    </h1><br/><br/>';
		    return false;
		}
		
	}	
 
        function update($parent) 
        {
		$this->install($parent);
        }

	
	
	function uninstall($parent) 
        {
	}
	
	
	function addTheme($path)//$themecode
	{

	    if(file_exists($path.DS.'theme.txt'))
	    {
		require_once(JPATH_SITE.DS.'administrator'.DS.'components'.DS.'com_youtubegallery'.DS.'models'.DS.'themeimport.php');
		$ygmti= new YoutubeGalleryModelThemeImport;
		
		//Ok archive is fine, looks like it is really YG theme.
		$filedata=file_get_contents ($path.DS.'theme.txt');
		if($filedata=='')
		{
		    //Archive doesn't containe Theme Data
		    $msg='Theme Data file is empty';
		    echo '<h1>'.$msg.'</h1>';
		    return;
		}
		
		$theme_row=unserialize($filedata);
		
		if(file_exists($path.DS.'about.txt'))
		    $theme_row->themedescription=file_get_contents ($path.DS.'about.txt');
		else						
		    $theme_row->themedescription="";


		if($theme_row->mediafolder!='')
		{
		    //prepare media folder
		    $theme_row->mediafolder=$ygmti->prepareFolder($theme_row->mediafolder,JPATH_SITE.DS.'images'.DS);
		    echo '<p>Media Folder "'.$theme_row->mediafolder.'" created.</p>';
		    //move files
		    $ygmti->moveFiles($path,JPATH_SITE.DS.'images'.DS.$theme_row->mediafolder);
		}
		
		//Add record to database
		$theme_row->themename=$ygmti->getThemeName(str_replace('"','',$theme_row->themename));
		echo '<p>New Theme Name: '.$theme_row->themename.'</p>';

		$ygmti->saveTheme($theme_row);
		echo '<p>Theme Imported</p>';
		
	    }
	    else
	    {
		echo '<h1>File "theme.txt" not found.</h1>';
		$msg='Archive doesn\'t containe Gallery Data';
		return false;
	    }

	}
 
	function safe_dbNameQuote($v)
	{
		$db = JFactory::getDbo();
		$v2 = $db->nameQuote($v);
		if($v2=='')
			return '`'.$v.'`';
		else
			return $v2;
	}

}
