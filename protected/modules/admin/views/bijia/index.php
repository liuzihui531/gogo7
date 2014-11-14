<?php
$form = $this->beginWidget('CActiveForm', array(
    'id' => 'id-form',
    'action' => $this->createUrl('save'),
    'htmlOptions' => array(
        'enctype' => 'multipart/form-data',
    ),
        ));
?>
<table class='table'>
        <tr>
            <td align='right'>图片标题</td>
            <td>
                <input name="title" id="title" type="text" maxlength="64" value="<?php echo isset($bijia['title']) ? $bijia['title'] : "" ?>" />
            </td>
        </tr>
        <tr>
            <td align='right'>图片</td>
            <td>
               <input type="file" name="image" id="" />
                <span style="position:relative;width:100px;height:100px">
                    <span style="position:absolute;top:-30px;right:10px;color:white;font-size:25px;background:rgba(0,0,0,0.5);cursor:pointer;" onclick="$(this).next('img').attr('src', '');
                                $('input[name=delete_image]').val(1)">X</span>
                    <img src="<?php echo $bijia['image'] ?>" style="width:100px;height:100px" />
                </span>
                <input type="hidden" name="delete_image" value="0" />
            </td>
        </tr>
    
    <tr>
        <td colspan='2' align='center'>
            <input type='submit' value='设置' class='bt2' />
        </td>
    </tr>
</table>
<?php $this->endWidget(); ?>
