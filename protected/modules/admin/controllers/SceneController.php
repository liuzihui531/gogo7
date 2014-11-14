<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of SceneController
 *
 * @author lzh
 */
class SceneController extends AdminControllerD {

    public function actionIndex() {
        $this->breadcrumbs = array('景点管理');
        $criteria = new CDbCriteria();
        if (isset($_GET['scene_name']) || !empty($_GET['scene_name'])) {
            $criteria->addSearchCondition('scene_name', $_GET['scene_name']);
        }
        if (isset($_GET['if_use']) || !empty($_GET['if_use'])) {
            $criteria->addSearchCondition('if_use', $_GET['if_use']);
        }
        $criteria->order = 'id desc,sorting desc';
        $count = Scene::model()->count($criteria);
        $pager = new CPagination($count);
        $pager->pageSize = 10;
        $pager->applyLimit($criteria);
        $model = Scene::model()->findAll($criteria);
        $this->render('index', array('model' => $model, 'pages' => $pager));
    }

    public function actionCreate() {
        $this->breadcrumbs = array('添加景点');
        $model = new Scene();
        $this->render('_form', array('model' => $model));
    }

    public function actionUpdate($id = 0) {
        $this->breadcrumbs = array('修改景点');
        $model = Scene::model()->findByPk($id);
        $this->checkEmpty($model);
        $this->render('_form', array('model' => $model));
    }

    public function actionSave() {
        $isEdit = isset($_POST['id']);
        if ($isEdit) {
            $id = Yii::app()->request->getParam('id', 0);
            $model = Scene::model()->findByPk($id);
            $old_img = $model->image;
            $delete_image = Yii::app()->request->getParam('delete_image', 0);
            $this->checkEmpty($model);
        } else {
            $model = new Scene();
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
            $upload->thumb_type = 'scene';
            $upload->uploads('image');
            $model->image = $upload->file_url;
        }
        if (isset($delete_image) && $delete_image == 1) {
            Upload::model()->unlink($model->image);
            $model->image = "";
        }
        if (isset($_POST['Scene'])) {
            $model->attributes = $_POST['Scene'];
            if ($model->save()) {
                $scene = Scene::model()->findAll();
                $memKey = Scene::$memKey;
                Yii::app()->cache->delete($memKey);
                Yii::app()->cache->add($memKey, UtilD::object2array($scene));
                $this->success('保存成功！', $this->url('index'));
            }
        }
        $this->render('_form', array('model' => $model));
    }

    public function actionUpdateSort() {
        $id = Yii::app()->request->getParam('id', 0);
        $sorting = Yii::app()->request->getParam('sorting', 0);
        foreach ($id as $k => $v) {
            $data = array(
                'sorting' => $sorting[$k],
            );
            Yii::app()->db->createCommand()->update('scene', $data, 'id=' . $v);
        }
        $this->redirect('index');
    }

    public function actionDelete() {
        $id = trim(Yii::app()->request->getParam('id', '0'), ',');
        $ids = explode(',', $id);
        $transaction = Yii::app()->db->beginTransaction();
        try {
            $criteria = new CDbCriteria();
            $criteria->addInCondition('id', $ids);
            $model = Scene::model()->findAll($criteria);
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
