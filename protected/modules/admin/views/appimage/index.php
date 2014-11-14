<table class='table'>
    <tr style='padding:5px;height:50px'>
        <td colspan='7'>
            <form action="<?php echo $this->createUrl('index') ?>" method='get'>
                <a href="<?php echo $this->createUrl('create') ?>" class='bta' >添加APP图片</a>
                <span id='delall' class='bta' onclick='delall()'>删除</span>
                <?php
                $if_image = Yii::app()->request->getParam('if_image', '');
                ?>
                <select name="if_image"  >
                    <option <?php if ($if_image === ''): ?>selected="selected"<?php endif; ?> value="">是否图片</option>
                    <?php foreach (UtilD::getTrueOrFalse() as $k => $v): ?>
                        <option <?php if ($if_image === strval($k)): ?>selected="selected"<?php endif; ?> value="<?php echo $k; ?>"><?php echo $v ?></option>
                    <?php endforeach; ?>
                </select>
                <input type='submit'  class='bt3' value='搜索' />
            </form>
        </td>
    </tr>
    <tr>
        <td width='5%'>编号</td>
        <td width='8%'><input type='checkbox'  id='checkAll' myid='0' />&nbsp;全选</td>
        <td>所属城市</td>
        <td>商家名称</td>
        <td>图片</td>
        <td>排序</td>
        <td>操作</td>
    </tr>
    <?php foreach ($model as $k => $v): ?>
        <tr class='fortr'>
            <td><?php echo $v->id; ?></td>
            <td><input type='checkbox' name='del' myid='<?php echo $v->id; ?>' /></td>
            <td><?php echo $v->city->city_name; ?></td>
            <td><?php echo $v->seller->seller_name ?></td>
            <td><?php echo empty($v->image) ? '否' : '是'; ?></td>
            <td><?php echo $v->sorting ?></td>
            <td>
                <a href="<?php echo $this->createUrl('update', array('id' => $v->id)) ?>">[修改]</a>&nbsp;&nbsp;&nbsp;
                <a href='<?php echo $this->createUrl('delete', array('id' => $v->id)) ?>'>[删除]</a>
            </td>
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
<form id='form1' action="<?php echo $this->createUrl('delete') ?>" method="post">
    <input type='hidden' name='id' id='myids'  />
</form>