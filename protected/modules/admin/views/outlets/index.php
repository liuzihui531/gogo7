<table class='table'>
    <tr>
        <td colspan='6'>
            <form action="<?php echo $this->createUrl('index') ?>" method='get'>
                <a class='bta' href="<?php echo $this->createUrl('create') ?>" >添加outlets</a>
                <span id='delall' class='bta' onclick='delall()'>删除</span>
                <input type='text' placeholder="outlets名称" name='outlets_name' value="<?php echo Yii::app()->request->getParam('outlets_name') ?>" style='height:27px;margin:0 10px' />
                 <?php 
                    $city_id = Yii::app()->request->getParam('city_id',''); 
                    $if_image = Yii::app()->request->getParam('if_image','');
                ?>
                <select name="city_id"  >
                    <option <?php if($city_id === ''): ?>selected="selected"<?php endif; ?> value="">请选择城市</option>
                    <?php foreach(City::model()->getCityKv() as $k=>$v): ?>
                    <option <?php if($city_id === strval($k)): ?>selected="selected"<?php endif; ?> value="<?php echo $k; ?>"><?php echo $v ?></option>
                    <?php endforeach; ?>
                </select>
                <select name="if_image"  >
                    <option <?php if($if_image === ''): ?>selected="selected"<?php endif; ?> value="">是否图片</option>
                    <?php foreach(UtilD::getTrueOrFalse() as $k=>$v): ?>
                    <option <?php if($if_image === strval($k)): ?>selected="selected"<?php endif; ?> value="<?php echo $k; ?>"><?php echo $v ?></option>
                    <?php endforeach; ?>
                </select>
                <input type='submit'  class='bt3' value='搜索' />
            </form>
        </td>
    </tr>
    <tr>
        <td width='5%'>编号</td>
        <td width='8%'><input type='checkbox'  id='checkAll' myid='0'>&nbsp;全选</td>
        <td width='40%'>Outlets名称</td>
        <td width='20%'>所在城市</td>
        <td width='8%'>图片</td>
        <td width='17%'>操作</td>
    </tr>
    <?php foreach ($model as $k => $v): ?>
        <tr class='fortr'>
            <td><?php echo $v->id ?></td>
            <td><input type='checkbox' name='del' myid='<?php echo $v->id ?>' /> </td>
            <td><?php echo $v->outlets_name ?></td>
            <td><?php echo $v->city->city_name; ?></td>
            <td><?php echo empty($v->image) ? '否' : '是'; ?></td>
            <td>
                <a href="__ROOT__/index.php/Outlets/show/Outlets_ID/{$v.Outlets_ID}/Item_ID/{$v.Area_ID}" target='_blank'>[预览]</a>&nbsp;&nbsp;
                <a href="<?php echo $this->createUrl('update', array('id' => $v->id)) ?>">[修改]</a>&nbsp;&nbsp;
                <a onclick='return confirm("确定要删除？")' href="<?php echo $this->createUrl('delete', array('id' => $v->id)) ?>">[删除]</a>
            </td>
        </tr>
    <?php endforeach; ?>
    <tr>
        <td colspan='6' align='right'>
            <div class='page'>
                <?php
                $this->widget('CLinkPager', array(
                    'header' => '共' . $pages->getItemCount() . '条记录',
                    'firstPageLabel' => '首页',
                    'lastPageLabel' => '末页',
                    'prevPageLabel' => '上一页',
                    'nextPageLabel' => '下一页',
                    'pages' => $pages,
                    'maxButtonCount' => 5,
                    'cssFile' => '',
                    'internalPageCssClass' => '',
                    'selectedPageCssClass' => 'current'
                        )
                );
                ?>
            </div>
        </td>
    </tr>
</table>
<form id='form1' action="<?php echo $this->createUrl('delete') ?>" method="post">
    <input type='hidden' name='id' id='myids'  />
</form>