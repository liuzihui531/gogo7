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
        <td align='right' width='26%'><?php echo $form->labelEx($model, 'outlets_name') ?></td>
        <td width='75%'>
            <?php echo $form->textField($model, 'outlets_name') ?>
            <div class='form-error'><?php echo $form->error($model, 'outlets_name'); ?></div>
        </td>
    </tr>
    <tr>
        <td align='right'><?php echo $form->label($model, 'city_id') ?></td>
        <td>
            <?php echo $form->dropDownList($model, 'city_id', City::model()->getCityKv(), array('class' => 'brand_city_id')) ?>
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
        <td align='right'><?php echo $form->label($model, 'url') ?></td>
        <td>
            <?php echo $form->urlField($model, 'url') ?>
            <div class='form-error'><?php echo $form->error($model, 'url'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right"><?php echo $form->label($model, 'location') ?></td>
        <td>
            <?php echo $form->textField($model, 'location', array('placeholder' => '格式：经度|纬度')) ?>
            <div class='form-error'><?php echo $form->error($model, 'location'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right"><?php echo $form->label($model, 'contact') ?></td>
        <td>
            <?php echo $form->textField($model, 'contact') ?>
            <div class='form-error'><?php echo $form->error($model, 'contact'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right"><?php echo $form->label($model, 'introduce') ?></td>
        <td>
            <?php echo $form->textArea($model, 'introduce', array('rows' => 5, 'cols' => 50)) ?>
            <div class='form-error'><?php echo $form->error($model, 'introduce'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right"><?php echo $form->label($model, 'traffic_mode') ?></td>
        <td>
            <?php echo $form->textArea($model, 'traffic_mode', array('rows' => 5, 'cols' => 50)) ?>
            <div class='form-error'><?php echo $form->error($model, 'traffic_mode'); ?></div>
        </td>
    </tr>
    <tr>
        <td align='right'>临近景点：</td>
        <td>
            <div id='main_scene' style="background: #EBEBE4;width:800px;min-height:150px;border:1px solid #A9A9A9">
                <?php if ($isEdit && isset($model->scenes) && !empty($model->scenes)): ?>
                    <?php foreach ($model->scenes as $k => $v): ?>
                        <span id='scene_text_<?php echo $v->id ?>' style='padding:5px'><?php echo $v->scene_name ?></span>
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>&nbsp;&nbsp;
            <br/><input type='text' style='width:160px' id="search_scene_name" name='scene_name' placeholder="请输入检索内容" />&nbsp;&nbsp;
            <input type='button' class='bta' value='检索' id='searchscene' /><span class='field_desc'>只保存对应城市的景点，非对应城市的景点不保存</span>
            <div class='main_scene'>
                <p style='float:right;margin:0px 5px 5px 0px;padding:0'><span class='close'>关闭</span></p>
                <p style='clear:both' id='scene_checkbox'>
                    <!--这里是搜索后的内容-->

                </p>
            </div>
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
            <input type='button' class='bta' value='检索' id='searchbrand' /><span class='field_desc'>只保存对应城市的品牌，非对应城市的品牌不保存</span>
            <div class='main_brand'>
                <p style='float:right;margin:0px 5px 5px 0px;padding:0'><span class='close'>关闭</span></p>
                <p style='clear:both' id='brand_checkbox'>
                    <!--这里是搜索后的内容-->

                </p>
            </div>
        </td>
    </tr>
    <tr>
        <td align='right'><?php echo $form->label($model, 'shopping_index') ?></td>
        <td>
            <?php echo $form->dropDownList($model, 'shopping_index', Outlets::model()->getShoppingIndex()); ?>
        </td>
    </tr>
    <tr>
        <td align="right"><?php echo $form->label($model, 'seller_count') ?></td>
        <td>
            <?php echo $form->textField($model, 'seller_count') ?>
            <div class='form-error'><?php echo $form->error($model, 'seller_count'); ?></div>
        </td>
    </tr>
    <tr>
        <td align="right" ><?php echo $form->label($model, 'address') ?></td>
        <td>
            <?php echo $form->textField($model, 'address', array('style' => 'width:400px')) ?>
            <div class='form-error'><?php echo $form->error($model, 'address'); ?></div>
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
        <td align='right'><?php echo $form->label($model, 'is_recommend') ?></td>
        <td>
            <?php echo $form->radioButtonList($model, 'is_recommend', Outlets::model()->getIsRecommend(), array('separator' => '&nbsp;&nbsp;')); ?>
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
<div id='scene_checkboxhidden'>
    <?php if ($isEdit && isset($model->scenes) && !empty($model->scenes)): ?>
        <?php foreach ($model->scenes as $k => $v): ?>
            <input type="hidden" name="scene_id[]" value="<?php echo $v->id ?>" />
        <?php endforeach; ?>
    <?php endif; ?>
</div>
<?php $this->endWidget(); ?>
<script type="text/javascript">
    var brand_url = "<?php echo $this->createUrl('/admin/ajax/searchbrand') ?>";
    var scene_url = "<?php echo $this->createUrl('/admin/ajax/searchscene') ?>";
</script>