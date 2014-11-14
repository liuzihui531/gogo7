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
            <?php echo $form->labelEx($model, 'title') ?>
        </td>
        <td>
            <?php echo $form->textField($model, 'title') ?>
            <div class='form-error'><?php echo $form->error($model, 'title'); ?></div>
        </td>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->label($model, 'en_title') ?>
        </td>
        <td>
            <?php echo $form->textField($model, 'en_title') ?>
            <div class='form-error'><?php echo $form->error($model, 'en_title'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->label($model, 'goods_name') ?>
        </td>
        <td>
            <?php echo $form->textField($model, 'goods_name') ?>
            <div class='form-error'><?php echo $form->error($model, 'goods_name'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->label($model, 'goods_en_name') ?>
        </td>
        <td>
            <?php echo $form->textField($model, 'goods_en_name') ?>
            <div class='form-error'><?php echo $form->error($model, 'goods_en_name'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->label($model, 'cate_id') ?>
        </td>
        <td>
            <?php echo $form->dropDownList($model, 'cate_id',  Shopcate::model()->getCate()) ?>
            <div class='form-error'><?php echo $form->error($model, 'cate_id'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->label($model, 'seller_id') ?>
        </td>
        <td>
            <?php echo $form->dropDownList($model, 'seller_id', ShopSeller::model()->getSellerKv()) ?>
            <div class='form-error'><?php echo $form->error($model, 'seller_id'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->label($model, 'price') ?>
        </td>
        <td>
            <?php echo $form->textField($model, 'price') ?>
            <div class='form-error'><?php echo $form->error($model, 'price'); ?></div>
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
            <?php echo $form->label($model, 'sorting') ?>
        </td>
        <td>
            <?php echo $form->numberField($model, 'sorting') ?>
            <div class='form-error'><?php echo $form->error($model, 'sorting'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->label($model, 'is_top') ?>
        </td>
        <td>
            <?php echo $form->radioButtonList($model, 'is_top',  UtilD::getTrueOrFalse(),array('separator' => '&nbsp;&nbsp;')) ?>
            <div class='form-error'><?php echo $form->error($model, 'is_top'); ?></div>
        </td>
    </tr>
    <tr>
        <td align='right'><?php echo $form->label($model, 'description') ?></td>
        <td>
            <?php
            $this->widget('ext.wdueditor.WDueditor', array(
                'model' => $model,
                'attribute' => 'description',
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
            <?php echo $form->label($model, 'goods_count') ?>
        </td>
        <td>
            <?php echo $form->numberField($model, 'goods_count') ?>
            <div class='form-error'><?php echo $form->error($model, 'goods_count'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->label($model, 'start_time') ?>
        </td>
        <td>
            <?php echo $form->dateField($model, 'start_time') ?>
            <div class='form-error'><?php echo $form->error($model, 'start_time'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->label($model, 'expire_time') ?>
        </td>
        <td>
            <?php echo $form->dateField($model, 'expire_time') ?>
            <div class='form-error'><?php echo $form->error($model, 'expire_time'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right" width="20%">
            <?php echo $form->label($model, 'is_coupon') ?>
        </td>
        <td>
            <?php echo $form->radioButtonList($model, 'is_coupon',  UtilD::getTrueOrFalse(),array('separator' => '&nbsp;&nbsp;')) ?>
            <div class='form-error'><?php echo $form->error($model, 'is_coupon'); ?></div>
        </td>
    </tr>
    <tr>
        <td colspan='2' align="center">
            <input type="submit" class='bt2' value='保存' >
        </td>
    </tr>
</table>
<?php $this->endWidget(); ?>