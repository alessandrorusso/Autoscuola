<?php
 /**
 * @package Gallery WD Lite
 * @author Web-Dorado
 * @copyright (C) 2014 Web-Dorado. All rights reserved.
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
 **/
 
defined('_JEXEC') or die('Restricted access');

 $popup_width = (int)JRequest::getVar('width',800);
    $image_width = $popup_width - 40;
    $popup_height = (int)JRequest::getVar('height',500);
    $image_height = $popup_height - 40;
    $image_id =JRequest::getVar('image_id',0);
    ?>
    <div style="display:table; width:100%; height:<?php echo $popup_height; ?>px;">
      <div style="display:table-cell; text-align:center; vertical-align:middle;">
        <img id="image_display" src="" style="max-width:<?php echo $image_width; ?>px; max-height:<?php echo $image_height; ?>px;"/>
      </div>
    </div>
    <script>
      var image_url = "<?php echo JURI::root().WD_BWG_UPLOAD_DIR.'/'; ?>" + window.parent.document.getElementById("image_url_<?php echo $image_id; ?>").value;
      window.document.getElementById("image_display").src = image_url + "?date=<?php echo date('Y-m-y H:i:s'); ?>";
    </script>
    <?php
    die();