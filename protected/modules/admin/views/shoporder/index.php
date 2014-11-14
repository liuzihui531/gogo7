<table class='table'>
    <tr>
        <th colspan='9'>订单管理</th>
    </tr>
    <tr>
<!--			<td colspan='9'>
                
                    <form action="{:U(GROUP_NAME.'/ShopOrder/index')}" method='get'>
                        <a id='delall' class='bta' href="{:U(GROUP_NAME.'/ShopOrder/create')}" >添加订单</a>
                            <span id='delall' class='bta' onclick='delall()'>删除</span>
                            <input type='text' name='name' <?php if (isset($_GET['name'])): ?>value='<?php echo $_GET['name'] ?>'<?php endif; ?> style='height:27px;margin:0 10px' />
                            <input type='submit'  class='bt3' value='搜索' />
                    </form>
            </td>-->
    </tr>
    <tr>
        <td width='5%'>编号</td>
        <td width='20%'>订单号</td>
        <td width='20%'>商品名称</td>
        <td width='8%'>是否电子券</td>
        <td width='8%'>状态</td>
        <td width='12%'>操作</td>
    </tr>
    <?php foreach ($model as $k => $v): ?>
        <tr class='fortr'>
            <td><?php echo $v->id ?></td>
            <td><?php echo $v->order_sn ?></td>
            <td><?php echo $v->goods_name ?></td>
            <td><?php echo UtilD::getTrueOrFalse($v->is_coupon) ?></td>
            <td>
                <?php echo ShopOrder::model()->get_order_state($v->status); ?>

            </td>
            <td>
                <a href="<?php echo $this->createUrl('view', array('id' => $v->id)) ?>" >详情</a>
            </td>
        </tr>
    <?php endforeach; ?>
    <tr>
        <td colspan='9' align='right'><div class='page'>
                <?php
                $this->widget('CLinkPager', array(
                    'header' => '共' . $pager->getItemCount() . '条记录',
                    'firstPageLabel' => '首页',
                    'lastPageLabel' => '末页',
                    'prevPageLabel' => '上一页',
                    'nextPageLabel' => '下一页',
                    'pages' => $pager,
                    'maxButtonCount' => 5,
                    'cssFile' => '',
                    'internalPageCssClass' => '',
                    'selectedPageCssClass' => 'current'
                        )
                );
                ?>
            </div></td>
    </tr>
</table>