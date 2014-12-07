<?php
/**
 * plg_simplejquery - Easily include jQuery libraries in your site
 * ---------------------------------------------------------------------- 
 * author    	Giovanni Mansillo
 * @copyright	Copyright (C) 2012 Giovanni Mansillo. All rights reserved.
 * @license		GNU General Public License version 2 or later
 */
 
 // no direct access
defined('_JEXEC') or die;

jimport('joomla.plugin.plugin');

class plgSystemSimplejquery extends JPlugin{
	
	function onBeforeCompileHead(){
	
		$document = &JFactory::getDocument();		
		
		/* CHECK IF THE PLUGIN IS EXECUTED IN SAFE MODE
		* the plugin executed in safe mode only loads the local copy of jquery (ver. 1.7) */
		if ($this->params->get('safe-mode')==1)
			$document->addScript( 'plugins/system/simplejquery/js/jquery.min.js' );	
		if ($this->params->get('safe-mode')==1)
			return;
		
		/* LOAD THE LATEST VERSION OF JQUERY 1.x AVAIBLE ON GOOGLE CDN */
		$document->addScript( 'https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js' );	
		
		/* CALL THE NOCONFLICT FUNCTION */
		if ($this->params->get('no-conflict')==1) {
			
			if ($this->params->get('no-conflict-var')!=NULL) {
				/* ASSIGN THE NOCONFLICT FUNCTION TO A SPECIFIC VARIABLE */
				$alias=$this->params->get('no-conflict-var');
				$alias="var ".$alias." = jQuery.noConflict();";
				$document->addScriptDeclaration($alias);
			}else{
				/* ASSIGN THE NOCONFLICT FUNCTION TO THE DEFAULT VARIABLE "jQuery" */
				$document->addScriptDeclaration("jQuery.noConflict();");
			}	
		}
		
		/* LOAD THE LATEST VERSION OF JQUERY UI 1.x AVAIBLE ON GOOGLE CDN */
		if ($this->params->get('ui')==1) {
			$document->addScript( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js' );	
		}
		
		/* LOAD JQUERY UI STYLESHEETS */
		if ($this->params->get('ui-style')>=0 and $this->params->get('ui')==1) {
			switch ($this->params->get('ui-style')) {
				case 0: /* LOAD THE DEFAULT JQUERY STYLESHEET */
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/base/jquery-ui.css' );	
					break;
				case 1: 
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/black-tie/jquery-ui.css' );	
					break;
				case 2:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/blitzer/jquery-ui.css' );	
					break;
				case 3:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/cupertino/jquery-ui.css' );	
					break;
				case 4:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/dark-hive/jquery-ui.css' );	
					break;
				case 5:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/dot-luv/jquery-ui.css' );	
					break;
				case 7:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/eggplant/jquery-ui.css' );	
					break;
				case 8:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/excite-bike/jquery-ui.css' );	
					break;
				case 9:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/flick/jquery-ui.css' );	
					break;
				case 10:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/hot-sneaks/jquery-ui.css' );	
					break;
				case 11:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/humanity/jquery-ui.css' );	
					break;
				case 12:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/le-frog/jquery-ui.css' );	
					break;
				case 13:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/mint-choc/jquery-ui.css' );	
					break;
				case 14:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/overcast/jquery-ui.css' );	
					break;
				case 15:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/pepper-grinder/jquery-ui.css' );	
					break;
				case 16:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/redmond/jquery-ui.css' );	
					break;
				case 17:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/smoothness/jquery-ui.css' );	
					break;
				case 18:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/south-street/jquery-ui.css' );	
					break;
				case 19:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/start/jquery-ui.css' );	
					break;
				case 20:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/sunny/jquery-ui.css' );	
					break;
				case 21:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/swanky-purse/jquery-ui.css' );	
					break;
				case 22:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/trontastic/jquery-ui.css' );	
					break;
				case 23:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/ui-darkness/jquery-ui.css' );	
					break;
				case 24:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/ui-lightness/jquery-ui.css' );	
					break;
				case 25:
					$document->addStyleSheet( 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/vader/jquery-ui.css' );	
					break;
			}
		}
		
		/* PRINT USER CODE AFTER LOADING JQUERY/JQUERY-UI LIBRARYES */
		$code=$this->params->get('code');
		if($code!=NULL)
			$document->addScriptDeclaration($code);
		
		return true;
	}
}




