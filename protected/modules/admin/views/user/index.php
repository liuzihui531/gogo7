
<table class='table'>
    <tr>
        <td colspan='7'>
            <form action="<?php echo $this->createUrl('index') ?>" method='get'>
                <input type='text' name='username' <?php echo Yii::app()->request->getParam('username','') ?> style='height:27px;margin:0 10px' />
                <input type='submit'  class='bt3' value='搜索' />
            </form>
        </td>
    </tr>
    <tr>
        <td>编号</td>
        <td><input type='checkbox'  id='checkAll' myid='0' />&nbsp;全选</td>
        <td>会员名称</td>
        <td>登录次数</td>
        <td>上次登录时间</td>
        <td>注册时间</td>
        <td>操作</td>
    </tr>
    <?php foreach($model as $k=>$v): ?>
        <tr class='fortr'>
            <td width='5%'><?php echo $v->id ?></td>
            <td width='8%'><input type='checkbox' name='del' myid='<?php echo $v->id ?>'/></td>
            <td><?php echo $v->username; ?></td>
            <td><?php echo $v->login_count ?></td>
            <td><?php echo intval($v->last_login_time) > 0 ? date('Y-m-d H:i:s',$v->last_login_time) : "" ?></td>
            <td><?php echo date('Y-m-d H:i:s',$v->created) ?></td>
            <td>
                <a  href="<?php echo $this->createUrl('info',array('id'=>$v->id)) ?>">[查看]</a>
            </td>
        </tr>
    <?php endforeach; ?>
    <tr>
        <td colspan='7'>
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