<table class='table'>
    <tr>
        <td colspan='8'>
            <span id='delall' class='bta' onclick='delall()'>删除</span>
        </td>
    </tr>
    <tr>
        <td>编号</td>
        <td><input type='checkbox' id='checkAll' myid='0'>&nbsp;全选</td>
        <td>信息类型</td>
        <td>信息标题</td>
        <td>评论内容</td>
        <td>评论人</td>
        <td>评论时间</td>
        <td>操作</td>
    </tr>
    <?php foreach($model as $k=>$v): ?>
        <tr class='fortr'>
            <td><?php echo $v->id ?></td>
            <td><input type='checkbox' name='del' myid='<?php echo $v->id ?>' /></td>
            <td><?php echo Comment::model()->getType($v->type); ?></td>
            <td><?php echo Comment::model()->getTypeName($v->type, $v) ?></td>
            <td><?php echo $v->content; ?></td>
            <td><?php echo Comment::model()->getUser($v->user_id, $v) ?></td>
            <td><?php echo date('Y-m-d H:i:s',$v->created) ?></td>
            <td>
                <!--<a href='#'>修改</a>&nbsp;&nbsp;-->
                <a onclick='return confirm("确定要删除？")' href="<?php echo $this->createUrl('delete',array('id'=>$v->id)) ?>">[删除]</a>
            </td>
        </tr>
    <?php endforeach; ?>
</table>
<form id='form1' action="<?php echo $this->createUrl('delete') ?>" method="post">
    <input type='hidden' name='id' id='myids'  />
</form>