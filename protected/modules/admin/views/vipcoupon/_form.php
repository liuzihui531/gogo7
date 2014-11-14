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
<table class="table form">
    <tr>
        <td align="right"><?php echo $form->label($model, 'seller_name') ?></td>
        <td><?php echo $form->textField($model, 'seller_name'); ?>
            <div class='form-error'><?php echo $form->error($model, 'seller_name'); ?></div>
        </td>

    </tr>
    <tr>
        <td align="right"><?php echo $form->label($model, 'content') ?></td>
        <td><?php echo $form->textArea($model, 'content',array('rows'=>'5','cols'=>'50')); ?>
            <div class='form-error'><?php echo $form->error($model, 'content'); ?></div></td>

    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->label($model, 'image') ?>
        </td>
        <td>
            <?php echo $form->fileField($model, 'image', array('name' => 'image')); ?>
            <?php if ($isEdit): ?>
            <span style="position:relative;width:100px;height:100px">
                <span style="position:absolute;top:-30px;right:10px;color:white;font-size:25px;background:rgba(0,0,0,0.5);cursor:pointer;" onclick="$(this).next('img').attr('src', '');
                        $('input[name=delete_image]').val(1)">X</span>
                <img src="<?php echo $model->image ?>" style="width:100px;height:100px" />
            </span>
            <input type="hidden" name="delete_image" value="0" />
            <?php endif; ?>
        </td>
    </tr>    
    <tr>
        <td align="right"><?php echo $form->label($model, 'status') ?></td>
        <td>
            <?php echo $form->radioButtonList($model, 'status', UtilD::getTrueOrFalse(), array('separator' => "&nbsp;&nbsp;&nbsp;&nbsp;")); ?>
            <span class="field_desc"></span>
            <div class='form-error'><?php echo $form->error($model, 'status'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right"><?php echo $form->label($model, 'is_top') ?></td>
        <td>
            <?php echo $form->radioButtonList($model, 'is_top', UtilD::getTrueOrFalse(), array('separator' => "&nbsp;&nbsp;&nbsp;&nbsp;")); ?>
            <div class='form-error'><?php echo $form->error($model, 'is_top'); ?></div>
        </td>
    </tr>
    <tr>
        <td colspan='2' align='center'>
            <input type="submit" class="submit" value="保存"/>
        </td>
    </tr>
</table>
<?php $this->endWidget(); ?>