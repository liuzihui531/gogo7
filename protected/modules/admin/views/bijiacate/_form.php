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
        <td align='right'>主要品牌：</td>
        <td>
            <div id='main_brand_radio' style="background: #EBEBE4;width:800px;min-height:150px;border:1px solid #A9A9A9">
                <?php if ($isEdit && isset($model->brand_id) && !empty($model->brand_id)): ?>
                        <span id='brand_radio_text_<?php echo $model->id ?>' style='padding:5px'><?php echo $model->brand->brand_name ?></span>
                <?php endif; ?>
            </div>&nbsp;&nbsp;
            <br/><input type='text' style='width:160px' id="search_brand_radio_name" name='brand_radio_name' placeholder="请输入检索内容" />&nbsp;&nbsp;
            <input type='button' class='bta' value='检索' id='searchbrand_radio' /><span class='field_desc'>单选</span>
            <div class='main_brand_radio'>
                <p style='float:right;margin:0px 5px 5px 0px;padding:0'><span class='close'>关闭</span></p>
                <p style='clear:both' id='brand_radio_checkbox'>
                    <!--这里是搜索后的内容-->

                </p>
            </div>
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