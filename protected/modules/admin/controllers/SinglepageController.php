<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of SinglepageController
 *
 * @author lzh
 */
class SinglepageController extends AdminControllerD {

    public function actionIndex() {
        $this->breadcrumbs = array('添加网站管理');
        $criteria = new CDbCriteria();
        if (isset($_GET['title']) || !empty($_GET['title'])) {
            $criteria->addSearchCondition('title', $_GET['title']);
        }
        $criteria->order = 'sorting desc,id desc';
        $model = Singlepage::model()->findAll($criteria);
        $this->render('index', array('model' => $model));
    }

    public function actionCreate() {
        $this->breadcrumbs = array('添加网站信息');
        $model = new Singlepage();
        $this->render('_form', array('model' => $model));
    }

    public function actionUpdate($id = 0) {
        $this->breadcrumbs = array('修改网站信息');
        $model = Singlepage::model()->findByPk($id);
        $this->checkEmpty($model);
        $this->render('_form', array('model' => $model));
    }

    public function actionSave() {
        $isEdit = isset($_POST['id']);
        if ($isEdit) {
            $id = Yii::app()->request->getParam('id', 0);
            $model = Singlepage::model()->findByPk($id);
            $this->checkEmpty($model);
        } else {
            $model = new Singlepage();
            $model->created = time();
            $model->create_by = Yii::app()->user->name;
        }
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'id-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        if (isset($_POST['Singlepage'])) {
            $model->attributes = $_POST['Singlepage'];
            $model->update_by = Yii::app()->user->name;
            $model->updated = time();
            if ($model->save()) {
                $this->success('保存成功！', $this->url('index'));
            }
        }
        $this->render('_form', array('model' => $model));
    }
    
    public function actionDelete(){
        $id = trim(Yii::app()->request->getParam('id', '0'), ',');
        $ids = explode(',', $id);
        $criteira = new CDbCriteria();
        $criteira->addInCondition('id', $ids);
        Singlepage::model()->deleteAll($criteira);
        $this->success('删除成功！', Yii::app()->request->urlReferrer);
    }

}
