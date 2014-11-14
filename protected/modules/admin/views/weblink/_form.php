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
    <?php $type_id = $model->type_id; ?>
<?php else: ?>
    <?php $type_id = Yii::app()->request->getParam('type_id',0);?>
    <input type="hidden" name="type_id" value="<?php echo $type_id ?>" />
<?php endif; ?>
<table class="table form">
    <?php if($type_id == 1): ?>
    <!--商家链接-->    
    <tr>
        <td align="right"><?php echo $form->label($model, 'city_id') ?></td>
        <td><?php echo $form->dropDownList($model, 'city_id',  City::model()->getCityKv()); ?>
            <div class='form-error'><?php echo $form->error($model, 'city_id'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right"><?php echo $form->label($model, 'title') ?></td>
        <td><?php echo $form->textField($model, 'title'); ?>
            <div class='form-error'><?php echo $form->error($model, 'title'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right"><?php echo $form->label($model, 'url') ?></td>
        <td><?php echo $form->urlField($model, 'url'); ?>
            <div class='form-error'><?php echo $form->error($model, 'url'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right"><?php echo $form->label($model, 'sorting') ?></td>
        <td><?php echo $form->textField($model, 'sorting'); ?>
            <div class='form-error'><?php echo $form->error($model, 'sorting'); ?></div>
        </td>
    </tr>
    <?php elseif($type_id == 2): ?>
    <!--首页banner--> 
    <tr>
        <td align="right"><?php echo $form->label($model, 'city_id') ?></td>
        <td><?php echo $form->dropDownList($model, 'city_id',  City::model()->getCityKv()); ?>
            <div class='form-error'><?php echo $form->error($model, 'city_id'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right"><?php echo $form->label($model, 'title') ?></td>
        <td><?php echo $form->textField($model, 'title'); ?>
            <div class='form-error'><?php echo $form->error($model, 'title'); ?></div>
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
        <td align="right"><?php echo $form->label($model, 'url') ?></td>
        <td><?php echo $form->urlField($model, 'url'); ?>
            <div class='form-error'><?php echo $form->error($model, 'url'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right"><?php echo $form->label($model, 'sorting') ?></td>
        <td><?php echo $form->textField($model, 'sorting'); ?>
            <div class='form-error'><?php echo $form->error($model, 'sorting'); ?></div>
        </td>
    </tr>
    <?php elseif($type_id == 3): ?>
    <!--首页通栏banner-->
    <tr>
        <td align="right"><?php echo $form->label($model, 'title') ?></td>
        <td><?php echo $form->textField($model, 'title'); ?>
            <div class='form-error'><?php echo $form->error($model, 'title'); ?></div>
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
        <td align="right"><?php echo $form->label($model, 'sorting') ?></td>
        <td><?php echo $form->textField($model, 'sorting'); ?>
            <div class='form-error'><?php echo $form->error($model, 'sorting'); ?></div>
        </td>
    </tr>
    <?php endif; ?>
    <tr>
        <td colspan='2' align='center'>
            <input type="submit" class="submit" value="保存"/>
        </td>
    </tr>
</table>
<?php $this->endWidget(); ?>