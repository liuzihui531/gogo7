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
<table class='table'>
    <tr>
        <td align='right'><?php echo $form->label($model, 'title') ?></td>
        <td>
            <?php echo $form->textField($model, 'title') ?>
            <div class='form-error'><?php echo $form->error($model, 'title'); ?></div>
        </td>
    </tr>
    <tr>
        <td align='right'><?php echo $form->label($model, 'cate_id') ?></td>
        <td>
            <?php echo $form->dropDownList($model, 'cate_id', Share::model()->getCate()); ?>
            <div class='form-error'><?php echo $form->error($model, 'cate_id'); ?></div>
        </td>
    </tr>
    <tr>
        <td align='right'><?php echo $form->label($model, 'area_id') ?></td>
        <td>
            <?php echo $form->dropDownList($model, 'area_id', Share::model()->getAreaKv()); ?>
            <div class='form-error'><?php echo $form->error($model, 'area_id'); ?></div>
        </td>
    </tr>
    <tr>
        <td align='right'><?php echo $form->label($model, 'tag') ?></td>
        <td>
            <?php echo $form->textField($model, 'tag') ?>
            <span class="field_desc">用逗号分隔，如(文章,文章)</span>
            <div class='form-error'><?php echo $form->error($model, 'tag'); ?></div>
        </td>
    </tr>
    <tr>
        <td align='right'><?php echo $form->label($model, 'content') ?></td>
        <td>
            <?php
            $this->widget('ext.wdueditor.WDueditor', array(
                'model' => $model,
                'attribute' => 'content',
                'language' => 'zh-cn',
                'width' => '800',
                'height' => '300',
                'editorOptions' => array(
                    'initialContent' => '',
                    'imageUrl'=> $this->createUrl('upload/ue_upload_image'),
                    'imagePath' => '',
                    //'initialFrameHeight' => '900'
                ),
                //'initialContent' => '',
//                'toolbars' => array(
//                    'FullScreen', 'Source', 'Undo', 'Redo', 'Bold'
//                ),
            ));
            ?>
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
        <td align="right" ><?php echo $form->label($model, 'page_keyword') ?></td>
        <td>
            <?php echo $form->textField($model, 'page_keyword', array('style' => 'width:400px')) ?>
            <div class='form-error'><?php echo $form->error($model, 'page_keyword'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right" ><?php echo $form->label($model, 'page_description') ?></td>
        <td>
            <?php echo $form->textArea($model, 'page_description', array('cols' => '50', 'rows' => '5')) ?>
            <div class='form-error'><?php echo $form->error($model, 'page_description'); ?></div>
        </td>
    </tr>
    <tr>
        <td align='right'><?php echo $form->label($model, 'is_top') ?></td>
        <td>
            <?php echo $form->radioButtonList($model, 'is_top', UtilD::getTrueOrFalse(), array('separator' => '&nbsp;&nbsp;')); ?>
        </td>
    </tr>
    <tr>
        <td align='right'><?php echo $form->label($model, 'status') ?></td>
        <td>
            <?php echo $form->radioButtonList($model, 'status', UtilD::getTrueOrFalse(), array('separator' => '&nbsp;&nbsp;')); ?>
        </td>
    </tr>
    <tr>
        <td colspan='2' align='center'>
            <input type='submit' class='bt2' value="保存" />
        </td>
    </tr>
</table>
<?php $this->endWidget(); ?>