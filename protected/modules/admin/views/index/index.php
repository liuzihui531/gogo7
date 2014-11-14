<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script type="text/javascript" src="/static/public/js/jquery.min.js"></script>
        <?php //Yii::app()->clientScript->registerCoreScript('jquery');   ?>
<script type="text/javascript" src="/static/admin/js/index.js"></script>
<link rel="stylesheet" href="/static/admin/css/public.css" />
<link rel="stylesheet" href="/static/admin/css/index.css" />
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<base target="iframe"/>
<style type='text/css'>
	#left dl dd{display:none}
	#left dl:first-child dd{display:block;}
</style>
<head>
</head>
<body>
	<div id="top">
		<div class="exit">
                    <a href="<?php echo $this->createUrl('/admin/login/logout') ?>" target="_self">退出</a>
			<a href="http://www.gogousa.cn" target="_blank">网站主页</a>
                        <a href="<?php echo $this->createUrl('/admin') ?>" target="_self">后台主页</a>
		</div>
	</div>
	<div id="left">
		<dl>
			<dt>优惠券管理</dt>
                        <dd><a href="<?php echo $this->createUrl('/admin/coupon') ?>">优惠券信息管理</a></dd>
		</dl>
		<dl>
			<dt>商家管理</dt>
                        <dd><a href="<?php echo $this->createUrl('/admin/seller') ?>">管理商家信息</a></dd>
                        <dd><a href="<?php echo $this->createUrl('/admin/sellercate') ?>">管理商家分类</a></dd>
		</dl>
		<dl>
			<dt>商圈管理</dt>
                        <dd><a href="<?php echo $this->createUrl('/admin/bc'); ?>">管理商圈</a></dd>
		</dl>
		<dl>
			<dt>Outlets管理</dt>
                        <dd><a href="<?php echo $this->createUrl('/admin/outlets') ?>">管理Outlets</a></dd>
		</dl>
		<dl>
			<dt>VIP优惠券管理</dt>
                        <dd><a href="<?php echo $this->createUrl('/admin/vipcoupon/index'); ?>">管理VIP优惠券</a></dd>
		</dl>
		<dl>
			<dt>品牌管理</dt>
                        <dd><a href="<?php echo $this->createUrl('/admin/brand'); ?>">管理品牌信息</a></dd>
                        <dd><a href="<?php echo $this->createUrl('/admin/brandcate') ?>">管理品牌分类</a></dd>
		</dl>
		<dl>
			<dt>景点管理</dt>
                        <dd><a href="<?php echo $this->createUrl('/admin/scene') ?>">管理景点</a></dd>
		</dl>
		<dl>
			<dt>城市信息管理</dt>
                        <dd><a href="<?php echo $this->createUrl('/admin/area') ?>">管理地区分类</a></dd>
                        <dd><a href="<?php echo $this->createUrl('/admin/city'); ?>">管理城市信息</a></dd>
		</dl>
		<dl>
			<dt>购物心得管理</dt>
                        <dd><a href="<?php echo $this->createUrl('/admin/sharecate') ?>">管理心得分类</a></dd>
                        <dd><a href="<?php echo $this->createUrl('/admin/share') ?>">管理购物心得</a></dd>
                        <dd><a href="<?php echo $this->createUrl('/admin/comment') ?>">管理评论</a></dd>
		</dl>
                <dl>
			<dt>商店管理</dt>
                        <dd><a href="<?php echo $this->createUrl('/admin/shopcate') ?>">分类管理</a></dd>
                        <dd><a href="<?php echo $this->createUrl('/admin/shopseller') ?>">商家管理</a></dd>
                        <dd><a href="<?php echo $this->createUrl('/admin/shopgoods'); ?>">产品管理</a></dd>
                        <dd><a href="<?php echo $this->createUrl('/admin/shoporder'); ?>">订单管理</a></dd>
		</dl>
		<dl>
			<dt>用户信息管理</dt>
                        <dd><a href="<?php echo $this->createUrl('/admin/user') ?>">注册用户管理</a></dd>
                        <dd><a href="<?php echo $this->createUrl('/admin/admin') ?>">管理管理员</a></dd>
                        <dd><a href="<?php echo $this->createUrl('/admin/admin/log') ?>">管理员登录日志</a></dd>
                        <dd><a href="<?php echo $this->createUrl('/admin/favorite') ?>">用户收藏管理</a></dd>
                        <dd><a href="<?php echo $this->createUrl('/admin/signed') ?>">用户签到管理</a></dd>
		</dl>
		<dl>
			<dt>网站信息管理</dt>
			<!--<dd><a href="{:U(GROUP_NAME.'/Singlepage/singlepageUI',array('typehandle'=>add))}">添加网站信息</a></dd>-->
                        <dd><a href="<?php echo $this->createUrl('/admin/singlepage') ?>">管理网站信息</a></dd>
                        <dd><a href="<?php echo $this->createUrl('/admin/setting') ?>">网站系统信息</a></dd>
		</dl>
		<dl>
			<dt>比价管理</dt>
                        <dd><a href="<?php echo $this->createUrl('/admin/bijiacate') ?>">管理比价分类</a></dd>
                        <dd><a href="<?php echo $this->createUrl('/admin/ibijia') ?>">管理比价产品</a></dd>
		</dl>
		<dl>
			<dt>其他管理</dt>
                        <dd><a href="<?php echo $this->createUrl('/admin/weblink',array('type_id'=>1)) ?>">管理商家链接</a></dd>
			<dd><a href="<?php echo $this->createUrl('/admin/weblink',array('type_id'=>2)) ?>">管理首页banner</a></dd>
			<dd><a href="<?php echo $this->createUrl('/admin/weblink',array('type_id'=>3)) ?>">管理首页通栏banner</a></dd>
			<dd><a href="<?php echo $this->createUrl('/admin/appimage') ?>">APP图片管理</a></dd>
			<dd><a href="<?php echo $this->createUrl('/admin/bijia') ?>">设置比价表</a></dd>
		</dl>
	</div>
	<div id="right">
            <iframe name="iframe" src="<?php echo $this->createUrl('hy') ?>" ></iframe>
	</div>
	<div class='clear'></div>
</body>
</html>