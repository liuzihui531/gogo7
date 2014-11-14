<?php
    $type_id = Yii::app()->request->getParam('type_id');
    $type_name = Weblink::model()->getType($type_id);
?>
<table class='table index'>
    <tr>
        <td colspan='10'>
            <form action="<?php echo $this->createUrl('index') ?>" method='get'>
                <a href="<?php echo $this->createUrl('create',array('type_id'=>$type_id)); ?>" class='bta' >添加<?php echo $type_name ?></a>
                <span id='delall' class='bta' onclick='delall()'>删除</span>
                <input type='text' placeholder="标题" name='title' value='<?php echo Yii::app()->request->getParam('title','') ?>' style='height:27px;margin:0 10px' />
                <input type="hidden" name="type_id" value="<?php echo $type_id ?>" />
                <input type='submit'  class='bt3' value='搜索' />
            </form>
        </td>
    </tr>
    <tr>
        <td width='5%'>编号</td>
        <td width='5%'><input type='checkbox' id='checkAll' myid='0' />&nbsp;全选</td>
        <td width='20%'>标题</td>
        <?php if($type_id == 1): ?>
            <td width='20%'>城市</td>
            <td width='20%'>链接</td>
        <?php elseif($type_id == 2): ?>
            <td width='20%'>城市</td>
            <td width='20%'>链接</td>
            <td width='5%'>图片</td>
        <?php elseif($type_id == 3): ?>
            <td width='5%'>图片</td>
        <?php endif; ?>
        <td width='5%'>排序</td>
        <td width='15%'>操作</td>
    </tr>
        <?php foreach($model as $k=>$v): ?>
            <tr class='fortr'>
                <td><?php echo $v->id ?></td>
                <td><input type='checkbox' value='<?php echo $v->id ?>' myid='<?php echo $v->id ?>' name="del" /></td>
                <td><?php echo $v->title ?></td>
                <?php if($type_id == 1): ?>
                <td><?php echo $v->city->city_name ?></td>
                <td><?php echo $v->url?></td>
                <?php elseif($type_id == 2): ?>
                <td><?php echo $v->city->city_name ?></td>
                <td><?php echo $v->url ?></td>
                <td><?php echo empty($v->image) ? '否' : '是'; ?></td>
                <?php elseif($type_id == 3): ?>
                <td><?php echo empty($v->image) ? '否' : '是'; ?></td>
                <?php endif; ?>
                <td><?php echo $v->sorting ?></td>
                <td>
                    <a href="<?php echo $this->createUrl('update',array('id'=>$v->id)) ?>">[修改]</a>&nbsp;&nbsp;
                    <a onclick='return confirm("确定要删除？")' href="<?php echo $this->createUrl('delete',array('id'=>$v->id)) ?>">[删除]</a>
                </td>
            </tr>
        <?php endforeach; ?>
</table>
<form id='form1' action="<?php echo $this->createUrl('delete') ?>" method="post">
    <input type='hidden' name='id' id='myids'  />
</form>
