<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of BrandcateController
 *
 * @author lzh
 */
class IBijiaController extends AdminControllerD {

    public function actionIndex() {
        $this->breadcrumbs = array('比价产品管理');
        $criteria = new CDbCriteria();
        if (isset($_GET['name']) || !empty($_GET['name'])) {
            $criteria->addSearchCondition('name', $_GET['name']);
        }
        $criteria->order = 'sorting desc,id desc';
        $model = IBijia::model()->findAll($criteria);
        $this->render('index', array('model' => $model));
    }

    public function actionCreate() {
        $this->breadcrumbs = array('添加产品管理');
        $model = new IBijia();
        $model->status = 1;
        $this->render('_form', array('model' => $model));
    }

    public function actionUpdate($id = 0) {
        $this->breadcrumbs = array('修改产品管理');
        $model = IBijia::model()->findByPk($id);
        $this->checkEmpty($model);
        $this->render('_form', array('model' => $model));
    }

    public function actionSave() {
        $isEdit = isset($_POST['id']);
       
        if ($isEdit) {
            $id = Yii::app()->request->getParam('id', 0);
            $model = IBijia::model()->findByPk($id);
            $this->checkEmpty($model);
        } else {
            $model = new IBijia();
            $model->created = time();
        }
         if (isset($_POST['ajax']) && $_POST['ajax'] === 'id-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        if (isset($_POST['Ibijia'])) {
            $model->attributes = $_POST['Ibijia'];
            if ($model->save()) {
                $this->success('保存成功！', $this->url('index'));
            }
            print_r($model->errors);exit;
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
            $model = IBijia::model()->findAll($criteria);
            if (!$model) {
                throw new Exception('操作有误！');
            }
            foreach ($model as $k => $v) {
                if (!$v->delete()) {
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
