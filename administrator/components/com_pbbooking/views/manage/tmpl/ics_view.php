<?php
/**
 * @version		ics_view.php
 * @copyright		Purple Beanie
 * @license		GNU General Public License version 2 or later; 
 */

$cal= "BEGIN:VCALENDAR
VERSION:2.0
CALSCALE:GREGORIAN
METHOD:REQUEST
BEGIN:VEVENT
UID:".$this->event->id."@".JURI::root(false)."
PRIORITY:1
DTSTART:".date_create($this->event->dtstart,new DateTimeZone(PBBOOKING_TIMEZONE))->format('Ymd')."T".date_create($this->event->dtstart,new DateTimeZone(PBBOOKING_TIMEZONE))->format('His')."
DTEND:".date_create($this->event->dtend,new DateTimeZone(PBBOOKING_TIMEZONE))->format('Ymd')."T".date_create($this->event->dtend,new DateTimeZone(PBBOOKING_TIMEZONE))->format('His')."
DESCRIPTION:".$this->event->description."
ORGANIZER:CN=ORGANIZER:mailto:prova@prova.it
SUMMARY:".$this->event->summary."
END:VEVENT
END:VCALENDAR";

header('HTTP/1.1 200 OK');
header('Accept-Ranges: bytes');
header('Content-Length: '.strlen($cal));
header('Content-Type: text/calendar');
header("Content-Disposition: attachment; filename=\"prenotazione.ics\""); 


?>
<?php echo $cal;?>