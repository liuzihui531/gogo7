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
            <?php echo $form->labelEx($model, 'cate_id') ?>
        </td>
        <td>
            <?php echo $form->dropDownList($model,'cate_id',  Bijiacate::model()->getCateKv()); ?>
            <div class='form-error'><?php echo $form->error($model, 'cate_id'); ?></div>
        </td>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->labelEx($model, 'us_price') ?>
        </td>
        <td>
            <?php echo $form->textField($model, 'us_price') ?>
            <div class='form-error'><?php echo $form->error($model, 'us_price'); ?></div>
        </td>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->labelEx($model, 'european_price') ?>
        </td>
        <td>
            <?php echo $form->textField($model, 'european_price') ?>
            <div class='form-error'><?php echo $form->error($model, 'european_price'); ?></div>
        </td>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->labelEx($model, 'hk_price') ?>
        </td>
        <td>
            <?php echo $form->textField($model, 'hk_price') ?>
            <div class='form-error'><?php echo $form->error($model, 'hk_price'); ?></div>
        </td>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->labelEx($model, 'cn_price') ?>
        </td>
        <td>
            <?php echo $form->textField($model, 'cn_price') ?>
            <div class='form-error'><?php echo $form->error($model, 'cn_price'); ?></div>
        </td>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->labelEx($model, 'sorting') ?>
        </td>
        <td>
            <?php echo $form->numberField($model, 'sorting') ?>
            <div class='form-error'><?php echo $form->error($model, 'sorting'); ?></div>
        </td>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->labelEx($model, 'status') ?>
        </td>
        <td>
            <?php echo $form->radioButtonList($model,'status', UtilD::getIfUse(),array('separator'=>'&nbsp;&nbsp;')); ?>
            <div class='form-error'><?php echo $form->error($model, 'status'); ?></div>
        </td>
        </td>
    </tr>
    <tr>
        <td colspan='2' align="center">
            <input type="submit" class='bt2' value='保存' >
        </td>
    </tr>
</table>
<div id='brand_radio_checkboxhidden'>
    <?php if ($isEdit && isset($model->brand_id) && !empty($model->brand_id)): ?>
            <input type="hidden" name="brand_id" value="<?php echo $model->brand_id ?>" />
    <?php endif; ?>
</div>
<?php $this->endWidget(); ?>
<script type="text/javascript">
    var brand_radio_url = "<?php echo $this->createUrl('/admin/ajax/searchbrandradio') ?>";
</script>