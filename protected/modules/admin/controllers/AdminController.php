<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of AdminController
 *
 * @author lzh
 */
class AdminController extends AdminControllerD {

    public function actionIndex() {
        $this->breadcrumbs = array('添加管理员');
        $criteria = new CDbCriteria();
        if (isset($_GET['username']) || !empty($_GET['username'])) {
            $criteria->addSearchCondition('username', $_GET['username']);
        }
        $criteria->order = 'id desc';
        $model = Admin::model()->findAll($criteria);
        $this->render('index', array('model' => $model));
    }

    public function actionCreate() {
        $this->breadcrumbs = array('添加网站信息');
        $model = new Admin('create');
        $this->render('_form', array('model' => $model));
    }

    public function actionUpdate($id = 0) {
        if (array_search(Yii::app()->user->name, Yii::app()->params['superAdmin']) === false) {
            $this->error('您没有权限');
        }
        $this->breadcrumbs = array('修改网站信息');
        $model = Admin::model()->findByPk($id);
        $this->checkEmpty($model);
        $model->password = '';
        $this->render('_form', array('model' => $model));
    }

    public function actionSave() {
        $isEdit = isset($_POST['id']);
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'id-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        if ($isEdit) {
            $id = Yii::app()->request->getParam('id', 0);
            $model = Admin::model()->findByPk($id);
            $this->checkEmpty($model);
        } else {
            $model = new Admin();
            $model->created = time();
            $model->create_by = Yii::app()->user->name;
        }
        if (isset($_POST['Admin'])) {
            $post = Yii::app()->request->getParam('Admin');
            if (!empty($post['password'])) {
                $model->password = $model->password2 = UtilD::password($post['password']);
            }
            if (isset($post['username']) && !empty($post['username'])) {
                $model->username = $post['username'];
            }
            if (isset($post['status']) && !empty($post['status'])) {
                $model->status = $post['status'];
            }
            if ($model->save()) {
                $this->success('保存成功！', $this->url('index'));
            }
        }
        $this->render('_form', array('model' => $model));
    }

//    public function actionDelete() {
//        if (array_search(Yii::app()->user->name, Yii::app()->params['superAdmin']) === false) {
//            $this->error('您没有权限');
//        }
//        $id = trim(Yii::app()->request->getParam('id', '0'), ',');
//        $ids = explode(',', $id);
//        $criteira = new CDbCriteria();
//        $criteira->addInCondition('id', $ids);
//        $model = Admin::model()->findAll($criteira);
//        foreach($model as $v){
//            if(array_search($v->username, Yii::app()->params['superAdmin']) !== false){
//                $this->error('不能删除超级管理员');
//            }
//        }
//        Admin::model()->deleteAll($criteira);
//        $this->success('删除成功！', Yii::app()->request->urlReferrer);
//    }
    
    public function actionLog(){
        $this->breadcrumbs = array('管理员日志管理');
        $criteria = new CDbCriteria();
        if (isset($_GET['admin_name']) || !empty($_GET['admin_name'])) {
            $criteria->addSearchCondition('admin_name', $_GET['admin_name']);
        }
        if (isset($_GET['ip']) || !empty($_GET['ip'])) {
            $criteria->addSearchCondition('ip', $_GET['ip']);
        }
        $criteria->order = 'id desc';
        $count = AdminLog::model()->count($criteria);
        $pages = new CPagination($count);
        $pages->pageSize = 10;
        $pages->applyLimit($criteria);
        $model = AdminLog::model()->findAll($criteria);
        $this->render('log', array('model' => $model, 'pages' => $pages));
    }

}
