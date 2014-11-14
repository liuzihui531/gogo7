
<table class='table index'>
    <tr>
        <td colspan='6'>
            <form action="<?php echo $this->createUrl('index') ?>" method='get'>
                <a href="<?php echo $this->createUrl('create'); ?>" class='bta' >添加地区</a>
                <span id='delall' class='bta' onclick='delall()'>删除</span>
                <input type='text' placeholder="地区名称" name='name' value='<?php echo Yii::app()->request->getParam('name','') ?>' style='height:27px;margin:0 10px' />
                <input type='submit'  class='bt3' value='搜索' />
            </form>
        </td>
    </tr>
    <tr>
        <td width='2%'>编号</td>
        <td width='2%'><input type='checkbox' id='checkAll' myid='0' />&nbsp;全选</td>
        <td width='20%'>地区名称</td>
        <td width='5%'>排序</td>
        <td width='15%'>操作</td>
    </tr>
    <form action="<?php echo $this->createUrl('sorting') ?>" method='post' >
        <?php foreach($model as $k=>$v): ?>
            <tr class='fortr'>
                <td><?php echo $v->id ?></td>
                <td><input type='checkbox' value='<?php echo $v->id ?>' myid='<?php echo $v->id ?>' name="del" /></td>
                <td><?php echo $v->name ?></td>
                <td><?php echo $v->sorting ?></td>
                <td>
                    <a href="<?php echo $this->createUrl('update',array('id'=>$v->id)) ?>">[修改]</a>&nbsp;&nbsp;
                    <a onclick='return confirm("确定要删除？")' href="<?php echo $this->createUrl('delete',array('id'=>$v->id)) ?>">[删除]</a>
                </td>
            </tr>
            <input type='hidden' name='indexname' value='brandcate' />
        <?php endforeach; ?>
        <tr><td colspan='6' align='center'><input type="submit" value='排序' class='bt2'></td></tr>
    </form>
</table>
<form id='form1' action="<?php echo $this->createUrl('delete') ?>" method="post">
    <input type='hidden' name='id' id='myids'  />
</form>
