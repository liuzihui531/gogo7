<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <link rel="stylesheet" href='/static/admin/css/public.css' type="text/css" />
    </head>
    <body>
        <h2 style="padding:8px;"><?php $this->widget('zii.widgets.CBreadcrumbs', array('links' => $this->breadcrumbs, 'homeLink' => CHtml::link('管理中心', $this->createUrl('/admin/')),)); ?></h2>
        <?php echo $content; ?>

        <?php Yii::app()->clientScript->registerCoreScript('jquery'); ?>
        <script type="text/javascript" src="/static/admin/js/gogousa.js"></script>
    </body>
</html>