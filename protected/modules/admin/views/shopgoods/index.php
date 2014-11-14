<table class="table">
    <tr>
        <td colspan='8'>
            <form action="<?php echo $this->createUrl('index') ?>" method='get'>
                <a href="<?php echo $this->createUrl('create') ?>" class='bta'>添加产品</a>
                <span id='delall' class='bta' onclick='delall()'>删除</span>
                <input type='text' placeholder="产品名称" name='goods_name' value="<?php echo Yii::app()->request->getParam('goods_name','') ?>" style='height:27px;margin:0 10px'  />
                <input type='submit'  class='bt3' value='搜索' />
            </form>
        </td>
    </tr>
    <form action="<?php echo $this->createUrl('updateSort') ?>" method="post">
        <tr><td>ID</td><td><input type='checkbox' id='checkAll' myid='0'  />选择</td><td>产品名称</td><td>产品标题</td><td>价格</td><td>是否置顶</td><td>是否电子券</td><td>操作</td></tr>
        <?php foreach($model as $k=>$v): ?>
            <tr class='fortr'>
                <td width='5%'><?php echo $v->id ?></td>
                 <td width='7%'><input type='checkbox' name='del' myid='<?php echo $v->id ?>' /></td>
                <td><?php echo $v->goods_name ?></td>
                <td><?php echo $v->title ?></td>
                <td><?php echo $v->price ?></td>
                <td><?php echo UtilD::getTrueOrFalse($v->is_top) ?></td>
                <td><?php echo UtilD::getTrueOrFalse($v->is_coupon) ?></td>
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