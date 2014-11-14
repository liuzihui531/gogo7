<table class="table">
    <tr>
        <td colspan='8'>
            <form action="<?php echo $this->createUrl('brand') ?>" method='get'>
                <a href="<?php echo $this->createUrl('brandPrePage') ?>" class='bta'>返回上一页</a>
                <input type='text' placeholder="品牌名称" name='brand_name' value="<?php echo Yii::app()->request->getParam('brand_name','') ?>"   />
                <input type='hidden' name='id' value="<?php echo Yii::app()->request->getParam('id','0') ?>"   />
                <input type='submit'  class='bt3' value='搜索' />
            </form>
        </td>
    </tr>
</table>
<div style="padding:15px;">
<?php
$form = $this->beginWidget('CActiveForm', array(
    'id' => 'id-form',
    'action' => $this->createUrl('brandSave'),
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
<?php echo $form->checkBoxList($model,'brand_id', Brand::model()->getBrandKv(),array('separator'=>'&nbsp;&nbsp;')); ?>
    <input type='hidden' name='id' value="<?php echo Yii::app()->request->getParam('id','0') ?>"   />
<?php $this->endWidget(); ?>
</div>
<div id="operate_res" style="width:200px;background: red;color:white;margin:0 auto;text-align: center;padding:8px;position:absolute;left:50%;margin-left:-100px;display:none;top:50px;border-radius: 4px;">添加成功</div>
<script type="text/javascript">
$(function(){
    $('input[type="checkbox"]').bind('change',function(){
        var city_id = "<?php echo Yii::app()->request->getParam('id','0') ?>";
        var brand_id = $(this).val();
        var type = "";
        if($(this).is(':checked')){
           type = 'add';
        }else{
           type = 'delete';
        }
        var url = "<?php echo $this->createUrl('BrandSave') ?>";
        $.post(url,{brand_id:brand_id,city_id:city_id,type:type},function(data){
            $('#operate_res').html(data.message).fadeIn('slow').show();
            setTimeout("$('#operate_res').fadeOut('slow')",1000);
        },'json');
    });
});
</script>