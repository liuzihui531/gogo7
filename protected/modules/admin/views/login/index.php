<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <link rel="stylesheet" href="/static/admin/css/login.css" />
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    </head>
    <body>
        <div id="top">

        </div>
        <div class="login">	
            <?php
            $form = $this->beginWidget('CActiveForm', array(
                'id' => 'id-form',
                'enableClientValidation' => true,
                'enableAjaxValidation' => true,
                'clientOptions' => array(
                    'validateOnSubmit' => true,
                ),
            ));
            ?>
            <div class="title">
                GogoUsa | 登录后台
            </div>
            <table border="1" width="100%">
                <tr>
                    <th><?php echo $form->label($model,'username') ?></th>
                    <td>
                        <?php echo $form->textField($model,'username',array('class'=>'len250')); ?>
                        <div class='form-error'><?php echo $form->error($model,'username'); ?></div>
                    </td>
                </tr>
                <tr>
                    <th><?php echo $form->label($model,'password') ?></th>
                    <td>
                        <?php echo $form->passwordField($model,'password',array('class'=>'len250')); ?>
                        <div class='form-error'><?php echo $form->error($model,'password'); ?></div>
                    </td>
                </tr>
                <tr>
                    <th><?php echo $form->label($model,'verifyCode') ?></th>
                    <td>
                        <?php echo $form->textField($model,'verifyCode',array('class'=>'len250')); ?>
                        <?php $this->widget('CCaptcha', array('buttonLabel' => '看不清？')); ?>
                        <div class='form-error'><?php echo $form->error($model,'verifyCode'); ?></div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-left:160px;"> <input type="submit" class="submit" value="登录"/></td>
                </tr>
            </table>
            <?php $this->endWidget(); ?>
        </div>
    </body>
</html>