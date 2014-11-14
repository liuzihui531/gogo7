<table class='table'>
    <tr>
        <td colspan='4'>
            <form action="<?php echo $this->createUrl('log') ?>" method='get'>
                <input type='text' placeholder="管理员名称" name='admin_name' value="<?php echo Yii::app()->request->getParam('admin_name') ?>" style='height:27px;margin:0 10px'  />
                <input type='text' placeholder="IP" name='ip' value="<?php echo Yii::app()->request->getParam('ip') ?>" style='height:27px;margin:0 10px'  />
                <input type='submit'  class='bt3' value='搜索' />
            </form>
        </td>
    </tr>
    <tr>
        <td width='5%'>编号</td>
        <td>登录用户</td>
        <td>登录时间</td>
        <td>IP地址</td>
    </tr>
    <?php foreach ($model as $k => $v): ?>
        <tr class='fortr'>
            <td><?php echo $v->id ?></td>
            <td><?php echo $v->admin_name ?></td>
            <td><?php echo date('Y-m-d H:i:s', $v->login_time) ?></td>
            <td><?php echo $v->ip ?></td>
        </tr>
    <?php endforeach; ?>
    <tr>
        <td colspan='7' align='right'>
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