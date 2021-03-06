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
            <?php echo $form->labelEx($model, 'city_name') ?>
        </td>
        <td>
            <?php echo $form->textField($model, 'city_name') ?>
            <div class='form-error'><?php echo $form->error($model, 'city_name'); ?></div>
        </td>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->label($model, 'city_en_name') ?>
        </td>
        <td>
            <?php echo $form->textField($model, 'city_en_name') ?>
            <div class='form-error'><?php echo $form->error($model, 'city_en_name'); ?></div>
        </td>
    </tr>    
    <tr>
        <td align="right" width="20%">
            <?php echo $form->label($model, 'area_id') ?>
        </td>
        <td>
            <?php echo $form->dropDownList($model, 'area_id',  Area::model()->getAreaKv()) ?>
            <div class='form-error'><?php echo $form->error($model, 'area_id'); ?></div>
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
        <td align="right" width="20%">
           <?php echo $form->label($model, 'weather_url') ?>
        </td>
        <td>
            <?php echo $form->textField($model, 'weather_url') ?>
            <div class='form-error'><?php echo $form->error($model, 'weather_url'); ?></div>    
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
           <?php echo $form->label($model, 'description') ?>
        </td>
        <td>
            <?php echo $form->textArea($model, 'description',array('cols'=>'50','rows'=>'5')) ?>
            <div class='form-error'><?php echo $form->error($model, 'description'); ?></div>    
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
           <?php echo $form->label($model, 'if_use') ?>
        </td>
        <td>
            <?php echo $form->radioButtonList($model,'if_use', UtilD::getIfUse(),array('separator'=>'&nbsp;&nbsp;')); ?>
            <div class='form-error'><?php echo $form->error($model, 'if_use'); ?></div>    
        </td>
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
        <td colspan='2' align="center">
            <input type="submit" class='bt2' value='保存' >
        </td>
    </tr>
</table>
<?php $this->endWidget(); ?>