<?php
$isEdit = !empty($model->id);
$form = $this->beginWidget('CActiveForm', array(
    'id' => 'id-form',
    'action' => $this->createUrl('save'),
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
        <td align="right"><?php echo $form->label($model, 'seller_id') ?></td>
        <td>
            <?php echo $model->seller->seller_name?>
        </td>
    </tr>
    <tr>
        <td align="right"><?php echo $form->label($model, 'city_id') ?></td>
        <td>
            <?php echo $model->city->city_name?>
        </td>
    </tr>
    <tr>
        <td align="right"><?php echo $form->label($model, 'bc_id') ?></td>
        <td>
            <?php echo $model->bc->bc_name?>
        </td>
    </tr>
    <tr>
        <td align="right"><?php echo $form->label($model, 'outlets_id') ?></td>
        <td>
            <?php echo $model->outlets->outlets_name?>
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
        <td align="right"><?php echo $form->labelEx($model, 'coupon_name') ?></td>
        <td>
            <?php echo $form->textArea($model, 'coupon_name', array('rows' => 5, 'cols' => 50)) ?>
            <div class='form-error'><?php echo $form->error($model, 'coupon_name'); ?></div>
        </td>
    </tr>
    <tr>
        <td align='right'>主要品牌：</td>
        <td>
            <div id='main_brand' style="background: #EBEBE4;width:800px;min-height:150px;border:1px solid #A9A9A9">
                <?php if ($isEdit && isset($model->brands) && !empty($model->brands)): ?>
                    <?php foreach ($model->brands as $k => $v): ?>
                        <span id='brand_text_<?php echo $v->id ?>' style='padding:5px'><?php echo $v->brand_name ?></span>
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>&nbsp;&nbsp;
            <br/><input type='text' style='width:160px' id="search_brand_name" name='brand_name' placeholder="请输入检索内容" />&nbsp;&nbsp;
            <input type='button' class='bta' value='检索' id='searchbrand' /><span class='field_desc'>必须在多选框中选择，直接输入无效</span>
            <div class='main_brand'>
                <p style='float:right;margin:0px 5px 5px 0px;padding:0'><span class='close'>关闭</span></p>
                <p style='clear:both' id='brand_checkbox'>
                    <!--这里是搜索后的内容-->

                </p>
            </div>
        </td>
    </tr>
     <tr>
        <td align='right'><?php echo $form->label($model, 'start_time') ?></td>
        <td>
            <?php echo $form->dateField($model,'start_time'); ?>
        </td>
    </tr>
    <tr>
        <td align='right'><?php echo $form->label($model, 'expire_time') ?></td>
        <td>
            <?php echo $form->dateField($model,'expire_time'); ?>
            <span class="field_desc">过期时间必须比开始时间大</span>
        </td>
    </tr>
    <tr>
        <td align='right'><?php echo $form->label($model, 'if_use') ?></td>
        <td>
            <?php echo $form->radioButtonList($model, 'if_use', Outlets::model()->getIfUse(), array('separator' => '&nbsp;&nbsp;')); ?>
        </td>
    </tr>
    <tr>
        <td colspan='2' align='center'><input type='submit' value='保存' class='bt2' /></td>
    </tr>
</table>
<div id='brand_checkboxhidden'>
    <?php if ($isEdit && isset($model->brands) && !empty($model->brands)): ?>
        <?php foreach ($model->brands as $k => $v): ?>
            <input type="hidden" name="brand_id[]" value="<?php echo $v->id ?>" />
        <?php endforeach; ?>
    <?php endif; ?>
</div>
<?php $this->endWidget(); ?>
<input class="brand_city_id" type="hidden" value="all" />
<script type="text/javascript">
    var brand_url = "<?php echo $this->createUrl('/admin/ajax/searchbrand') ?>";
    var seller_url = "<?php echo $this->createUrl('/admin/ajax/searchseller') ?>";
    var posturl = "<?php echo $this->createUrl('/admin/ajax/getOutletsAndBcByCity'); ?>";
</script>