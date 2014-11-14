<body>
    <table class='table'>
        <tr>
            <td colspan='7'>
                <form action="<?php echo $this->createUrl('index') ?>" method='get'>
                    <a class='bta' href="<?php echo $this->createUrl('create') ?>">添加管理员</a>
                    <span id='delall' class='bta' onclick='delall()'>删除</span>
                    <input type='text' placeholder="管理员名称" name='username' value="<?php echo Yii::app()->request->getParam('username') ?>" style='height:27px;margin:0 10px'  />
                    <input type='submit'  class='bt3' value='搜索' />
                </form>
            </td>
        </tr>
        <tr>
            <td width='5%'>编号</td>
            <td width='8%'><input type='checkbox' id='checkAll' myid='0' />&nbsp;全选</td>
            <td>用户名称</td>
            <td>用户状态</td>
            <td>创建人</td>
            <td>创建时间</td>
            <td>操作</td>
        </tr>
        <?php foreach($model as $v): ?>
            <tr class='fortr'>
                <td><?php echo $v->id ?></td>
                <td><input type='checkbox' name='del' myid='<?php echo $v->id ?>' /></td>
                <td><?php echo $v->username ?></td>
                <td><?php echo Admin::model()->getStatus($v->status) ?></td>
                <td><?php echo $v->create_by ?></td>
                <td><?php echo date('Y-m-d H:i:s',$v->created) ?></td>
                <td>
                    <a  href="<?php echo $this->createUrl('update',array('id'=>$v->id)) ?>">[修改]</a>&nbsp;&nbsp;
                    <!--<a onclick='return confirm("确定要删除？")' href="<?php //echo $this->createUrl('delete',array('id'=>$v->id)) ?>">[删除]</a>-->
                </td>
            </tr>
        <?php endforeach; ?>
    </table>
    <form id='form1' action="<?php echo $this->createUrl('delete') ?>" method="post">
        <input type='hidden' name='id' id='myids'  />
    </form>