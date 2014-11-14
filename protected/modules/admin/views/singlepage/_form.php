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
            <?php echo $form->dropDownList($model, 'cate_id', Singlepage::model()->getCate()); ?>
            <div class='form-error'><?php echo $form->error($model, 'cate_id'); ?></div>
        </td>
    </tr>
    <tr>
        <td align='right'><?php echo $form->label($model, 'sorting') ?></td>
        <td>
            <?php echo $form->textField($model, 'sorting') ?>
            <div class='form-error'><?php echo $form->error($model, 'sorting'); ?></div>
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
        <td colspan='2' align='center'>
            <input type='submit' class='bt2' value="保存" />
        </td>
    </tr>
</table>
<?php $this->endWidget(); ?>