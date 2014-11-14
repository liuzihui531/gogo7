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
            <?php echo $form->labelEx($model, 'brand_name') ?>
        </td>
        <td>
            <?php echo $form->textField($model, 'brand_name') ?>
            <div class='form-error'><?php echo $form->error($model, 'brand_name'); ?></div>
        </td>
        </td>
    </tr>
     <tr>
        <td align="right" width="20%">
            <?php echo $form->label($model, 'brand_en_name') ?>
        </td>
        <td>
            <?php echo $form->textField($model, 'brand_en_name') ?>
            <div class='form-error'><?php echo $form->error($model, 'brand_en_name'); ?></div>
        </td>
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
           <?php echo $form->label($model, 'cate_id') ?>
        </td>
        <td>
            <?php echo $form->checkBoxList($model,'cate_id',  Brand::model()->getCate(),array('separator'=>'&nbsp;&nbsp;')); ?>
            <div class='form-error'><?php echo $form->error($model, 'cate_id'); ?></div>    
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
        <td align="right" width="20%">
           <?php echo $form->label($model, 'is_recommend') ?>
        </td>
        <td>
            <?php echo $form->radioButtonList($model,'is_recommend', UtilD::getTrueOrFalse(),array('separator'=>'&nbsp;&nbsp;')); ?>
            <div class='form-error'><?php echo $form->error($model, 'is_recommend'); ?></div>    
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
        <td colspan='2' align="center">
            <input type="submit" class='bt2' value='保存' >
        </td>
    </tr>
</table>
<?php $this->endWidget(); ?>