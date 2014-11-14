<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ShareController
 *
 * @author lzh
 */
class ShareController extends AdminControllerD {

    public function actionIndex() {
        $this->breadcrumbs = array('购物心得管理');
        $criteria = new CDbCriteria();
        if (isset($_GET['title']) || !empty($_GET['title'])) {
            $criteria->addSearchCondition('title', $_GET['title']);
        }
        if (isset($_GET['area_id']) || !empty($_GET['area_id'])) {
            $criteria->compare('area_id', $_GET['area_id']);
        }
        $count = Share::model()->count($criteria);
        $criteria->order = 'id desc';
        $pages = new CPagination($count);
        $pages->pageSize = 10;
        $pages->applyLimit($criteria);
        $model = Share::model()->findAll($criteria);
        $this->render('index', array('model' => $model, 'pages' => $pages));
    }

    public function actionCreate() {
        $this->breadcrumbs = array('添加购物心得');
        $model = new Share();
        $this->render('_form', array('model' => $model));
    }

    public function actionUpdate($id = 0) {
        $this->breadcrumbs = array('修改购物心得');
        $model = Share::model()->findByPk($id);
        $this->checkEmpty($model);
        $this->render('_form', array('model' => $model));
    }

    public function actionSave() {
        $isEdit = isset($_POST['id']);
        if ($isEdit) {
            $id = Yii::app()->request->getParam('id', 0);
            $model = Share::model()->findByPk($id);
            $old_img = $model->image;
            $delete_image = $_POST['delete_image'];
            $this->checkEmpty($model);
        } else {
            $model = new Share();
            $model->created = time();
        }
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'id-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        if (isset($delete_image) && $delete_image == 1) {
            Upload::model()->unlink($model->image);
            $model->image = "";
        }
        if (isset($_FILES['image']['tmp_name']) && !empty($_FILES['image']['tmp_name'])) {
            $upload = new Upload();
            if (isset($old_img)) {
                $upload->unlink($old_img);
            }
            $upload->is_thumb = true;
            $upload->thumb_type = 'share';
            $upload->uploads('image');
            $model->image = $upload->file_url;
        }
        if (isset($_POST['Share'])) {
            $model->attributes = $_POST['Share'];
            if ($model->save()) {
                $this->success('保存成功！', $this->url('index'));
            }
        }
        $this->render('_form', array('model' => $model));
    }

    public function actionDelete() {
        $id = trim(Yii::app()->request->getParam('id', '0'), ',');
        $ids = explode(',', $id);
        $transaction = Yii::app()->db->beginTransaction();
        try {
            $criteria = new CDbCriteria();
            $criteria->addInCondition('id', $ids);
            $model = Share::model()->findAll($criteria);
            if (!$model) {
                throw new Exception('操作有误！');
            }
            foreach ($model as $k => $v) {
                if(Comment::model()->find('type=:type and type_id=:type_id',array(':type'=>'share',':type_id'=>$v->id))){
                    throw new Exception('您必须把该心得下的评论全部删除才能删除心得！');
                }
                if (!$v->delete()) {
                    throw new Exception('操作有误！');
                }
                if (!Upload::model()->unlink($v->image)) {
                    throw new Exception('操作有误！');
                }
            }
            $transaction->commit();
            $this->success('删除成功！', Yii::app()->request->urlReferrer);
        } catch (Exception $e) {
            $transaction->rollback();
            $this->error($e->getMessage(), Yii::app()->request->urlReferrer);
        }
    }

}
