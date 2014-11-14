<table class='table'>
    <tr>
        <td colspan='7'>
            <form action="<?php echo $this->createUrl('index') ?>" method='get'>
                <a class='bta' href="<?php echo $this->createUrl('create') ?>">发布网站信息</a>
                <span id='delall' class='bta' onclick='delall()'>删除</span>
                <input type='text' name='title' value="<?php echo Yii::app()->request->getParam('title') ?>"  />
                <input type='submit'  class='bt3' value='搜索' />
            </form>
        </td>
    </tr>
    <tr>
        <td width='5%'>编号</td>
        <td width='8%'><input type='checkbox'  id='checkAll' myid='0'>&nbsp;全选</td>
        <td width='50%'>栏目名称</td>
        <td width='10%'>类别</td>
        <td>创建者</td>
        <td>上次修改者</td>
        <td>操作</td>
    </tr>
    <?php foreach($model as $v): ?>
        <tr class='fortr'>
            <td><?php echo $v->id ?></td>
            <td><input type='checkbox' name='del' myid='<?php echo $v->id ?>' /> </td>
            <td><?php echo $v->title ?></td>
            <td><?php echo Singlepage::model()->getCate($v->cate_id) ?></td>
            <td><?php echo $v->create_by ?></td>
            <td><?php echo $v->update_by ?></td>
            <td>
                <a href="<?php echo $this->createUrl('update',array('id'=>$v->id)) ?>">[修改]</a>&nbsp;&nbsp;
                <a onclick='return confirm("确定要删除？")' href="<?php echo $this->createUrl('delete',array('id'=>$v->id)) ?>">[删除]</a>
            </td>
        </tr>
    <?php endforeach; ?>
<!--    <tr>
        <td colspan='7' align='right'><div class='page'>{$page}</div></td>
    </tr>-->
</table>
<form id='form1' action="<?php echo $this->createUrl('delete') ?>" method="post">
    <input type='hidden' name='id' id='myids'  />
</form>