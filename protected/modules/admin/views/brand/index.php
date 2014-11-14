<table class="table">
    <tr>
        <td colspan='9'>
            <form action="<?php echo $this->createUrl('index') ?>" method='get'>
                <a href="<?php echo $this->createUrl('create') ?>" class='bta'>添加品牌</a>
                <!--<span id='delall' class='bta' onclick='delall()'>删除</span>-->
                <input type='text' placeholder="品牌名称" name='brand_name' value="<?php echo Yii::app()->request->getParam('brand_name', '') ?>" style='height:27px;margin:0 10px'  />
                <?php 
                    $if_use = Yii::app()->request->getParam('if_use',''); 
                    $if_image = Yii::app()->request->getParam('if_image','');
                ?>
                <select name="if_use"  >
                    <option <?php if($if_use === ''): ?>selected="selected"<?php endif; ?> value="">是否启用</option>
                    <?php foreach(UtilD::getIfUse() as $k=>$v): ?>
                    <option <?php if($if_use === strval($k)): ?>selected="selected"<?php endif; ?> value="<?php echo $k; ?>"><?php echo $v ?></option>
                    <?php endforeach; ?>
                </select>
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
    <tr><td>ID</td><td>品牌名称</td><td>品牌英文名称</td><td>是否推荐</td><td>是否使用</td><td>是否图片</td><td>创建日期</td><td>操作</td></tr>
    <?php foreach ($model as $k => $v): ?>
        <tr class='fortr'>
            <td width='5%'><?php echo $v->id ?></td>
            <td><?php echo $v->brand_name ?></td>
            <td><?php echo $v->brand_en_name ?></td>
            <td><?php echo Brand::model()->getIsRecommend($v->is_recommend) ?></td>
            <td><?php echo UtilD::getIfUse($v->if_use) ?></td>
            <td><?php echo empty($v->image) ? '否' : '是' ?></td>
            <td><?php echo date('Y-m-d H:i:s', $v->created) ?></td>
            <td><a href="<?php echo $this->createUrl('update', array('id' => $v->id)) ?>">[修改]</a>&nbsp;&nbsp;
                <input type='hidden' name='id[]' value='<?php echo $v->id ?>'  />
        </tr>
    <?php endforeach; ?>
    <tr>
        <td colspan='9' align='right'>
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