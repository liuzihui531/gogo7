<?php
$isEdit = !empty($model->id);
$form = $this->beginWidget('CActiveForm', array(
    'id' => 'id-form',
    'action' => $this->createUrl('save'),
    'enableAjaxValidation' => true,
    'enableClientValidation' => true,
    'clientOptions' => array(
        'validateOnSubmit' => true,
    ),
    'htmlOptions' => array(
        'enctype' => 'multipart/form-data',
    ),
        ));
?>
<?php if ($isEdit): ?>
    <input type="hidden" name="id" value="<?php echo $model->id; ?>" />
<?php endif; ?>
<table class="table">
    <tr>
        <td align="right" width="20%">
            <?php echo $form->labelEx($model, 'name') ?>
        </td>
        <td>
            <?php echo $form->textField($model, 'name') ?>
            <div class='form-error'><?php echo $form->error($model, 'name'); ?></div>
        </td>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->label($model, 'sorting') ?>
        </td>
        <td>
            <?php echo $form->numberField($model, 'sorting') ?>
            <div class='form-error'><?php echo $form->error($model, 'sorting'); ?></div>
        </td>
    </tr>
    
    <tr>
        <td colspan='2' align="center">
            <input type="submit" class='bt2' value='保存' >
        </td>
    </tr>
</table>
<?php $this->endWidget(); ?>