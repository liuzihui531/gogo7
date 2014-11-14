
<table class='table index'>
    <tr>
        <td colspan='6'>
            <form action="<?php echo $this->createUrl('index') ?>" method='get'>
                <a href="<?php echo $this->createUrl('create'); ?>" class='bta' >添加Vip优惠券</a>
                <span id='delall' class='bta' onclick='delall()'>删除</span>
                <input type='text'placeholder="商家名称" name='seller_name' value='<?php echo Yii::app()->request->getParam('seller_name','') ?>' style='height:27px;margin:0 10px' />
                <input type='text'placeholder="内容" name='content' value='<?php echo Yii::app()->request->getParam('content','') ?>' style='height:27px;margin:0 10px' />
                <?php 
                    $if_image = Yii::app()->request->getParam('if_image','');
                ?>
                <select name="if_image"  >
                    <option <?php if($if_image === ''): ?>selected="selected"<?php endif; ?> value="">是否图片</option>
                    <?php foreach(UtilD::getTrueOrFalse() as $k=>$v): ?>
                    <option <?php if($if_image === strval($k)): ?>selected="selected"<?php endif; ?> value="<?php echo $k; ?>"><?php echo $v ?></option>
                    <?php endforeach; ?>
                </select>
                <input type='submit'  class='bt3' value='搜索' />
            </form>
        </td>
    </tr>
    <tr>
        <td width='5%'>编号</td>
        <td width='5%'><input type='checkbox' id='checkAll' myid='0' />&nbsp;全选</td>
        <td width='20%'>商家名称</td>
        <td width='20%'>优惠内容</td>
        <td width='5%'>是否图片</td>
        <td width='15%'>操作</td>
    </tr>
    <form action="<?php echo $this->createUrl('sorting') ?>" method='post' >
        <?php foreach($model as $k=>$v): ?>
            <tr class='fortr'>
                <td><?php echo $v->id ?></td>
                <td><input type='checkbox' value='<?php echo $v->id ?>' myid='<?php echo $v->id ?>' name="del" /></td>
                <td><?php echo $v->seller_name ?></td>
                <td><?php echo $v->content ?></td>
                <td><?php echo empty($v->image) ? '否' : '是' ?></td>
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
