<?php 
defined('JPATH_BASE') or die;
 
class plgUserProfileautoscuola extends JPlugin
{
    function onContentPrepareData($context, $data)
    {
        // Check we are manipulating a valid form.
        if (!in_array($context, array('com_users.profile','com_users.registration','com_users.user','com_admin.profile'))){
            return true;
        }
 
        $userId = isset($data->id) ? $data->id : 0;
 
        // Load the profile data from the database.
        $db = JFactory::getDbo();
        $db->setQuery(
            'SELECT profile_key, profile_value FROM #__user_profiles' .
            ' WHERE user_id = '.(int) $userId .
            ' AND profile_key LIKE \'profileautoscuola.%\'' .
            ' ORDER BY ordering'
        );
        $results = $db->loadRowList();
 
        // Check for a database error.
        if ($db->getErrorNum()) {
            $this->_subject->setError($db->getErrorMsg());
            return false;
        }
 
        // Merge the profile data.
        $data->profileautoscuola = array();
        foreach ($results as $v) {
            $k = str_replace('profileautoscuola.', '', $v[0]);
            $data->profileautoscuola[$k] = $v[1];
        }
 
        return true;
    }
 
    function onContentPrepareForm($form, $data)
    {
        // Load user_profile plugin language
        $lang = JFactory::getLanguage();
        $lang->load('plg_user_profileautoscuola', JPATH_ADMINISTRATOR);
 
        if (!($form instanceof JForm)) {
            $this->_subject->setError('JERROR_NOT_A_FORM');
            return false;
        }
        // Check we are manipulating a valid form.
        if (!in_array($form->getName(), array('com_users.profile', 'com_users.registration','com_users.user','com_admin.profile'))) {
            return true;
        }

        // Add the profile fields to the form.
        JForm::addFormPath(dirname(__FILE__).'/profiles');
        $form->loadFile('profile', false);	
		
		$form->setFieldAttribute('phone', 'required', 'required', 'profileautoscuola');
		$form->setFieldAttribute('office', 'required', 'required', 'profileautoscuola');
                $form->setFieldAttribute('license', 'required', 'required', 'profileautoscuola');   
    }
 
    function onUserAfterSave($data, $isNew, $result, $error)
    {
        $userId    = JArrayHelper::getValue($data, 'id', 0, 'int');
 
        if ($userId && $result && isset($data['profileautoscuola']) && (count($data['profileautoscuola'])))
        {
            try
            {
                $db = &JFactory::getDbo();
                $db->setQuery('DELETE FROM #__user_profiles WHERE user_id = '.$userId.' AND profile_key LIKE \'profileautoscuola.%\'');
                if (!$db->query()) {
                    throw new Exception($db->getErrorMsg());
                }
 
                $tuples = array();
                $order    = 1;
                foreach ($data['profileautoscuola'] as $k => $v) {
                    $tuples[] = '('.$userId.', '.$db->quote('profileautoscuola.'.$k).', '.$db->quote($v).', '.$order++.')';
                }
 
                $db->setQuery('INSERT INTO #__user_profiles VALUES '.implode(', ', $tuples));
                if (!$db->query()) {
                    throw new Exception($db->getErrorMsg());
                }
            }
            catch (JException $e) {
                $this->_subject->setError($e->getMessage());
                return false;
            }
        }
 
        return true;
    }
 
    function onUserAfterDelete($user, $success, $msg)
    {
        if (!$success) {
            return false;
        }
 
        $userId    = JArrayHelper::getValue($user, 'id', 0, 'int');
 
        if ($userId)
        {
            try
            {
                $db = JFactory::getDbo();
                $db->setQuery(
                    'DELETE FROM #__user_profiles WHERE user_id = '.$userId .
                    " AND profile_key LIKE 'profileautoscuola.%'"
                );
 
                if (!$db->query()) {
                    throw new Exception($db->getErrorMsg());
                }
            }
            catch (JException $e)
            {
                $this->_subject->setError($e->getMessage());
                return false;
            }
        }
 
        return true;
    }
  
}
?>