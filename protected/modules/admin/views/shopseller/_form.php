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
            <?php echo $form->labelEx($model, 'seller_name') ?>
        </td>
        <td>
            <?php echo $form->textField($model, 'seller_name') ?>
            <div class='form-error'><?php echo $form->error($model, 'seller_name'); ?></div>
        </td>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->label($model, 'seller_en_name') ?>
        </td>
        <td>
            <?php echo $form->textField($model, 'seller_en_name') ?>
            <div class='form-error'><?php echo $form->error($model, 'seller_en_name'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->label($model, 'username') ?>
        </td>
        <td>
            <?php echo $form->textField($model, 'username') ?>
            <div class='form-error'><?php echo $form->error($model, 'username'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->label($model, 'password') ?>
        </td>
        <td>
            <?php echo $form->textField($model, 'password') ?>
            <span class="field_desc">密码为空表示保持原来的密码</span>
            <div class='form-error'><?php echo $form->error($model, 'password'); ?></div>
        </td>
    </tr>
    
    <tr>
        <td colspan='2' align="center">
            <input type="submit" class='bt2' value='保存' >
        </td>
    </tr>
</table>
<?php $this->endWidget(); ?>