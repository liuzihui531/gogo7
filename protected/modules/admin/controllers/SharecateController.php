<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of SharecateController
 *
 * @author lzh
 */
class SharecateController extends AdminControllerD {

    public function actionIndex() {
        $this->breadcrumbs = array('购物心得管理');
        $criteria = new CDbCriteria();
        if (isset($_GET['name']) || !empty($_GET['name'])) {
            $criteria->addSearchCondition('name', $_GET['name']);
        }
        $criteria->order = 'sorting desc,id desc';
        $model = Sharecate::model()->findAll($criteria);
        $this->render('index', array('model' => $model));
    }

    public function actionCreate() {
        $this->breadcrumbs = array('添加分类管理');
        $model = new Sharecate();
        $this->render('_form', array('model' => $model));
    }

    public function actionUpdate($id = 0) {
        $this->breadcrumbs = array('修改分类管理');
        $model = Sharecate::model()->findByPk($id);
        $this->checkEmpty($model);
        $this->render('_form', array('model' => $model));
    }

    public function actionSave() {
        $isEdit = isset($_POST['id']);
        if ($isEdit) {
            $id = Yii::app()->request->getParam('id', 0);
            $model = Sharecate::model()->findByPk($id);
            $old_img = $model->image;
            $delete_image = Yii::app()->request->getParam('delete_image', 0);
            $this->checkEmpty($model);
        } else {
            $model = new Sharecate();
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
            $upload->thumb_type = 'city';
            $upload->uploads('image');
            $model->image = $upload->file_url;
        }
        if (isset($delete_image) && $delete_image == 1) {
            Upload::model()->unlink($model->image);
            $model->image = "";
        }
        if (isset($_POST['Sharecate'])) {
            $model->attributes = $_POST['Sharecate'];
            if ($model->save()) {
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
            Yii::app()->db->createCommand()->update('sharecate', $data, 'id=' . $v);
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
            $model = Sharecate::model()->findAll($criteria);
            if (!$model) {
                throw new Exception('操作有误！');
            }
            foreach ($model as $k => $v) {
                if(Share::model()->find('cate_id=:cate_id',array(':cate_id'=>$v->id))){
                    throw new Exception('您必须把该分类下的心得全部删除才能删除分类！');
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
