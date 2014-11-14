<?php
$form = $this->beginWidget('CActiveForm', array(
    'id' => 'id-form',
    'action' => $this->createUrl('save'),
        ));
?>
<table class='table'>
    <?php foreach ($setting as $k => $v): ?>
        <?php $info = Setting::model()->keyValue($k); ?>
        <tr>
            <td align='right'><?php echo $info['value'] ?></td>
            <td>
                <?php if (isset($info) && $info['type'] == 'text'): ?>
                <input name="setting[<?php echo $k ?>]" id="<?php echo $k ?>" type="text" maxlength="64" value="<?php echo $v ?>" />
            <?php elseif (isset($info) && $info['type'] == 'textarea'): ?>
                <textarea rows="8" cols="80" name="setting[<?php echo $k ?>]" id="<?php echo $k ?>"><?php echo $v ?></textarea>
            <?php endif; ?>
            </td>
        </tr>
    <?php endforeach; ?>
    
    <tr>
        <td colspan='2' align='center'>
            <input type='hidden' name='ID' value="{$system.ID}" />
            <input type='submit' value='设置' class='bt2' />
        </td>
    </tr>
</table>
<?php $this->endWidget(); ?>
