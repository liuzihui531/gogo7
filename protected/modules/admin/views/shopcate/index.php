<table class="table">
    <tr>
        <td colspan='8'>
            <form action="<?php echo $this->createUrl('index') ?>" method='get'>
                <a href="<?php echo $this->createUrl('create') ?>" class='bta'>添加分类</a>
                <span id='delall' class='bta' onclick='delall()'>删除</span>
                <input type='text' placeholder="分类名称" name='name' value="<?php echo Yii::app()->request->getParam('name','') ?>" style='height:27px;margin:0 10px'  />
                <input type='submit'  class='bt3' value='搜索' />
            </form>
        </td>
    </tr>
    <form action="<?php echo $this->createUrl('updateSort') ?>" method="post">
        <tr><td>ID</td><td><input type='checkbox' id='checkAll' myid='0'  />选择</td><td>名称</td><td>排序</td><td>创建日期</td><td>操作</td></tr>
        <?php foreach($model as $k=>$v): ?>
            <tr class='fortr'>
                <td width='5%'><?php echo $v->id ?></td>
                 <td width='7%'><input type='checkbox' name='del' myid='<?php echo $v->id ?>' /></td>
                <td><?php echo $v->name ?></td>
                <td><input type='text' name='sorting[]' value='<?php echo $v->sorting ?>' size='3' /></td>
                <td><?php echo date('Y-m-d H:i:s',$v->created) ?></td>
                <td>
                    <a href="<?php echo $this->createUrl('update',array('id'=>$v->id)) ?>">[修改]</a>&nbsp;&nbsp;
                    <a  onclick='return confirm("确定要删除？")' href="<?php echo $this->createUrl('delete',array('id'=>$v->id)) ?>">[删除]</a>&nbsp;&nbsp;
            <input type='hidden' name='id[]' value='<?php echo $v->id ?>'  />
            </tr>
        <?php endforeach; ?>
        <tr><td colspan='8' align='center'><input type="submit" value='排序' class='bt2' /></td></tr>
    </form>
</table>

<form id='form1' action="<?php echo $this->createUrl('delete') ?>" method="post">
    <input type='hidden' name='id' id='myids'  />
</form>