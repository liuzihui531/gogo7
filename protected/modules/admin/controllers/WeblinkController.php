<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of WeblinkController
 *
 * @author lzh
 */
class WeblinkController extends AdminControllerD {
    public $type_name;
    public $type_id;
    public function init() {
        parent::init();
        $this->type_id = Yii::app()->request->getParam('type_id',0);
        $this->type_name = Weblink::model()->getType($this->type_id);
    }

    public function actionIndex() {
        $this->breadcrumbs = array($this->type_name.'管理');
        $criteria = new CDbCriteria();
        if(isset($_GET['type_id']) && intval($_GET['type_id']) > 0){
            $criteria->compare('type_id', $_GET['type_id']);
        }
        if(isset($_GET['title']) && !empty($_GET['title'])){
            $criteria->addSearchCondition('title', $_GET['title']);
        }
        $criteria->order = 'id desc';
        $criteria->compare('type_id', $this->type_id);
        $count = Weblink::model()->count($criteria);
        $pager = new CPagination($count);
        $pager->pageSize = 10;
        $pager->applyLimit($criteria);
        $model = Weblink::model()->findAll($criteria);
        $this->render('index', array('model' => $model, 'pager' => $pager));
    }

    public function actionCreate() {
        $this->breadcrumbs = array('添加'.$this->type_name);
        $model = new Weblink();
        $this->render('_form', array('model' => $model));
    }

    public function actionUpdate($id = 0) {
        $model = Weblink::model()->findByPk($id);
        $this->checkEmpty($model);
        $this->breadcrumbs = array('修改'.Weblink::model()->getType($model->type_id));
        $this->render('_form', array('model' => $model));
    }

    public function actionSave() {
        $isEdit = isset($_POST['id']);
        if ($isEdit) {
            $id = Yii::app()->request->getParam('id', 0);
            $model = Weblink::model()->findByPk($id);
            $old_img = $model->image;
            $delete_image = Yii::app()->request->getParam('delete_image', 0);
            $this->checkEmpty($model);
        } else {
            $model = new Weblink();
            $model->type_id = Yii::app()->request->getParam('type_id',0);
            $model->created = time();
        }
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'id-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        if (isset($_FILES['image']['tmp_name']) && !empty($_FILES['image']['tmp_name'])) {
            $upload = new Upload();
            if (isset($old_img)) {
                $upload->unlink($old_img);
            }
            $upload->is_thumb = true;
            $upload->thumb_type = 'weblink';
            $upload->uploads('image');
            $model->image = $upload->file_url;
        }
        if (isset($delete_image) && $delete_image == 1) {
            Upload::model()->unlink($model->image);
            $model->image = "";
        }
        if (isset($_POST['Weblink'])) {
            $model->attributes = $_POST['Weblink'];
            if ($model->save()) {
                $this->success('保存成功！', $this->url('index',array('type_id'=>$model->type_id)));
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
            $model = Weblink::model()->findAll($criteria);
            if (!$model) {
                throw new Exception('操作有误！');
            }
            foreach ($model as $k => $v) {
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
