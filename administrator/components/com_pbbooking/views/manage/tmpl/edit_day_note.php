<?php ?>
<div class="span10">
    <form class="adminForm" action="index.php" method="post" name="adminForm" id="adminForm">
		
        <fieldset>
            Dettaglio Nota
            <table>
                <tr>
                    <th><label for="text">Testo</label></th>
                    <td>
                        <textarea name="text" value="<?php echo $this->note->text;?>" style="width:500px;"> </textarea>
                    </td>
                </tr>

                <tr>
                    <th><label for="public">Rendi pubblico</label></th>
                    <td><input type="checkbox" name="public" value="1"></td>
                </tr>

            </table>
	</fieldset>
	<!--input type="hidden" name="id" value="<?php echo $this->event->id;?>"/>
	<input type="hidden" name="option" value="com_pbbooking"/>
	<input type="hidden" name="controller" value="manage"/>
	<input type="hidden" name="task" value=""/ -->
    </form>
</div>
