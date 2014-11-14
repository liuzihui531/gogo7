<?php
$isEdit = !empty($model->id);
$form = $this->beginWidget('CActiveForm', array(
    'id' => 'id-form',
    'action' => $this->createUrl('save'),
    'enableAjaxValidation' => true,
    'enableClientValidation' => true,
    'clientOptions' => array(
        'validateOnSubmit' => true,
    ),
    'htmlOptions' => array(
        'enctype' => 'multipart/form-data',
    ),
        ));
?>
<?php if ($isEdit): ?>
    <input type="hidden" name="id" value="<?php echo $model->id; ?>" />
<?php endif; ?>
	<table class='table'>
		<tr>
			<td align="right" width="20%">登录名称：</td>
			<td>
                            <?php echo $form->textField($model, 'username') ?>
                            <div class='form-error'><?php echo $form->error($model, 'username'); ?></div>
                        </td>
		</tr>
		<tr>
			<td align="right" width="20%">登录密码：</td>
                        <td>
                            <?php echo $form->passwordField($model, 'password') ?>
                            <div class='form-error'><?php echo $form->error($model, 'password'); ?></div>
                        </td>
		</tr>
		<tr>
			<td align="right" width="20%">再输一次密码：</td>
			<td>
                            <?php echo $form->passwordField($model, 'password2') ?>
                            <div class='form-error'><?php echo $form->error($model, 'password2'); ?></div>
                        </td>
		</tr>
		<tr>
			<td align='right' width="20%">用户状态：</td>
			<td>
                            <?php echo $form->radioButtonList($model,'status',  Admin::model()->getStatus(),array('separator'=>'&nbsp;&nbsp;&nbsp;&nbsp;')); ?>
                            <div class='form-error'><?php echo $form->error($model, 'status'); ?></div>
			</td>
		</tr>
		<tr>
			<td colspan='2' align='center'>
				<input type='submit' class='bt2' value='保存' />
			</td>
		</tr>
	</table>
<?php $this->endWidget(); ?>