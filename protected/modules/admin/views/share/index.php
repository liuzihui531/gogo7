<table class='table'>
    <tr>
        <td colspan='10'>
            <form action="<?php echo $this->createUrl('index') ?>" method='get'>
                <a class='bta' href="<?php echo $this->createUrl('create') ?>">发布购物心得</a>
                <span id='delall' class='bta' onclick='delall()'>删除</span>
                <input type='text' placeholder="信息标题" name='title' value="<?php echo Yii::app()->request->getParam('title') ?>" style='height:27px;margin:0 10px'  />
                <?php 
                    $area_id = Yii::app()->request->getParam('area_id',''); 
                ?>
                <select name="area_id"  >
                    <option <?php if($area_id === ''): ?>selected="selected"<?php endif; ?> value="">请选择地区</option>
                    <?php foreach(Share::model()->getAreaKv() as $k=>$v): ?>
                    <option <?php if($area_id === strval($k)): ?>selected="selected"<?php endif; ?> value="<?php echo $k; ?>"><?php echo $v ?></option>
                    <?php endforeach; ?>
                </select>
                <input type='submit'  class='bt3' value='搜索' />
            </form>
        </td>
    </tr>
    <tr>
        <td width='5%'>编号</td>
        <td width='8%'><input type='checkbox'  id='checkAll' myid='0'>&nbsp;全选</td>
        <td width='10%'>信息标题</td>
        <td width='10%'>信息类别</td>
        <td width='10%'>所属地区</td>
        <td width='20%'>信息标签</td>
        <td width='8%'>是否置顶</td>
        <td width='8%'>是否验证</td>
        <td width='8%'>作者</td>
        <td>操作</td>
    </tr>
    <?php foreach ($model as $v): ?>
        <tr class='fortr'>
            <td><?php echo $v->id ?></td>
            <td><input type='checkbox' name='del' myid='<?php echo $v->id ?>' /> </td>
            <td><?php echo $v->title ?></td>
            <td><?php echo $v->cate->name ?></td>
            <td><?php echo Share::model()->getAreaKv($v->area_id); ?></td>
            <td><?php echo $v->tag ?></td>
            <td><?php echo UtilD::getTrueOrFalse($v->is_top) ?></td>
            <td><?php echo UtilD::getTrueOrFalse($v->status) ?></td>
            <td><?php echo $v->author_id == 0 ? '管理员' : $v->user->username; ?></td>
            <td>
                <a href="<?php echo $this->createUrl('update', array('id' => $v->id)) ?>">[修改]</a>&nbsp;&nbsp;
                <a onclick='return confirm("确定要删除？")' href="<?php echo $this->createUrl('delete', array('id' => $v->id)) ?>">[删除]</a>
            </td>
        </tr>
    <?php endforeach; ?>
    <tr>
        <td colspan='10' align='right'>
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