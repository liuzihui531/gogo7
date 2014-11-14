<link rel="stylesheet" href="/static/admin/css/quicksearch.css" />
<script type="text/javascript" src="/static/admin/js/quicksearch.js"></script>
<table class='table'>
    <tr>
        <td colspan='4'>
            <form action="<?php echo $this->createUrl('index') ?>" method='get'>
                <a href="<?php echo $this->createUrl('create') ?>" class='bta' >添加商家</a>
                <span id='delall' class='bta' onclick='delall()'>删除</span>
                <input type='text' placeholder="商家名称" name='seller_name' value="<?php echo Yii::app()->request->getParam('seller_name', '') ?>" style='height:27px;margin:0 10px' />
                 
                <input type='submit'  class='bt3' value='搜索' />
            </form>
        </td>
        <td colspan='5'>
            <form action="<?php echo $this->createUrl('index') ?>" method='get'>
                <div id='divselect'>
                    <?php if (isset($_GET['city_id']) && !empty($_GET['city_id'])): ?>
                        <span attrid='city' id='item'>城市</span>
                    <?php elseif (isset($_GET['bc_id']) && !empty($_GET['bc_id'])): ?>
                        <span  attrid='bc'id='item' >商圈</span>
                    <?php elseif (isset($_GET['outlets_id']) && !empty($_GET['outlets_id'])): ?>
                        <span  attrid='ol' id='item' >Outlets</span>
                    <?php else: ?>
                        <span attrid='city' id='item'>城市</span>
                    <?php endif; ?>
                    <div id="divselectchilid">
                        <div  attrid='city'>城市</div>
                        <div  attrid='bc' >商圈</div>
                        <div  attrid='ol' >Outlets</div>
                    </div>
                </div>
                <div id='myselected'>
                    <?php if (isset($_GET['city_id']) && !empty($_GET['city_id'])): ?>
                        <select name='city_id'>
                            <?php foreach (City::model()->getCityKv() as $k => $v): ?>
                                <option <?php if ($k == $_GET['city_id']): ?>selected="selected"<?php endif; ?> value="<?php echo $k ?>"><?php echo $v ?></option>
                            <?php endforeach; ?>
                        </select>
                    <?php elseif (isset($_GET['bc_id']) && !empty($_GET['bc_id'])): ?>
                        <select name='bc_id'>
                            <?php foreach (BusinessCircle::model()->getBcKv() as $k => $v): ?>
                                <option <?php if ($k == $_GET['bc_id']): ?>selected="selected"<?php endif; ?> value="<?php echo $k ?>"><?php echo $v ?></option>
                            <?php endforeach; ?>
                        </select>
                    <?php elseif (isset($_GET['outlets_id']) && !empty($_GET['outlets_id'])): ?>
                        <select name='outlets_id'>
                            <?php foreach (Outlets::model()->getOutlets() as $k => $v): ?>
                                <option <?php if ($k == $_GET['outlets_id']): ?>selected="selected"<?php endif; ?> value="<?php echo $k ?>"><?php echo $v ?></option>
                            <?php endforeach; ?>
                        </select>
                    <?php else: ?>
                        <select name='city_id'>
                            <?php foreach (City::model()->getCityKv() as $k => $v): ?>
                                <option value="<?php echo $k ?>"><?php echo $v ?></option>
                            <?php endforeach; ?>
                        </select>
                    <?php endif; ?>
                </div>
                <div id='shaixuan'><input type='submit' class='bt3' value='筛选' /></div>
                <div class='clear'></div>
            </form>
        </td>
    </tr>
    <tr>
        <td width='5%'>编号</td>
        <td width='6%'><input type='checkbox' id='checkAll' myid='0' />&nbsp;全选</td>
        <td width='26%'>商家名称</td>
        <td width='20%'>所属商圈</td>
        <td width='10%'>所属Outlets</td>
        <td width='5%'>推荐</td>
        <td width='5%'>商家账号</td>
        <td width="23%">操作</td>
    </tr>
    <?php foreach ($model as $k => $v): ?>
        <tr class='fortr'>
            <td><?php echo $v->id ?></td>
            <td><input type='checkbox' name='del' myid='<?php echo $v->id ?>' /></td>
            <td><?php echo $v->seller_name ?></td>
            <td><?php echo $v->bc->bc_name ?></td>
            <td><?php echo $v->outlets->outlets_name ?></td>
            <td><?php echo Outlets::model()->getIsRecommend($v->is_recommend); ?></td>
            <td><?php echo $v->login_name ?></td>
            <td>
                <a href="" target='_blank'>[预览]</a>&nbsp;&nbsp;
                <a href="<?php echo $this->createUrl('update', array('id' => $v->id)) ?>">[修改]</a>&nbsp;&nbsp;
                <a onclick='return confirm("确定要删除？")' href="<?php echo $this->createUrl('delete', array('id' => $v->id)) ?>">[删除]</a>&nbsp;&nbsp;
                <a href="<?php echo $this->createUrl('quickcreate', array('id' => $v->id)) ?>">[添加此模板]</a>&nbsp;&nbsp;
            </td>
        </tr>
    <?php endforeach; ?>
    <tr>
        <td colspan='8' align='right'>
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
<script type="text/javascript">
    var posturl = "<?php echo $this->createUrl('/admin/ajax/getItem') ?>";
</script>
