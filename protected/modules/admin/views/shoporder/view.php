<table class="table">
    <tr><td colspan='2'><a href='javascript:history.back()'>返回</a></td></tr>
    <tr>
        <td align="right" style="width:100px">订单号</td><td><?php echo $model->order_sn ?></td>
    </tr>
    <tr>
        <td align="right" style="width:100px">用户</td><td><?php echo $model->user->username ?></td>
    </tr>
    <tr>
        <td align="right" style="width:100px">商品名称</td><td><a href="<?php echo $this->createUrl('/shop/detail', array('id' => $model->goods_id)) ?>" target="_blank"><?php echo $model->goods_name ?></a></td>
    </tr>
    <tr>
        <td align="right" style="width:100px">商品标题</td><td><?php echo $v->goods_title ?></td>
    </tr>
    <tr>
        <td align="right" style="width:100px">是否电子券</td><td><?php UtilD::getTrueOrFalse($v->is_coupon) ?></td>
    </tr>
    <?php if ($info['is_coupon']): ?>
        <tr>
            <td align="right" style="width:100px">电子码</td><td><?php echo $v->coupon_sn ?></td>
        </tr>
    <?php endif; ?>
    <tr>
        <td align="right" style="width:100px">收货人姓名</td><td><?php echo $v->addr_name ?></td>
    </tr>
    <tr>
        <td align="right" style="width:100px">地址</td><td><?php echo $v->address ?></td>
    </tr>
    <tr>
        <td align="right" style="width:100px">收货人电话</td><td><?php echo $v->addr_tel ?></td>
    </tr>
    <tr>
        <td align="right" style="width:100px">订单状态</td>
        <td> 
            <form action="<?php echo $this->createUrl('change_state') ?>" method="post">
                <?php echo ShopOrder::model()->get_order_state($v->status); ?>
                &nbsp;&nbsp;
                改变订单状态？
                <?php
                if ($v->is_coupon) {
                    $order_state_arr = ShopOrder::model()->get_coupon_order_state();
                } else {
                    $order_state_arr = ShopOrder::model()->get_not_coupon_order_state();
                }
                ?>

                <select name="status">
                        <?php foreach ($order_state_arr as $key => $val): ?>
                        <option value="<?php echo $key ?>" <?php if ($k == $model->status): ?>selected="selected"<?php endif; ?>>
                        <?php echo $val ?>
                        </option>
<?php endforeach; ?>
                </select>
                <input type="hidden" name="order_id" value="<?php echo $v->id ?>" />
                <input type="submit" value="修改" />
            </form>
        </td>
    </tr>
    <tr>
        <td align="right" style="width:100px">商品单价</td><td><?php echo $v->goods_price ?></td>
    </tr>
    <tr>
        <td align="right" style="width:100px">商品数量</td><td><?php echo $v->goods_count ?></td>
    </tr>
    <tr>
        <td align="right" style="width:100px">商品总价</td><td><?php echo $v->total_price ?></td>
    </tr>
<?php if (intval($v->status) > 0 && $v->buy_time): ?>
        <tr>
            <td align="right" style="width:100px">购买时间</td><td><?php echo date('m-d-Y', $v->buy_time) ?></td>
        </tr>
<?php endif; ?>
<?php if (intval($v->is_coupon) > 0 && $v->expire_time): ?>
        <tr>
            <td align="right" style="width:100px">过期时间</td><td><?php echo date('m-d-Y', $v->expire_time) ?></td>
        </tr>
<?php endif; ?>
    <tr>
        <td align="right" style="width:100px">所属商家</td><td><?php echo $v->shop_seller->seller_name ?></td>
    </tr>
</table>