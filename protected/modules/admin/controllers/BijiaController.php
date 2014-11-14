<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of BijiaController
 *
 * @author lzh
 */
class BijiaController extends AdminControllerD {

    //put your code here
    public function actionIndex() {
        $this->breadcrumbs = array('比价表设置');
        $model = Bijia::model()->findAll();
        $data = UtilD::object2array($model);
        $bijia = array();
        if ($data) {
            foreach ($data as $k => $v) {
                $bijia[$v['k']] = $v['v'];
            }
        }
        $this->render('index', array('bijia' => $bijia));
    }

    public function actionSave() {
        if (isset($_POST['delete_image']) && $_POST['delete_image'] == 1) {
            $model = Bijia::model()->find('k=:k', array(':k' => 'image'));
            $old_img = $model->v;
            Upload::model()->unlink($model->v);
            $model->v = "";                
            $model->save();
        }
        if (isset($_FILES['image']['tmp_name']) && !empty($_FILES['image']['tmp_name'])) {
            $model = Bijia::model()->find('k=:k', array(':k' => 'image'));
            $old_img = $model->v;
            $upload = new Upload();
            if (isset($old_img)) {
                $upload->unlink($old_img);
            }
            $upload->is_thumb = true;
            $upload->thumb_type = 'bijia';
            $upload->uploads('image');
            $model->v = $upload->file_url;
            $model->save();
        }
        foreach ($_POST as $k => $v) {
            if ($k == 'title') {
                $model = Bijia::model()->find('k=:k', array(':k' => 'title'));
                $model->v = $v;
                $model->save();
            }
        }
        $this->success('设置成功');
    }

}
